/*File:~/Custom/Content/Widgets/impulse.meta/Scripts/wd.impulse.meta.js*/
try{(function($, window, document, undefined) {
	var userSent = false;

	function chaordicSafeInitialize() {
		if (!window.chaordic || !window.chaordic.initialize) {
			return;
		}

		window.chaordic.initialize();
	}

	var metaBinder = {
		checkout: function() {
			if (!window.EasyCheckout) {
				return;
			}

			// envia customer
			if (!EasyCheckout.ModelData.Customer.IsAuthenticated) {
				ko.postbox.subscribe('checkout/data/update', function() {
					if (!EasyCheckout.ModelData.Customer.IsAuthenticated || userSent) {
						return;
					}

					var checkoutData = EasyCheckout.ModelData;

					var birthDate = '';

					if (checkoutData.CustomerData.BirthDateExtended) {
						birthDate = checkoutData.CustomerData.BirthDateExtended.split('-').reverse().join('-');
					}

					chaordic_meta.user = {
						id: checkoutData.Customer.CustomerID + '',
						name: checkoutData.Customer.Name + ' ' + checkoutData.Customer.SurName,
						email: checkoutData.Customer.Email,
						language: 'pt-BR',
						allow_mail_marketing: true,
						birthday: birthDate,
						gender: checkoutData.CustomerData.Gender,
						identifications: {
							cpf: checkoutData.CustomerData.Cpf
						}
					};

					if (checkoutData.Customer.CustomerType === 'Company') {
						chaordic_meta.user.identifications = {
							cnpj: checkoutData.CustomerData.Cnpj
						};
					}

					userSent = true;
					chaordicSafeInitialize();
				});
			}

			// envia pedido
			ko.postbox.subscribe('checkout/payment/submit', function(response) {
				if (response.hasOwnProperty('Response')) {
					response = response.Response;
					if (response.IsValid) {
						var orderNumber = getContextualProperty(response.Custom);

						if (!orderNumber) {
							return;
						}

						if(chaordic_meta) {
							chaordic_meta.id = orderNumber;
							chaordic_meta.page = 'transaction';
							chaordic_meta.items = _.map(EasyCheckout.ModelData.Basket.Items, mapBasketItems)
							chaordicSafeInitialize();
						}
					}
				}
			});
		},
		cart: function() {
			function updateBasket() {
				chaordic.push(['updateCart', {
					id: browsingContext.Common.Basket.BasketID + '',
					items: _.map(browsingContext.Common.Basket.Items, mapBasketItems)
				}]);
			}

			// checkout_basket
			$.subscribe('/wd/browsing/context/ready', updateBasket);
			// mobile e checkout_basket_v2
			$.subscribe('/wd/browsing/context/common/basket/updated', updateBasket);
		},
		product: function() {
			if (!browsingContext.Page.Product.ProductID) {
				console.warn('browsingContext ProductID não definido');
				return;
			}

			var pid = browsingContext.Page.Product.ProductID;

			function updateProductSku(sku) {
				if (!sku) {
					return;
				}

				if (chaordic_meta) {
					if (browsingContext.Common.Config.Platform.LinxImpulseByGroup.ProductIdentifier === 'SKU') {
						if (sku.sku) {
							chaordic_meta.sku = sku.sku;
						}
					} else {
						if (sku.productID) {
							chaordic_meta.sku = (sku.productID + '');
						}
					}
				}

				chaordicSafeInitialize();
			}

			$.subscribe('/wd/product/variation/changed/' + pid, function(e, args) {
				var $wdVariation = args.widget || {};
				var variationContent = args.variationContent || {};
				var sku = variationContent.sku;

				if (sku) {
					updateProductSku(sku);
					return;
				}

				var $firstSku = null;
				if ($wdVariation.$productVariations) {
					var hierarchy = variationContent.hierarchy;
					var $firstSku = $wdVariation.$productVariations.find('[id*="' + hierarchy + '"]');
				}

				if ($firstSku && window.variants && window.variants.length) {
					var sku = $firstSku.find('.sku').val();
					var skuObj = _(window.variants).find(function(v) {
						return v.sku === sku;
					});

					updateProductSku(skuObj ? skuObj : null);
				}
			});
		}
	};

	function mapBasketItems(i) {
		return {
			pid: getPID(i),
			sku: getSkuID(i),
			price: i.RetailPrice,
			quantity: i.Quantity
		}
	}

	function getPID(i) {
		if (browsingContext.Common.Config.Platform.LinxImpulseByGroup.ProductIdentifier === 'SKU') {
			return i.Product.SKU;
		}

		return i.ProductID + '';
	}

	function getSkuID(i) {
		if (browsingContext.Common.Config.Platform.LinxImpulseByGroup.ProductIdentifier === 'SKU') {
			return i.SKU;
		}

		return i.SkuID + '';
	}

	function getContextualProperty(obj, prop) {
		prop = prop || 'OrderNumber';
		return (obj['PlaceOrder.' + prop] ||
			obj['MultiplePlaceOrder.' + prop] ||
			obj['EmptyPlaceOrder.' + prop]
		);
	}

	function trySendUser() {
		var context = browsingContext;

		if (context && context.Common && context.Common.Shopper && context.Common.Shopper.IsAuthenticated) {
			var customer = context.Common.Customer || {};

			var birthDate = '';

			if (customer.BirthDate) {
				birthDate = customer.BirthDate.split('T')[0];
			}

			chaordic_meta.user = {
				id: customer.CustomerID + '',
				name: customer.Name + ' ' + customer.Surname,
				email: customer.Email,
				language: 'pt-BR',
				allow_mail_marketing: true,
				birthday: birthDate,
				gender: customer.Gender,
				identifications: {
					cpf: customer.Cpf
				}
			};

			if (customer.CustomerType === 'Company') {
				chaordic_meta.user.identifications = {
					cnpj: customer.Cnpj
				};
			}

			userSent = true;
			chaordicSafeInitialize();
		}
	}

	function subscribeToEvents() {
		var context = browsingContext;

		$.subscribe('basket/add', function(e, obj) {
			if (obj.params && obj.params && obj.params['Products[0].ProductID'] && obj.params['Products[0].SkuID']) {
				var productInfo = {
					id: '' + obj.params['Products[0].ProductID'],
					sku: '' + obj.params['Products[0].SkuID']
				};

				if (chaordic && chaordic.hasOwnProperty('sendProductInteractionEvent')) {
					chaordic.sendProductInteractionEvent(productInfo);
				}
			}
		});

		$.subscribe('wd/MarketingNewsletter/Submit/BeforeSend', function(e, args) {
			var form = args.form;

			if (!form) {
				return;
			}

			var formObj = {
				email: form.find('[name="Email"]').val()
			};

			var nameValue = form.find('[name="Name"]').val();

			if (nameValue) {
				formObj.name = nameValue;
			}

			chaordic.push(['updateUserEmail', formObj]);
		});

		$.subscribe('/wd/impulse/meta/update/search', function(e, args) {
			var searchId = args.searchId;
			if (!searchId) {
				return;
			}

			chaordic_meta.searchId = searchId;
			chaordic_meta.url = window.location.href.split('#')[0];
			chaordicSafeInitialize();
		});

		// atualiza user quando o carregamento dos assets é async(mobile)
		if (context && context.Common && context.Common.Config.General.Store.LoadAsyncAssets) {
			if (context.Common.ready) {
				trySendUser();
			} else {
				$(document).on('syncloader.phase.1', function() {
					trySendUser();
				});
			}
		}
	}

	function init() {
		if (!window.chaordic_meta ||
			browsingContext.Common.Config.Platform.LinxImpulseByGroup.MetaVersion !== 'Legacy'
		) {
			return;
		}

		if (chaordic_meta.page && metaBinder[chaordic_meta.page]) {
			metaBinder[chaordic_meta.page]();
		}

		subscribeToEvents();
	}

	$(document).ready(init);
}(jQuery, window, document));

}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/google.analytics/Scripts/wd.google.analytics.js*/
try{// https://developers.google.com/analytics/devguides/collection/analyticsjs/enhanced-ecommerce
(function(i, s, o, g, r, a, m) {
	if (s.getElementById('ez-ga') || window.ga) {
		return false;
	}
	i['GoogleAnalyticsObject'] = r;
	i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments);
		},
		i[r].l = 1 * new Date();
	a = s.createElement(o),
	m = s.getElementsByTagName(o)[0];
	a.async = 1;
	a.src = g;
	a.id = 'ez-ga';
	m.parentNode.insertBefore(a, m);
	i['GaAddedProductsImpression'] = [];
	i['GaTrackers'] = [];
	i['GaTrackerCount'] = 0;

	// debugger;
	a.onerror = function() {
		a.src = '';
		a.src = g;
		a.onerror = function() {};
	};

	i['GaTryInit'] = function() {};
	a.onload = function() {
		// debugger;
		i['EzGaCfg'] = i['EzGaCfg'] || {};
		i['EzGaCfg']['ready'] = true;

		GaTryInit((window.EzGaCfg) || false);
	};

})(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ezga');

$(function() {
	var ezGaTracking = null;
	/* valida execução */
	if (window['EzGaReady'] && window['EzGaReady'] === true) {
		return false;
	}

	window['EzGaReady'] = true;

	var $body = $('body'),
		bodyClass = $body.attr('class'),
		EZ_UA_CODE = 'UA-2269208-2',
		retryInitCount = 0;

	/* hack old browsers */
	if (!Object.keys) {
		Object.keys = function(obj) {
			var keys = [],
				k;
			if (typeof obj === 'object') {
				for (k in obj) {
					if (Object.prototype.hasOwnProperty.call(obj, k)) {
						keys.push(k);
					}
				}
			}
			return keys;
		};
	}

	var tryInit = function(AnalyticsConfiguration) {
		if(/(googlebot|google\.com|google\-site\-verification|google\-xrawler|feedfetcher\-google|adsbot\-google|apis\-google|mediapartners\-google|yahoo|bingpreview|bingbot|msnbot|facebook|whatsapp|twitter|pinterest|altavista|alta\-vista|ezbot|nagios|pingdom|woobot|uptimerobot|pagarme|pagosonline|chaordic|intelipost|outlook|performa\.ai)/gi.test(navigator.userAgent)){
			return;
		}

		if (typeof AnalyticsConfiguration != 'object') {
			retryInitCount++;
			if (retryInitCount < 4) {
				setTimeout(tryInit, 600);
			} else {
				return false;
			}
		}

		//console.log('AnalyticsConfiguration', AnalyticsConfiguration);

		var GaCode = AnalyticsConfiguration.UAS || '';
		var GaType = AnalyticsConfiguration.IntegrationType || 1;
		var GaDebug = AnalyticsConfiguration.Debugging || !1;
		var GaEZCode = EZ_UA_CODE; // EZ Analytics

		if (GaCode == '') {
			GaCode = GaEZCode;
		} else {
			GaCode = GaCode + ',' + GaEZCode;
		}

		window['GaDebug'] = GaDebug;

		window.onpageready(function(){
			//GaJsTracker(GaCode);
			AnalyticsJsTracker(GaCode);
		});

	};

	if(browsingContext
		&& browsingContext.Common
		&& browsingContext.Common.ready
		&& browsingContext.Common.WebSite.Type === 'Mobile'
		&& browsingContext.Common.Config.General.Store.LoadAsyncAssets
		&& !window.EzGaCfg.ready)
	{
		// debugger;
		window.GaTryInit = tryInit;
		// mata a execução para garantir que ocorra apenas uma vez
		return;
	}

	tryInit((window.EzGaCfg) || false);

	function AnalyticsJsTracker(GaCodes) {

		var _GaCodes = GaCodes.replace(' ', '').split(',');
		var Codes = [];
		var registeredCodes = [];

		try {
			// debugger;
			if (window.ga && window.ga.getAll) {
				_.each(window.ga.getAll(), function(ua) {
					var _ua = ua.get('trackingId');
					if(_ua) {
						registeredCodes.push(_ua);
					}
				});
			}

			if (window.ezga && window.ezga.getAll) {
				_.each(window.ezga.getAll(), function(ua) {
					var _ua = ua.get('trackingId');
					if(_ua) {
						registeredCodes.push(_ua);
					}
				});
			}
		} catch(er) {
			// console.error(er);
		}

		for (var i = 0; i < _GaCodes.length; i++) {
			if ((_GaCodes[i] || '').substr(0, 2).toUpperCase() === 'UA'
				&& $.inArray(_GaCodes[i], Codes) === -1
				&& $.inArray(_GaCodes[i], registeredCodes) === -1
			) {
				Codes.push(_GaCodes[i]);
			}
		}

		if (!Codes.length) {
			tryInit(window.EzGaCfg);
			return false;
		}

		var isEzUA = function (trackerName) {
			if (!ezga.hasOwnProperty('getByName')) {
				return ezGaTracking === trackerName;
			}

			var tracker = ezga.getByName(trackerName.replace('.',''));
			if(tracker){
				return ( tracker.get('trackingId') == EZ_UA_CODE );
			}

			return false;
		};

		var bodyId = (document.body && document.body.id || '').replace('page-', '');
		//var referer				= ($('[name="http-referer"]').val() || '').replace(cfg.Url, '');
		var referer = '';
		var productsListPages = ['default', 'produtos-secoes', 'produtos-pesquisa', 'produtos', 'carrinho'];

		//console.log('antes dos trackers - Codes', Codes);

		for (var i = 0; i < Codes.length; i++) {
			Async(function(){

				window['GaTrackerCount'] = window['GaTrackerCount'] + 1;
				var trackerName = 'tracker' + window['GaTrackerCount'] + '.';
				var GaCode = Codes[i];

				//console.log('GaCode', GaCode);

				GaTrackers.push(trackerName);

				// cria rastreamento
				var objCreate = {
					'siteSpeedSampleRate':50,
					'allowLinker': true,
					'name': trackerName.substr(0, trackerName.length - 1)
				};
				//if(GaCode == EZ_UA_CODE){
				//	objCreate.sampleRate = 50;
				//}
				if (EzGaCfg.Shopper.IsAuthenticated) {
					// deve ser string conforme documentação : https://developers.google.com/analytics/devguides/collection/analyticsjs/field-reference#user
					objCreate.userId = browsingContext.Common.Customer.CustomerID + '';
				}

				ezga('create', GaCode, 'auto', objCreate);
				if (GaCode == EZ_UA_CODE) {
					ezGaTracking = trackerName;
					ezga(trackerName + 'set', 'allowAdFeatures', false);
					ezga(trackerName + 'set', 'dimension1', EzGaCfg.Config.Store.Name);
					ezga(trackerName + 'set', 'dimension2', browsingContext.Common.Basket.BasketID + "");
					ezga(trackerName + 'set', 'page', 		(location.host || location.hostname ).substring(location.hostname.indexOf('.')+1));
					ezga(trackerName + 'set', 'title', 		(findPageType() || location.pathname || '') );
				}
				EzLog('Tracker ' + (trackerName.length ? trackerName : 'default') + ' criado com código ' + GaCode, trackerName);

				// tracker multiples domains.
				ezga(trackerName + 'require', 'linker');
				//ezga(trackerName + 'linker:autoLink', [cfg.DomainName, 'ssl.'+cfg.DomainName, 'ezcommerce.com.br', 'ssl.ezcommerce.com.br'], false, true);

				// carrega ec.js
				ezga(trackerName + 'require', 'ec');

				// Recursos Gráficos
				ezga(trackerName + 'require', 'displayfeatures');

				// força SSL e envio por beacon
				ezga(trackerName + 'set', 'transport', 'beacon');
				ezga(trackerName + 'set', 'forceSSL', true);

				// define a moeda para BRL
				ezga(trackerName + 'set', '&cu', 'BRL');

				// envia pageview e evento para monitoramento realtime
				ezga(trackerName + 'send', 'pageview');
				EzLog('Pageview enviado!', trackerName);

				///////////////// DETALHE DO PRODUTO
				if (!!~bodyClass.indexOf('context-product') && EzGaCfg.hasOwnProperty('ProductDetail')) {

					if(!isEzUA(trackerName) && GaCode!=EZ_UA_CODE){ // nao trackear visualizacao de produtos para DCG

						var product = EzGaCfg.ProductDetail;

						var objProduct = {
							'id': product.id,
							'name': app.tools.htmlDecode(product.name),
							'category': app.tools.htmlDecode(product.category),
							'brand': app.tools.htmlDecode(product.brand),
							'price': parseFloat(product.price).toFixed(2),
							'list': 'Detalhe do produto ' + app.tools.htmlDecode(product.name)
						};

						ezga(trackerName + 'ec:addProduct', objProduct);
						ezga(trackerName + 'ec:setAction', 'detail');
						ezga(trackerName + 'send', 'event', 'Produto', 'Produto visualizado', 'Detalhes do produto visualizado');

						EzLog('Detalhes do produto ' + product.id + ' enviado.\n  ' + JSON.stringify(objProduct), trackerName);

					}
				}

				///////////////// CARRINHO
				if (!!~bodyClass.indexOf('BasketIndexRoute') && EzGaCfg.hasOwnProperty('Basket')) {
					window.GatrackCart = function(trackerName) {

						if (!$('.wd-checkout-basket').length) {
							return;
						}

						var basketItens = EzGaCfg.Basket;

						if (basketItens.length == 0) {
							setTimeout('window.GatrackCart("' + trackerName + '")', 100);
							return;
						}

						var i = 0,
							strProducts = '';

						for (var c in basketItens) {
							//var cartItem;
							//eval('cartItem = cart.itens.'+item);
							var item = basketItens[c];

							var id = item.id || '',
								name = item.name || '',
								price = item.price || '',
								category = item.category || '',
								brand = item.brand || '',
								quantity = item.quantity || 1;
							var objProduct = {
								'id': id,
								'name': app.tools.htmlDecode(name),
								'category': app.tools.htmlDecode(category),
								'brand': app.tools.htmlDecode(brand),
								'price': price,
								'quantity': quantity,
								'list': 'Carrinho de compras'
							};
							strProducts += JSON.stringify(objProduct) + '\n  ';
							ezga(trackerName + 'ec:addProduct', objProduct);
							i++;

						}

						if (i > 0) {

							EzLog('Carrinho enviado com ' + i + ' produtos.\n  ' + strProducts, trackerName);

							ezga(trackerName + 'ec:setAction', 'add');
							ezga(trackerName + 'send', 'event', 'Carrinho', 'Carrinho visualizado', 'Produtos adicionados e visualizados no carrinho');

						}

					};
					if(!isEzUA(trackerName) && GaCode!=EZ_UA_CODE) {
						window.GatrackCart(trackerName);
					}
				}

			})(); // auto execute async funcion

		} //// fim each Codes(UA's')

		////////////////// CORE CUSTOM

		var $productLine = $('.wd-product-line');
		if ($productLine.length) {
			//console.log('$productLine', $productLine);

			function runProcess() {
				$productLine = $('.wd-product-line');
				addProductsPageImpression();
			}

			if ($('.wd-browsing-grid-list.wd-live-scroll')) {
				$body.on('onLiveScrollComplete', function() {
					runProcess();
				});

			}
			$body.on('onBuildFacetingComplete', function() {
				runProcess();
			});

			var screen_bottom = $(window).scrollTop() + $(window).height() + 40;

			var addProductsPageImpression = function() {

				screen_bottom = $(window).scrollTop() + $(window).height() + 40;

				window.clearTimeout(window.gaImpressionProducts);
				window.gaImpressionProducts = window.setTimeout(function() {

					var addProductImpression = function(li, trackerName) {
						var id = li.data('product-id') || '',
							name = (li.data('name') || ''),
							category = (li.data('category') || ''),
							//brand		= (li.data('brand') || ''),
							position = ($productLine.index(li) + 1);

						var list = findPageType();
						if (id) {
							id = parseInt(id);
						}

						var objImpression = {
							'id': id,
							'name': app.tools.htmlDecode(name),
							'category': app.tools.htmlDecode(category),
							//'brand': app.tools.htmlDecode(brand),
							'list': app.tools.htmlDecode(list),
							'position': position
						};
						// se não tiver pelo menos o id ou name não envia
						if (id || name) {
							ezga(trackerName + 'ec:addImpression', objImpression);
							EzLog(trackerName + 'ec:addImpression', objImpression);
						}

					};

					for (var i = 0; i < GaTrackers.length; i++) {
						var trackerName = GaTrackers[i];

						if(isEzUA(trackerName)) { continue; } // não trackear visualizacao de produtos para UA da DCG

						var trackedProductsCount = 0;
						var className = 'ga-viewed-' + (i + 1);

						$productLine.not('.' + className).each(function() {
							var $el = $(this);

							if ( $el.offset().top < screen_bottom ) {
								// aqui o produto já apareceu
								//console.log(' na view port!', $el);
								$el.addClass(className);
								addProductImpression($el, trackerName);
								trackedProductsCount++;
							}
						});

						if (trackedProductsCount > 0) {
							EzLog('Lista de produtos', 'Produtos visualizados', trackedProductsCount + ' produtos foram visualizados');
							ezga(trackerName + 'send', 'event', 'Lista de produtos', 'Produtos visualizados', trackedProductsCount + ' produtos foram visualizados',{'nonInteraction':!0});
						}

					}

				}, 500);
			};

			$(window).bind('load resize scroll', addProductsPageImpression);

		};

		var $basket = $('.wd-checkout-basket');
		if ($basket.length && EzGaCfg.hasOwnProperty('Basket')) {
			function updateBasketGa() {

				var setProductGa = function(trackerName, product) {
						ezga(trackerName + 'ec:addProduct', {
							'id': product.id,
							'name': app.tools.htmlDecode(product.name),
							'category': app.tools.htmlDecode(product.category),
							'brand': app.tools.htmlDecode(product.brand),
							'price': parseFloat(product.price).toFixed(2),
							'quantity': product.quantity,
							'list': 'Carrinho de compras'
						});
					},
					updateItemQuantityGa = function($item, item) {
						var qty = $item.find('.quantity .js-qty').val();
						if (qty) {
							item.quantity = parseInt(qty);
							for (var i = 0; i < GaTrackers.length; i++) {
								var trackerName = GaTrackers[i];
								if(isEzUA(trackerName)) { continue; }

								setProductGa(trackerName, item);

								ezga(trackerName + 'ec:setAction', 'add');
								ezga(trackerName + 'send', 'event', 'Carrinho', 'Alteração de quantidade', 'Quantidade do produto alterada');

								EzLog('Quantidade do produto alterada', trackerName + 'send Alteração de quantidade');
							}
						}
					},
					removeItemGa = function(item) {
						for (var i = 0; i < GaTrackers.length; i++) {
							var trackerName = GaTrackers[i];
							if(isEzUA(trackerName)) { continue; }

							var index = _.indexOf(EzGaCfg.Basket, item);
							EzGaCfg.Basket[index] = undefined;

							setProductGa(trackerName, item);
							ezga(trackerName + 'ec:setAction', 'remove');
							ezga(trackerName + 'send', 'event', 'Carrinho', 'Exclusão de produtos', 'Produto removido do carrinho');

							EzLog('Produto removido do carrinho', trackerName + 'send Exclusão de produtos');
						}
					},
					clearProductsCart = function(e) {
						for (var i = 0; i < GaTrackers.length; i++) {
							var trackerName = GaTrackers[i];
							if(isEzUA(trackerName)) { continue; }

							_.each(EzGaCfg.Basket, function(item, propertyName) {
								if (item)
									setProductGa(trackerName, item);
							});
							ezga(trackerName + 'ec:setAction', 'remove');
							ezga(trackerName + 'send', 'event', 'Carrinho', 'Exclusão de produtos', 'Todos os produtos foram removidos do carrinho');

							EzLog('Todos os produtos foram removidos do carrinho', trackerName + 'send Exclusão de produtos');
						}
					};

				if (!$('tbody tr.item', $basket).length) {
					clearProductsCart();
					return;
				}
				_.each(EzGaCfg.Basket, function(item, idx) {
					if (item) {
						var $item = $('#basket-item-' + item.basketItemId, $basket);
						if ($item.length) {
							updateItemQuantityGa($item, item);
						} else {
							removeItemGa(item);
						}
					}
				});
			};
			EzGaCfg.Basket.Shipping = {
				locked: false,
				id: null
			};
			//setShippingOptionGa();
			$.subscribe(EzGaCfg.Urls.ParentBaseUrl + 'checkout/basket/changed', function() {
				//console.log('subscribe basket change!!!');
				$basket = $('.wd-checkout-basket');
				updateBasketGa();
				//setShippingOptionGa();
			});
		}

		var $checkout;
		if (EzGaCfg.hasOwnProperty('Checkout') || !!~bodyClass.indexOf('OnePageCheckoutStep') || !!~bodyClass.indexOf('EasyCheckoutStep')) {
			if (!EzGaCfg.hasOwnProperty('Checkout')) {
				EzGaCfg.Checkout = {
					Items: browsingContext.Common.Basket.Items,
					BasketID: browsingContext.Common.Basket.BasketID
				};
			};
			var checkoutHelper = {
				step: {
					set: function(val) {
						return $.cookie('GaCheckoutStep-' + EzGaCfg.Checkout.BasketID, val);
					},
					get: function() {
						return $.cookie('GaCheckoutStep-' + EzGaCfg.Checkout.BasketID);
					}
				},
				addProductsGa: function(trackerName, isEasy) {
					var x = 0;
					for (var i in EzGaCfg.Checkout.Items) {
						var item = EzGaCfg.Checkout.Items[i];
						ezga(trackerName + 'ec:addProduct', {
							'id': item.code,
							'name': app.tools.htmlDecode(item.name),
							'category': app.tools.htmlDecode(item.category),
							'brand': app.tools.htmlDecode(item.brand),
							'price': item.price,
							'quantity': item.quantity,
							'list': 'Checkout'
						});
						x++;
					}
					EzLog(x + ' produtos enviados.', trackerName);
				}
			};

			var easyGaProcess = function() {
				/*
					STEP
					----
					1 - Identificação
					2 - Seta meio de entrega
					3 - Seta meio de pagamento

				*/

				var step = 0,
					hash = handleHash(window.location.hash),
					basket = {
						DeliveryAmount: 0,
						Total: 0
					};
				EzGaCfg.Checkout.SelectedPaymentMethod = {
					ID: null,
					Name: null
				};

				var sendWaitingIdentification = function() {
					for (var i = 0; i < GaTrackers.length; i++) {
						var trackerName = GaTrackers[i];
						if(isEzUA(trackerName)) { continue; }
						ezga(trackerName + 'send', 'event', 'Checkout', '[easy] Aguardando identificação');
						EzLog('[easy] Aguardando identificação', trackerName);
					}
				};

				var sendLogin = function() {
					for (var i = 0; i < GaTrackers.length; i++) {
						var trackerName = GaTrackers[i];
						if(isEzUA(trackerName)) { continue; }
						ezga(trackerName + 'send', 'event', 'Checkout', '[easy] Login realizado');
						EzLog('[easy] Login realizado', trackerName);
					}
				};

				var sendRegister = function() {
					for (var i = 0; i < GaTrackers.length; i++) {
						var trackerName = GaTrackers[i];
						if(isEzUA(trackerName)) { continue; }
						ezga(trackerName + 'send', 'event', 'Checkout', '[easy] Cadastro realizado');
						EzLog('[easy] Cadastro realizado', trackerName);
					}
				};

				var sendShippingOptionGa = function(sendStep) {
					sendStep = sendStep || 2;
					var shippingOption = '';

					if (EzGaCfg.Checkout.SelectedDeliveryOption && EzGaCfg.Checkout.SelectedDeliveryOption.hasOwnProperty('Name')) {
						shippingOption = app.tools.htmlDecode(EzGaCfg.Checkout.SelectedDeliveryOption.Name);
						var SecondStepDetails = {
							'step': sendStep,
							'option': shippingOption
						};

						for (var i = 0; i < GaTrackers.length; i++) {
							var trackerName = GaTrackers[i];
							ezga(trackerName + 'ec:setAction', 'checkout_option', SecondStepDetails);
							ezga(trackerName + 'send', 'event', 'Checkout', '[easy] Frete', 'Frete selecionado');
							EzLog('Etapa ' + sendStep + ' do checkout atualizada. Frete selecionado \n' + JSON.stringify(SecondStepDetails), trackerName);
						}
					}
				};

				var sendPaymentOptionGa = function(sendStep) {
					sendStep = sendStep || 3;
					var paymentGroupSelected = '';

					if (EzGaCfg.Checkout.SelectedPaymentMethod.Name) {
						paymentGroupSelected = app.tools.htmlDecode(EzGaCfg.Checkout.SelectedPaymentMethod.Name);
						var details = {
							'step': sendStep,
							'option': paymentGroupSelected
						};

						for (var i = 0; i < GaTrackers.length; i++) {
							var trackerName = GaTrackers[i];
							ezga(trackerName + 'ec:setAction', 'checkout_option', details);
							ezga(trackerName + 'send', 'event', 'Checkout', '[easy] Pagamento', 'Pagamento selecionado');
							EzLog('Etapa ' + sendStep + ' do checkout atualizada. Pagamento selecionado \n' + JSON.stringify(details), trackerName);
						}
					}
				};

				var sendAction = function(sendStep) {
					sendStep = sendStep || step;
					for (var i = 0; i < GaTrackers.length; i++) {
						var trackerName = GaTrackers[i];

						checkoutHelper.addProductsGa(trackerName);

						ezga(trackerName + 'ec:setAction', 'checkout', {
							'step': sendStep
						});
						ezga(trackerName + 'send', 'event', 'Checkout', '[easy] Step '+sendStep+' definida' );
						EzLog('Etapa ' + sendStep + ' do checkout definida.', trackerName);
					}
				};

				function handleHash(hash) {
					if (hash)
						hash = hash.replace('#', '');
					return hash;
				};

				function checkPaymentStep() {
					if (hash === 'payment') {
						//garante o envio dos steps anteriores
						sendAction(1);
						sendAction(2);

						// seta step 3
						step = 3
						sendAction(step);
						sendPaymentOptionGa(step);
						return true;
					}
					return false;
				};

				function checkSelectedDeliveryOption(sendStep) {
					if (EzGaCfg.Checkout.SelectedDeliveryOption) {
						// seta opção de delivery selecionada
						sendShippingOptionGa(sendStep);
					}
				};


				function setUserID() {
					var userID = EasyCheckout.ModelData.Customer.CustomerID + '';
					ezga('set', 'userId', userID);
				};

				$(window).on('hashchange', function() {
					//console.log('hashchange');
					hash = handleHash(window.location.hash);
					checkPaymentStep();
					for(var i = 0; i < GaTrackers.length; i++){
						var trackerName = GaTrackers[i];
						ezga(trackerName + 'set', 'title', ('page-easycheckout-' + hash ) );
						ezga(trackerName + 'send', 'pageview', '/checkout/easy/'+hash);
					}
				});

				/////////////////////////////////////////  Ações iniciais
				if ( EzGaCfg.Shopper.IsAuthenticated ) {

					// garante o envio do step 1
					sendAction(1);

					// seta step 2 (entrega), pois já está identificado
					step = 2;
					sendAction(step);

					checkSelectedDeliveryOption(step);
					// verifica se pulou por ultimo passo
					checkPaymentStep();

				} else {

					sendWaitingIdentification();

					// nao esta autenticado, aguardando identificacao
					step = 1
					sendAction(step);

					ko.postbox.subscribe('checkout/IsAuthenticated', function() {
						//console.log('subscribe checkout/IsAuthenticated');
						EzGaCfg.Shopper.IsAuthenticated = true;

						// seta step 2, pois já identificou e esta na entrega
						step = 2;
						sendAction(step);
						//checkSelectedDeliveryOption(step);
						// verifica se pulou por ultimo passo
						checkPaymentStep();
						setUserID();
					});

					ko.postbox.subscribe('checkout/signin/done', function() {
						sendLogin();
						setUserID();
					});

					ko.postbox.subscribe('checkout/signup/done', function() {
						sendRegister();
						setUserID();
					});

				}
				/////////////////////////////////////// FIM Ações iniciais

				ko.postbox.subscribe('checkout/setDelivery', function(args) {
					//console.log('args',args);
					var deliveryOptionName = '';
					if (args && args.hasOwnProperty('deliveryOption')) {
						EzGaCfg.Checkout.SelectedDeliveryOption = EzGaCfg.Checkout.SelectedDeliveryOption || {};

						EzGaCfg.Checkout.SelectedDeliveryOption.Name = args.deliveryOption.Name;
						EzGaCfg.Checkout.SelectedDeliveryOption.DeliveryOptionID = args.deliveryOption.ID;
						// atualiza step 2 com o valor do delivery
						if (step > 1)
							checkSelectedDeliveryOption();
					}

				});

				ko.postbox.subscribe('checkout/payment/setType', function(args) {
					//console.log('subscribe checkout/payment/setType args',args);
					if (args && args.hasOwnProperty('paymentMethod')) {
						EzGaCfg.Checkout.SelectedPaymentMethod = {
							ID: args.paymentMethod.ID,
							Name: args.paymentMethod.Name
						};
						if (step == 3) {
							sendPaymentOptionGa();
						}
					}
				});

				ko.postbox.subscribe('checkout/data/update', function(data) {
					//console.log('subscribe checkout/data/update', data);
					if (data.hasOwnProperty('Basket')) {
						basket.DeliveryAmount = data.Basket.DeliveryAmount;
						basket.Total = data.Basket.Total;
					}
				});

				ko.postbox.subscribe('checkout/payment/submit', function(response) {
					//console.log('subscribe checkout/payment/submit response', response);
					if (response.hasOwnProperty('Response')) {
						var res = response;
						response = response.Response;
						if (response.IsValid) {
							var orderNumber = (response.Custom['PlaceOrder.OrderNumber'] !== undefined) ? response.Custom['PlaceOrder.OrderNumber'] : response.Custom['EmptyPlaceOrder.OrderNumber'];
							// monta objeto
							var order = {
								Total: (res.Order.Total || basket.Total || parseFloat(0)).toFixed(2),
								DeliveryAmount: (basket.DeliveryAmount || parseFloat(0)).toFixed(2),
								Items: EzGaCfg.Checkout.Items,
								OrderNumber: orderNumber,
								PaymentMethods: [{
									Title: EzGaCfg.Checkout.SelectedPaymentMethod.Name
								}]
							};
							sendPurchaseGa(order);
						}
					}
				});
			};

			var onepageGaProcess = function() {
				/*
					STEP
					----
					1 - Identificação
					2 - Seta meio de entrega
					3 - Seta meio de pagamento

				*/
				var currentStep = checkoutHelper.step.get();
				//console.log('currentStep',currentStep);

				var sendPrevSteps = function() {
					if (!currentStep)
						return false;
					var count = currentStep;
					//console.log('sendPrevs currentStep',currentStep);
					while (--count) {
						sendAction(count, true);
					};
				};

				var findCurrentStep = function() {
					var stepNumber = 1;
					$('.step', $checkout).each(function(i, $step) {

						if ($($step).hasClass('step-complete')) {
							stepNumber++;
						}
					});

					return stepNumber;
				};

				var subscribeEvents = function() {
					// Escuta evento de selecionar meio de entrega
					$.subscribe('/wd/checkout/deliveryservices/selected', function() {
						//console.log('escutou evento de selecionar deliveryservice!!! currentStep-',currentStep);
						sendShippingOptionGa(currentStep);
					});

					$body.on('change', '.wd-checkout-paymentgroup .payment-method-id', function() {
						//console.log('chenge no .payment-method-id - currentStep-',currentStep);
						sendPaymentOptionGa(currentStep);
					});
				};

				var sendShippingOptionGa = function(step) {
					step = step || 2;
					var shippingOption = '';
					var $deliveryService = $('.wd-checkout-deliveryservices', $checkout),
						$deliveryServiceSelected = $deliveryService.find('.js-delivery-choice input:checked');
					if ($deliveryServiceSelected.length) {
						shippingOption = $deliveryServiceSelected.closest('li').find('.item-name').text();
						EzGaCfg.Checkout.SelectedDeliveryOption = EzGaCfg.Checkout.SelectedDeliveryOption || {};
						EzGaCfg.Checkout.SelectedDeliveryOption.Name = shippingOption;
						var SecondStepDetails = {
							'step': step,
							'option': shippingOption
						};

						for (var i = 0; i < GaTrackers.length; i++) {
							var trackerName = GaTrackers[i];
							ezga(trackerName + 'ec:setAction', 'checkout_option', SecondStepDetails);
							ezga(trackerName + 'send', 'event', 'Checkout', 'Frete', 'Frete selecionado');
							EzLog('Etapa ' + step + ' do checkout atualizada. Frete selecionado \n' + JSON.stringify(SecondStepDetails), trackerName);
						}
					}
				};

				var sendPaymentOptionGa = function(step) {
					step = step || 3;
					var paymentGroupSelected = '';
					var $paymentGroup = $('.wd-checkout-paymentgroup', $checkout),
						$paymentGroupSelected = $paymentGroup.find('input.payment-method-id:checked');
					if ($paymentGroupSelected.length) {
						paymentGroupSelected = $paymentGroupSelected.closest('label').find('img').attr('alt');
						var details = {
							'step': step,
							'option': paymentGroupSelected
						};

						for (var i = 0; i < GaTrackers.length; i++) {
							var trackerName = GaTrackers[i];
							ezga(trackerName + 'ec:setAction', 'checkout_option', details);
							ezga(trackerName + 'send', 'event', 'Checkout', 'Pagamento', 'Pagamento selecionado');
							EzLog('Etapa ' + step + ' do checkout atualizada. Pagamento selecionado \n' + JSON.stringify(details), trackerName);
						}
					}
				};

				var sendAction = function(step, isPrevStep) {

					step = step || currentStep;
					for (var i = 0; i < GaTrackers.length; i++) {
						var trackerName = GaTrackers[i];

						checkoutHelper.addProductsGa(trackerName);

						ezga(trackerName + 'ec:setAction', 'checkout', {
							'step': step
						});
						ezga(trackerName + 'send', 'event', 'Checkout', 'Login', {
							useBeacon: true
						});
						EzLog('Etapa ' + step + ' do checkout definida.', trackerName);

					}

					if (EzGaCfg.Shopper.IsAuthenticated) {
						if (!EzGaCfg.Checkout.SelectedDeliveryOption)
							sendShippingOptionGa(step);

						sendPaymentOptionGa(step);
					}

				};

				var checkStepState = function() {
					if (currentStep < 3) {
						var $nextStep = $('.step.step-' + (currentStep + 1), $checkout);
						//console.log('$nextStep', $nextStep);
						if ($nextStep.length && !$nextStep.hasClass('step-disabled')) {
							//console.log('entrou increment checkStepState');
							currentStep++;
							// recursivo
							checkStepState();
						}

					}
				};

				if (currentStep) {
					var oldStep = currentStep = parseInt(currentStep);
					if (!EzGaCfg.Shopper.IsAuthenticated)
						currentStep = 1;
					// verifica se mudou a step ou o cliente somente atualizou a página
					checkStepState();
					//console.log('pós checkStepState oldStep=',oldStep,' currentStep=',currentStep, ' diferença=',(currentStep - oldStep));
					// se a diferença entre a entre a etapa atual e a etapa anterior for maior que 1, envia ações anteriores
					if ((currentStep - oldStep) > 1)
						sendPrevSteps();
				} else {
					// se currentStep for nulo

					// procura currentStep
					currentStep = findCurrentStep();
					// se currentStep for maior que 1
					if (currentStep > 1) {
						// envia ação de etapas anteriores não setadas
						sendPrevSteps();
					}
				}

				// se o elemento de classe 'step-'+currentStep +1 existir lança evento
				var $currentStep = $('.step.step-' + currentStep);
				if ($currentStep.length) {
					sendAction();
					if (currentStep <= 3) {
						//console.log('setou cookie currentStep!!!!!', currentStep);
						checkoutHelper.step.set(currentStep);
					}
				}

				// escuta eventos de setar frete e setar meio de pagamento
				subscribeEvents();
			};
			/*
			TIPOS DE CHECKOUT - WIDGETS
			-------------------------
			Checkout normal =
			Checkout One Page = wd-checkout-onepage
			EasyCheckout = wd-easy-checkout

			*/
			var retryCheckoutProcessCount = 0;
			var tryRunProcess = function() {
				var $onePage = $('.wd-checkout-onepage'),
					$easy = $('.wd-easy-checkout');
				if (!!~bodyClass.indexOf('OnePageCheckoutStep')) {
					$checkout = $('.wd-checkout-onepage');
					onepageGaProcess();
				} else if (!!~bodyClass.indexOf('EasyCheckoutStep')) {
					$checkout = $('.wd-easy-checkout');
					easyGaProcess();
				} else {
					retryCheckoutProcessCount++;
					if (retryCheckoutProcessCount < 6) {
						setTimeout(tryRunProcess, 550);
					}
				}
			};

			tryRunProcess();

		};

		var sendPurchaseGa = function(order, isEasy) {
			function addProductsGa(trackerName) {
				var x = 0;
				for (var i in order.Items) {
					var item = order.Items[i];
					ezga(trackerName + 'ec:addProduct', {
						'id': item.code,
						'name': app.tools.htmlDecode(item.name),
						'category': app.tools.htmlDecode(item.category),
						'brand': app.tools.htmlDecode(item.brand),
						'price': item.price,
						'quantity': item.quantity
					});
					x++;
				}
				EzLog(x + ' produtos enviados.', trackerName);
			}

			// envia a transação na finalização da compra
			var orderAffiliate = (EzGaCfg.Config.Store.Name || ''),
				orderTotal = (order.Total || parseFloat(0).toFixed(2)),
				shippingAmount = (order.DeliveryAmount || parseFloat(0).toFixed(2)),
				orderId = order.OrderNumber || '';

			var purchase = {
				affiliation: orderAffiliate,
				id: orderId,
				revenue: orderTotal,
				shipping: shippingAmount
			};

			if (order.PaymentMethods.length) {
				purchase.option = order.PaymentMethods[0].Title;
			}

			for (var i = 0; i < GaTrackers.length; i++) {
				var trackerName = GaTrackers[i];

				addProductsGa(trackerName);

				ezga(trackerName + 'ec:setAction', 'purchase', purchase);
				var easyPrefix = isEasy ? '[easy] ' : '';
				ezga(trackerName + 'send', 'event', 'Checkout', easyPrefix + 'Pedido', 'Pedido realizado com sucesso');

				//console.log('Order', order);
				EzLog('Dados do pedido ' + orderId + ' enviados.', trackerName);
			}

		};

		// confirmação de compra checkout onePage
		if (EzGaCfg.hasOwnProperty('Order') && (bodyClass.indexOf('EasyCheckoutReceiptStep') != -1 || bodyClass.indexOf('OneStepCheckoutReceiptStep') != -1 || bodyClass.indexOf('DefaultCheckoutReceiptStep ') != -1)) {
			if (EzGaCfg.Order.OrderNumber)
				sendPurchaseGa(EzGaCfg.Order);
		}

		window['ga'] = ezga;

		////////////////// FIM CORE CUSTOM

	};

	function findPageType() {
		var pageType = 'Outros';

		if (!!~bodyClass.indexOf('HomeRoute')) {
			pageType = "Home";
		}
		if (!!~bodyClass.indexOf('context-search')) {
			pageType = "Página de Pesquisa";
		}
		if (!!~bodyClass.indexOf('context-product')) {
			pageType = "Detalhe de produto";
		}
		if (!!~bodyClass.indexOf('BasketIndexRoute')) {
			pageType = "Carrinho de compras";
		}
		if (!!~bodyClass.indexOf('OneStepCheckoutReceiptStep')) {
			pageType = "Página de Confirmação de Compra";
		}
		return pageType;
	};

	function EzLog() { return;
		if (window['GaDebug'] && console) {
			console.log('\n%cEZ Commerce%c - %cG%co%co%cg%cl%ce%c Analytics %c[Debug]\n\n',
				'color:#060;font-weight:bold;font-size:13px', // EZ Commerce
				'color:#060;font-weight:bold;font-size:13px', // -
				'color:#0266C8;font-weight:bold;font-size:13px', // G
				'color:#F90101;font-weight:bold;font-size:13px', // o
				'color:#F2B50F;font-weight:bold;font-size:13px', // o
				'color:#0266C8;font-weight:bold;font-size:13px', // g
				'color:#00933B;font-weight:bold;font-size:13px', // l
				'color:#F90101;font-weight:bold;font-size:13px', // e
				'color:#000;font-weight:bold;font-size:13px', // Analytics
				'color:#AAA;font-weight:bold;font-size:13px', // [Debug]
				(arguments[0] || '') + '\n' +
				'  Tracker ' + (arguments[1] ? arguments[1] : 'default') + '\n\n'
			);
		}
	};

});

}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/checkout.basket.summaryheader/Scripts/wd.checkout.basket.summaryheader.js*/
try{;
(function($, window, document, ko, undefined) {

	function model() {
		var self = this;
		self.CacheStrategy = ko.observable(jQuery.extend(true, {}, browsingContext.Common.CacheSettings.CacheStrategy));
		//self.CacheStrategy = browsingContext.Common.CacheSettings.CacheStrategy;

		var basket = browsingContext.Common.Basket;

		ko.mapping.fromJS(basket, {}, self);
		//self.Basket = ko.observable(browsingContext.Common.Basket);
	};

	//var subscribeCtrl = false;

	function viewModel(widget, $w) {
		var self = this;
		ko.utils.extend(self, new model());

		var mapContext = function() {
			var _shopper = browsingContext.Common.Shopper;
			self.Shopper = ko.observable({
				IsAuthenticated: _shopper.IsAuthenticated
			});
			self.HasCreditCompetence = ko.observable(browsingContext.Common.BusinessContract.HasCreditCompetence);
			if (!_shopper.IsAuthenticated)
				self.HasCreditCompetence(false);
			//self.creditCompetenceAvailableAmount = ko.observable(browsingContext.Common.Basket.CreditCompetence.AvailableAmount);
			self.creditCompetenceBasketDif = ko.computed(function() {
				return self.CreditCompetence.AvailableAmount() - self.Total();
			});

			self.hasCreditCompetence = ko.observable(browsingContext.Common.BusinessContract.HasCreditCompetence);
			self.creditCompetenceExceeded = ko.computed(function() {
				var bool = self.Shopper().IsAuthenticated && self.HasCreditCompetence();
				var creditCompetence = self.CreditCompetence;
				if (bool) {
					bool = (creditCompetence.AvailableAmount() - self.Total()) >= 0;
				}
				return !bool;
			});
			var cutOff = browsingContext.Common.BusinessContract.CreditCompetence != null ? browsingContext.Common.BusinessContract.CreditCompetence.CutOffPointReached : false;
			self.cutOffPointReached = ko.observable(cutOff);
		};

		mapContext();

		var _filterSize = parseInt($w('[name="widget-filter-size"]').length ? $w('[name="widget-filter-size"]').val() : 0);

		self._filterSize = ko.observable(!isNaN(_filterSize) ? _filterSize : 0);

		//if (!subscribeCtrl) {
		ko.postbox.subscribe("/wd/summaryheader/context/ready", function() {
			basket = browsingContext.Common.Basket;

			ko.mapping.fromJS(basket, {}, self);
			mapContext();

		}, self);

		$.subscribe('/wd/browsing/context/common/basket/updated', function(e, basketModel) {
			ko.mapping.fromJS(basketModel, {}, self);
			mapContext();
		});
		//}

		//subscribeCtrl = true;

		self.filteredItems = ko.pureComputed(function() {
			var filterSize = ko.unwrap(self._filterSize);
			var items = ko.unwrap(self.Items);

			if (filterSize && filterSize > 0) {
				items = items.slice(0, filterSize);
			}

			return items;
		}, self);

		self.basketSizeComputed = ko.pureComputed(function() {
			if (browsingContext.Common.BusinessContract.SalesUnitLimit > 0 || widget.options.SizeByItemQuantity) {
				var count = 0;
				$.each(self.Items(), function(i, e) {
					//app.log('each Quantity', e);
					e.Quantity = ko.unwrap(e.Quantity);
					count += e.Quantity;

				});
				return count;
			};
			return self.Items().length;
		}, self);

		self.truncate = function(text, length) {
			if (!text)
				return '';
			text = ko.unwrap(text);
			text = app.tools.htmlDecode(text);
			if (text.length > (length))
				return text.substring(0, length - 3) + '...';
			return text;
		};
		self.formatMoney = function(value) {
			value = ko.unwrap(value);
			return 'R$ ' + parseFloat(value).formatMoney();
		};

		self.itemTotalPrice = function(item){
			var it = ko.unwrap(item);
			var nested = ko.unwrap(it.Nested);
			var price = it.RetailPrice();

			//comentado este trecho pois gerava problema nos kits, talvez seja necessário avaliar no caso de compra com brindes
			// for (var i = 0; i < nested.length; i++) {
			// 	price += nested[i].RetailPrice();
			// }
			return price;
		};

		self.isFreeItem = function(discounts) {
			//console.log('discounts',discounts);
			discounts = ko.unwrap(discounts);
			var resp = _.where(discounts, {
				Type: "FreeItem"
			});
			//console.log('resp',resp);
			return !resp.length > 0;
		};

		self.contentPath = function(path) {
			if (!path)
				return;
			path = ko.unwrap(path);

			if (!widget.enableCdn)
				return path;
			path = path.replace(browsingContext.Common.ImagesPath.Product.Match, '');
			return browsingContext.Common.ImagesPath.Product.Cdn + path;
		};

		if (self.Items().length === 0) {
			$w(".summaryheader-content.wd-widget").parent().addClass("empty");
		} else {
			$w(".summaryheader-content.wd-widget").parent().removeClass("empty");
		}

	};

	$.widget('wd.CheckoutBasketSummaryHeader', $.wd.widget, {
		_create: function() {
			var widget = this,
				$w = this.getContext(),
				//cache = $w('input[name="widget-cache-strategy"]').val(),
				cache = 'Cached',
				initialized = false;

			if (browsingContext.Common.hasOwnProperty('CacheSettings')) {
				cache = copyObject(browsingContext.Common.CacheSettings.CacheStrategy);
			}

			if ($w().hasClass('size-by-item')) {
				widget.options.SizeByItemQuantity = true;
			}

			widget.enableCdn = false;
			if (browsingContext.Common.ImagesPath.Product.Cdn != browsingContext.Common.ImagesPath.Product.Match) {
				widget.enableCdn = true;
			}

			// $w('.go-to-basket, .go-to-checkout').on('click', function() {
			// 	location.href = $(this).attr('data-href');
			// });
			$('body').on('click', '.wd-checkout-basket-summaryheader [data-href]', function() {
				location.href = $(this).attr('data-href');
			});

			if ($w().hasClass('wd-ko')) {
				// Nova renderização usando KO
				if (browsingContext.Common.ready) {
					if (!initialized) {
						initialized = true;
						widget.reload(cache);
					} else {
						ko.postbox.publish("/wd/summaryheader/context/ready", "");
					}
				} else {
					$.unsubscribe('/wd/browsing/context/ready');
					$.subscribe('/wd/browsing/context/ready', function() {
						if (!initialized) {
							initialized = true;
							widget.reload(cache);
							//console.log('@Summaryheader -  rodou via subcribe Summaryheader');
						}
					});
				}

				$.subscribe('/wd/browsing/context/ready', function() {
					if (!initialized) {
						initialized = true;
						widget.reload(cache);
						//console.log('@Summaryheader -  rodou via subcribe Summaryheader');
					}
				});

			} else {
				// Modo antigo, legado
				var timer = $w('input[name="widget-reload-timer"]').val();

				if (cache != 'Disabled') {
					setTimeout(function() {
						widget.reloadAjax();
					}, 100); //primeira atualização/ pra limpar o cache
					setInterval(function() {
						widget.reloadAjax();
					}, timer || 20 * 60 * 1000); //caso expire a seção (20 minutos)
				} else {
					if ($w('input[name="basketSize"]').val() == 0)
						$w('.go-to-checkout').hide();
				}

				/* funciona apenas dentro do basket */
				var reloadAjax = function() {
					//widget.reload();
					widget.reloadAjax();
				};
				widget.unsubscribe('/checkout/basket/changed', reloadAjax);
				widget.subscribe('/checkout/basket/changed', reloadAjax);
				/* widget basket_v2 */
				$.unsubscribe('/wd/browsing/context/common/basket/updated', reloadAjax);
				$.subscribe('/wd/browsing/context/common/basket/updated', reloadAjax);
			}

			$.subscribe('/wd/browsing/context/ready', function() {
				ko.postbox.publish("/wd/summaryheader/context/ready", "");
			});

		},
		reload: function() {
			var widget = this,
				$w = this.getContext();

			if (browsingContext.Common.hasOwnProperty('Basket') || browsingContext.Page.hasOwnProperty('Basket')) {
				var koElement = widget.element[0];
				ko.cleanNode(koElement);
				ko.applyBindings(new viewModel(widget, $w), koElement);
			} else {
				if ($w('input[name="basketSize"]').val() == 0) {
					$w('.go-to-checkout').hide();
					$w(".summaryheader-content.wd-widget").parent().addClass("empty");
				} else {
					$w(".summaryheader-content.wd-widget").parent().removeClass("empty");
				}
			}

			return true;
		},

		// LEGACY
		reloadAjax: function() {
			var widget = this,
				$w = this.getContext(),
				o = this.options,
				b = browsingContext.Common.Urls.BaseUrl;
			//b = $w('input[name="widget-base-url"]').val() || '/';

			if (b != undefined) {
				$.ajax({
					url: b + 'widget/browsing_basket_summary',
					type: 'get',
					data: {
						nocache: Math.floor(Math.random() * 11000000000),
						Template: o.Template,
						TextLoading: o.TextLoading,
						// Todo pegar do contexto JS
						MinQuantityPurchasable: $w('input[name="widget-min-qty-purchasable"]').val()
					},
					dataType: 'html',
					cache: false,
					success: function(response) {
						$w('.basket-size').html($('.basket-size', response).html());
						$w('.subtotal .value').first().html($('.subtotal .value', response).first().html());
						$w('.wd-content').html($('.wd-content', response).html());
						$w('.basket-size-wrapper').show();

						if ($('input[name="basketSize"]', response).val() == 0)
							$w('.go-to-checkout').hide();

						if ($('.minimum-quantity-box', response).size() != 0) {
							if ($w('.minimum-quantity-box').size() != 0) {
								$w('.minimum-quantity-box').addClass('visible').html($('.minimum-quantity-box', response).html());
							} else {
								$w('a').first().after($('.minimum-quantity-box', response));
							}
						} else {
							$w('.minimum-quantity-box').remove();
						}
					}
				});
			}
		}

	});

	// Defaults
	$.extend($.wd.CheckoutBasketSummaryHeader.prototype.options, {
		SizeByItemQuantity: false,
		Template: 'wd.checkout.basket.summaryheader.template',
		TextLoading: 'carregando...'
	});

})(jQuery, window, document, ko);

}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/marketing.banner/Scripts/wd.marketing.banner.js*/
try{(function($, window, document, undefined) {
	(function($) {

		$.fn.shuffle = function() {

			var allElems = this.get(),
				getRandom = function(max) {
					return Math.floor(Math.random() * max);
				},
				shuffled = $.map(allElems, function() {
					var random = getRandom(allElems.length),
						randEl = $(allElems[random]).clone(true)[0];
					allElems.splice(random, 1);
					return randEl;
				});

			this.each(function(i) {
				$(this).replaceWith($(shuffled[i]));
			});

			return $(shuffled);

		};

	})(jQuery);

	$.widget('wd.MarketingBanner', $.wd.widget, {
		_create: function() {
			var widget = this,
				o = this.options,
				$w = this.getContext();

			if ($w(".js-positionID").length) {
				widget.reload();
			}

			if ($w().hasClass('slider') && ($w('.banner-wrapper').length > 1)) {
				//widget.bgPreLoader();
				Async(function(){widget.slider()})();
			} else {
				if ($w().hasClass('slider') && ($w('.banner-wrapper').length == 1)) {
					$w().removeClass('slider');
				}
			}

			// CORE-4685
			//widget.datasource(this.options.datasource);

		},
		// datasource: function(ds) {
		// 	var widget = this,
		// 		$w = this.getContext();
		// 	widget.options.datasource = ds;

		// 	$('.banner-swf', widget.element).each(function() {
		// 		var container = $(this);

		// 		var bID = container.attr('id').replace('banner-swf-', ''); //Remove prefixo
		// 		var b = $w('#banner-' + bID).data('banner');

		// 		var options = {
		// 			quality: 'high',
		// 			wmode: 'transparent',
		// 			scale: 'noscale',
		// 			allowDomain: '*',
		// 			allowScriptAccess: true,
		// 			allowFullScreen: true,
		// 			menu: false,
		// 			swf: b.BannerPath,
		// 			movie: b.BannerPath,
		// 			width: b.Width,
		// 			height: b.Height
		// 		};

		// 		if (b.BackgroundHexa !== null && b.BackgroundHexa !== '')
		// 			options.bgcolor = '#' + b.BackgroundHexa;

		// 		container.fadeOut('fast', 'swing', function() {
		// 			container.flash(options);
		// 			container.css('background', 'none').fadeIn('slow', 'swing');
		// 		});
		// 	});

		// },
		reload: function() {
			var widget = this,
				$w = this.getContext(),
				o = this.options,
				b = $w('input[name="widget-base-url"]').val();

			$.ajax({
				url: b + 'Widget/marketing_banner',
				type: 'get',
				data: {
					PositionId: $w(".js-positionID").val(),
					ContextId: $w(".js-contextID").val(),
					Context: $w(".js-context").val(),
					IsCacheable: 'True'
				},
				dataType: 'html',
				cache: false,
				success: function(response) {
					var x = response;

					if ('sliderTimer' in o)
						clearInterval(o.sliderTimer);
					// $w('.basket-size').html($('.basket-size',x).html());
					$w().html($(x).html());

					if ($w().hasClass('slider') && ($w('.banner-wrapper').length > 1))
						widget.slider();
					//$w('.basket-size-wrapper').show();
				}
			});
		},
		bgPreLoader: function() {
			var widget = this,
				o = this.options,
				$w = this.getContext();
			$w(".banner-wrapper").each(function(index) {
				var img = ($(this).css('background-image'));
				if (img != 'none') {
					var image = new Image();
					img = img.replace('url("', '').replace('")', '');
					image.src = img;
					//console.log('img',img);
					//console.log('image',image);
				}

			});

		},
		slider: function() {
			var widget = this,
				o = this.options,
				$w = this.getContext();

			Async(function() {
				// Random / Sort das imagens com mesmo peso(data-weight)
				var WeightCtrl = [];
				$w('div.banner-wrapper').each(function() {
					var $this = $(this),
						thisWeight = $this.attr('data-weight');
					if (WeightCtrl.indexOf(thisWeight) == -1) {
						WeightCtrl.push(thisWeight);
						var $elems = $w('div.banner-wrapper[data-weight="' + thisWeight + '"]');
						if ($elems.length > 1) {
							$elems.shuffle();
						}
					}
				});

			})();
			$w('div.banner-wrapper').first().addClass('banner-show');

			Async(function() {
				//atualiza as options

				// var $json = JSON.parse($w().attr('data-slider')) || {};
				var $json = $.parseJSON($w().attr('data-slider')) || {};
				if ($json.sliderDelay)
					o.sliderDelay = $json.sliderDelay;
				if ($json.sliderFadeDelay)
					o.sliderFadeDelay = $json.sliderFadeDelay;

			})();

			Async(function() { //ajusta heights e seta maior height como tamanho do slider
				var h = 0;
				$w('.banner-wrapper').each(function(i) {
					var $this = $(this);
					$this.show();
					if ($this.height() > h)
						h = $this.height();

					//CORE-4890 - antigo
					// var bg = $(this).css('background-color');
					// $(this).removeAttr('style');
					// $(this).css('background-color',bg);
					// if (i && $.browser.msie) $(this).hide(); //compensar o css:nth-child ausente nos IE
					// end antigo

					var bg = $this.css('background-image'),
						bg_color = $this.css('background-color');
					$(this).removeAttr('style');
					$(this).css('background-image', bg).css('background-color', bg_color);

				});
				$w().css({
					height: h,
					lineHeight: h + 'px'
				});
			})();

			Async(function() { //adiciona controle de slides
				var $html = '<ul class="slider-controller">';
				$w('.banner-wrapper').each(function(i) {
					$html += '<li>' + (i + 1) + '</li>';
				});
				$html += '</ul>';
				$w().append($html);
				$w('.slider-controller li').first().addClass('current');
				$w('.slider-controller li').click(function() {
					changeBanner($(this).index());
				});
			})();

			var changeBanner = function($toIndex) {
				var $cur = $w('.banner-wrapper:visible'),
					$to = (
						$toIndex !== undefined ?
						$w('.banner-wrapper').eq($toIndex) :
						($cur.next('.banner-wrapper').length ?
							$cur.next('.banner-wrapper') :
							$cur.siblings('.banner-wrapper').first()
						)
					);

				$cur.animate({
					opacity: 0
				}, o.sliderFadeDelay, function() {
					$(this).removeClass('banner-show');
					if ($w('.slider-controller').length) {
						$w('.slider-controller li').removeClass('current').eq($w('.banner-wrapper').index($to)).addClass('current');
					}
					$to.addClass('banner-show');
					$to.animate({
						opacity: 1
					}, o.sliderFadeDelay);
				});
			};
			var startTimer = function() {
				if (o.sliderTimer) {
					clearInterval(o.sliderTimer);
				}
				o.sliderTimer = setInterval(changeBanner, o.sliderDelay);
			};
			startTimer();

			//comportamento de parar o slider com o mouse em cima
			$w().on({
				mouseenter: function() {
					clearInterval(o.sliderTimer);
				},
				mouseleave: function() {
					startTimer();
				}
			});

		}

	});

	$.extend($.wd.MarketingBanner.prototype.options, {
		sliderDelay: 7000,
		sliderFadeDelay: 300
	});
})(jQuery, window, document);

}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/browsing.modal/Scripts/wd.browsing.modal.js*/
try{;
(function($, window, document, undefined) {
	var noOp = $.noop;
	var _PlaceHolder = '<span class="the-modal-placeholder"></span>';
	$.widget('wd.BrowsingModal', $.wd.widget, {
		// Create
		_create: function() {
			var $widget = this,
				$w = $widget.getContext(),
				$primaryModal = $("#mainModal"),
				$auxiliaryModal = $("#auxiliaryModal");

			/* Caso o widget esteja na página, ele substiui o app.modal */
			app.tools.modal = function(options) {
				options = options || {};
				options.width = undefined;
				options.height = undefined;
				$.publish('browsingModal/openMain/', options);
			};
			/* Caso o widget esteja na página, ele substiui o app.modal */
			app.modal = app.tools.modal;
			app.closeModal = app.tools.closeModal = $.modal().close;

			/* Caso o widget esteja na página, ele substiui o app.modal */
			$.wd.widget.prototype.modal = app.tools.modal;
			/* Caso o widget esteja na página, ele substiui o widget.alert */
			$.wd.widget.prototype.alert = function(msg, type, options) {
				var $type = 'alert-' + (type === undefined ? 'warning' : type),
					$el = '<div class="alert ' + $type + '"><div class="message">' + msg + '</div></div>';
				if (window.browsingModal == "true" || window.browsingModal == true) {
					options.width = undefined;
					options.height = undefined;
					options.html = $el;
					$.publish('browsingModal/openMain/', options);
				} else {
					this.modal($.extend({
						element: $el
					}, options));
				}
			};
			$.wd.widget.prototype.error = function(options) {
				$.wd.widget.prototype._opendialog(options);
			};

			$.wd.widget.prototype.confirm = function(options) {
				$.wd.widget.prototype._opendialog(options);
			};

			$.wd.widget.prototype.success = function(options) {
				$.wd.widget.prototype._opendialog(options);
			};

			$.wd.widget.prototype.warn = function(options) {
				$.wd.widget.prototype._opendialog(options);
			};

			$.wd.widget.prototype.dialog = function(options) {
				$.wd.widget.prototype._opendialog(options);
			};

			/* Caso o widget esteja na página, ele substiui o widget._opendialog */
			$.wd.widget.prototype._opendialog = function(options) {
				//console.log('opendialog',this.options, options);
				var $html = $(this.options.dialog.html);
				$html.find('.message').html(options.message);
				$.each(options.buttons || this.options.dialog.buttons, function() {
					var handler = function() {};
					if (typeof this.onclick === "function")
						handler = this.onclick;
					var bt = $('<button class="' + this['class'] + '">' + this.label + '</button>').click(function() {
						handler($.modal);
					});
					$html.find('.button-wrapper').append(bt);
				});
				options.width = undefined;
				options.height = undefined;
				options.html = $html;
				$.publish('browsingModal/openMain/', options);
			};

			/* função para controlar a modal
			 * modal: tipo: Elemento jQuery - Se modal princial ou auxiliar, nunca é passado no publish
			 * html: tipo: Elemento jQUery - html do conteúdo para abrir na modal
			 * customClass: tipo: string - custom class para a modal
			 * onOpenFunction: tipo: function - função para rodar após carregar o html da modal
			 * onCloseFunction: tipo: function - função para rodar após fechar a modal
			 * width: tipo: string - largura da moda,l caso não setado por css
			 * height: tipo: string - altura da modal, caso não setado por css
			 */
			//modal, html, customClass, onOpenFunction, onCloseFunction, width, height, element
			function modalControl(options) {
				var onOpen = options.onOpenFunction || noOp,
					onComplete = options.onComplete || noOp,
					cClass = options.customClass || options.className || " ",
					Modal = options.modal || $primaryModal,
					closeModal = options.onCloseFunction || options.onClosed || noOp,
					//
					// width      = options.width || Math.max(200, $(options.element).width()),
					// height     = options.height || ( $(options.element).height() );
					width = options.width || "auto",
					height = options.height || "auto",

					href = options.href || undefined,
					onCleanup = options.onCleanup || noOp;
				// html       = options.element || options.html || undefined;
				//Abre a modal
				Modal.modal().open({
					//Abre a modal com o html passado
					onOpen: function(el, opt) {
						el.find(".the-modal .the-modal-container").empty();

						//el é o html da modal aberta
						//procura pelo wrapper ".the-modal" e passa o tamanho se for setado
						//caso contrário pega o tamanho default do css do elemento que foi copiado
						el.find(".the-modal").addClass("putted-sizes").css({
							"max-width": isNaN(width) ? width : width + "px",
							"max-height": isNaN(height) ? height : height + "px"
						});

						options.hrefAjax = options.hrefAjax || false;

						options.returnToOrigin = false;
						options.$origin = null;

						$('.the-modal').addClass('opened');

						//procura pelo wrapper "the-modal" e joga o conteúdo da modal lá dentro
						if (options.hrefAjax && options.href !== undefined) { //app.log("Ajax",options);
							$.ajax({
								url: options.href,
								type: 'get',
								success: function(html) {
									el.find(".the-modal .the-modal-container").append(html);
									$('.the-modal').addClass('populated');
									//roda uma função para o conteúdo passado, caso necessário.
									$.publish('browsingModal/centerModal/', {
										el: el
									});
								}
							});
						} else {
							if (typeof(options.href) == "string") { //app.log("iframe",options)
								el.find(".the-modal .the-modal-container").css({
									overflow: 'hidden'
								}).append('<iframe id="iframe-modal" src="' + options.href + '" />');
								$('.the-modal').addClass('populated with-iframe');
								if (height === null) {
									$.publish("browsingModal/resizeModal/Height", {
										height: $("#iframe-modal").contents().find("html").height()
									});
								}
							} else if (options.html !== undefined) { //app.log("html",options)
								el.find(".the-modal .the-modal-container").append(options.html);
								$('.the-modal').addClass('populated');
								//roda uma função para o conteúdo passado, caso necessário.
								$.publish('browsingModal/centerModal/', {
									el: el
								});
							} else if (options.element !== undefined) { //app.log("options.element",options)
								// os elementos da modal precisam ser mantidos para nao perder os eventos nem o scopo no knockout
								// selecionado todos os filhos do seletor
								//var origin = $(options.element);
								//el.find(".the-modal .the-modal-container").append( origin.find(">*") ).attr('data-origin',origin.selector);

								if (options.element.length && options.element[0].tagName == "SCRIPT") {
									el.find(".the-modal .the-modal-container").html(options.element[0].innerHTML);
								} else {
									options.returnToOrigin = true;
									// fix: correção para não perder os binds, legacy colorbox
									if (typeof(options.element) == 'object') {
										options.element.after(_PlaceHolder);
										options.$origin = options.element;
										el.find(".the-modal .the-modal-container").append(options.element);
									} else {
										//el.find(".the-modal .the-modal-container").html($(options.element)[0].outerHTML);
										var $element = $(options.element),
											$modalContainer = el.find(".the-modal .the-modal-container");
										options.$origin = $element;
										$element.after(_PlaceHolder);
										// el.find(".the-modal .the-modal-container").append($element);
										$modalContainer[0].appendChild($element[0]);
									}
								}
								$.publish('browsingModal/centerModal/', {
									el: el
								});
								$('.the-modal').addClass('populated');
								//roda uma função para o conteúdo passado, caso necessário.
							}
						}

						//publica um evento para quando a modal for aberta(Só por precausão mesmo)
						$.publish('browsingModal/opened', {
							el: el,
							opt: options
						});

						onOpen(el, opt);
						onComplete(el, opt);
					},
					onClose: function(el, opts, close) {

						if (options.hasOwnProperty('returnToOrigin') && options.returnToOrigin && options.hasOwnProperty('$origin') && options.$origin) {
							var $placeholder = $('.the-modal-placeholder');
							//console.log('el', el, 'options.$origin', options.$origin);

							//$('.pht')[0].appendChild(options.$origin[0]);
							//$placeholder.parent()[0].appendChild(options.$origin[0]);
							$placeholder.replaceWith(options.$origin);
						}

						// devolve o conteudo da modal para o seu local de origem
						//var container = el.find(".the-modal .the-modal-container");
						//$(container.attr('data-origin')).append(container.find(">*"));

						//console.log('onClose', el, options, opts, close);

						//roda uma função para depois de fechar a modal, caso necessário.
						closeModal(el, opts, close);
						onCleanup(el, opts, close);
						$('.the-modal').removeClass('opened populated with-iframe');

						//publica um evento para quando a modal for fechada(Só por preucausão mesmo)
						$.publish('browsingModal/closed', {
							el: el,
							options: opts,
							close: close
						});
					},
					//Classe do overlay da modal defaultClass + customClass
					overlayClass: 'themodal-overlay ' + cClass,
					//Classe do body da página defaultClass + customClass
					lockClass: 'themodal-lock ' + cClass,
					closeOnEsc: options.closeOnEsc,
					closeOnOverlayClick: options.closeOnOverlayClick
				});
			}

			//Bind de close da modal.
			$('.the-modal .close').on('click', function(e) {
				//e.preventDefault();
				//fecha modal;
				$.modal().close();
				return false;
			});

			$.subscribe('browsingModal/openDialog/', function(e, args) {
				$.wd.widget.prototype._opendialog(args);
			});

			//Subscribe para abrir a primeira modal
			$.subscribe('browsingModal/openMain/', function(e, args) {
				//função que controla a modal
				$.extend(args, {
					/*onOpenFunction: function() {
						$('.the-modal').addClass('opened');
					},
					onCloseFunction: function() {
						$('.the-modal').removeClass('opened');
					},*/
					modal: $primaryModal
				});
				modalControl(args);
				setTimeout(function() {
					$primaryModal.addClass('visible');
					$.publish('browsingModal/centerModal/');
				}, 50);
			});

			//Subscribe para abrir a primeira modal
			$.subscribe('browsingModal/updateMain/', function(e, args) {
				$('#mainModal').removeAttr('style').parent().addClass(args.customClass);
				$('#mainModal .the-modal-container').hide().html(args.html).fadeIn();
			});

			//Subscribe para abrir a modal auxiliar
			$.subscribe('browsingModal/openAux/', function(e, args) {
				$.modal().close();
				$.extend(args, {
					modal: $auxiliaryModal
				});
				//função que controla a modal
				modalControl(args);
			});

			$.subscribe('browsingModal/centerModal/', function(e, args) {
				var w = $(window),
					modal = $(".the-modal"),
					overlay = $('.themodal-overlay'),
					modContain = modal.find('.the-modal-container'),
					heightViewPort = w.height(),
					heightElement = modContain.outerHeight(),
					styles = {};
				overlay.removeClass('modal-oversized');
				if (heightViewPort > heightElement && modal.css('position') === 'absolute') { /// modal menor que a tela
					styles = {
						'margin-top': ((heightElement / 2)) * -1
					};
				} else {
					styles['margin-top'] = 0;
					styles.top = '';
					overlay.addClass('modal-oversized');
				}
				// var heightElement = args.el.find(".the-modal .the-modal-container").outerHeight();
				modal.css(styles);
			});

			//Subscribe para resize de height
			$.subscribe('browsingModal/resizeModal/Height', function(e, args) {
				var finalHeight = args.height || 0;
				$('.the-modal').css("max-height", finalHeight + "px");
				// $('.the-modal:visible').each(function(i,el){
				// 	if($(el).hasClass("with-iframe")){
				// 		finalHeight = args.height;
				// 	}else{
				// 		finalHeight = args.height;
				// 	}
				// 	$(el).css({
				// 		"max-height":finalHeight+"px"
				// 	});
				// });
			});

			//Subscribe para resize de width
			$.subscribe("browsingModal/resizeModal/resizeWidth", function(e, args) {
				var finalWidth = 0;
				$('.the-modal:visible').each(function(i, el) {
					if ($(el).hasClass("with-iframe"))
						finalWidth = args.width || $("#iframe-modal").contents().find("html").width();
					else
						finalWidth = args.width || "";
					$(el).css({
						"max-width": finalWidth + "px"
					});
				});
			});

			$.subscribe('browsingModal/updateModal/', function(e, args) {
				if (args !== undefined)
					$('.the-modal:visible').css(args);
			});

			$.subscribe('browsingModal/closeModal/', function(e, args) {
				//fecha modal;
				$.modal().close();
				return false;
			});

			/*
			 * Usage
			 *	$.publish('browsingModal/openMain/', {
			 *		html: widget.element.find('.modal')[0].outerHTML,
			 *		customClass: "wd-widget-name-modal-eg",
			 *		onOpenFunction:function(){console.log(opened);},
			 *		onCloseFunction:function(){} || false
			 *		width: "300px",
			 *		height: "auto"
			 *	});
			 */
		}
	});

	//options defaults
	$.extend($.wd.BrowsingModal.prototype.options, {

	});

})(jQuery, window, document);

}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/product.search/Scripts/wd.product.search.js*/
try{;
(function($, window, document, undefined) {
	// var toFixed = function(num, dec) {
	//     var $result = (Math.round(num * Math.pow(10, dec)) / Math.pow(10, dec)),
	//         $arr = ($result + []).split('.'),
	//         $int = $arr[0] + '.',
	//         $dec = $arr[1] || '0';
	//     return ($int + $dec + (Math.pow(10, (dec - $dec.length)) + []).substr(1));
	// };

	var cache = {
		suggestionPopular: null
	}

	$.widget('wd.ProductSearch', $.wd.widget, {
		_create: function() {
			var $widget = this,
				$w = $widget.getContext(),
				$this = $w(),
				$input = $w('.search-field'),
				$form = $input.closest('form'),
				$suggestions = {
					view: $w('.suggestion-box'),
					template: $w('.suggestion-template').text()
				},
				urlBase = browsingContext.Common.Urls.BaseUrl;

			// no ie pegar conteudo de ums script atraves do .text() da erro, temos que usar .html()
			//var $varjson =$.parseJSON( $w('script[type=jsoptions]').text());
			var $varjson = $.parseJSON($w('script[type=jsoptions]').html());
			//alert($varjson);

			$widget.options = $varjson;

			var suggestionFocus = false;
			$suggestions.view
				.mouseover(function() {
					suggestionFocus = true;
				})
				.mouseout(function() {
					suggestionFocus = false;
				});

			function closeMetadataSerach() {
				$w('.metadata-search-open-checkbox').prop('checked', false);
			}

			$this.on('change', '.metadata-search-open-checkbox', function() {
				$this.on('click', function() {
					closeMetadataSerach();
					$this.off('click', this);
				});
			});

			$w('.metadata-search')
				.on('change', '.dropdown-options input[type=radio]', function(e) {
					var $this = $(this);
					var text = $this.next('span').text();
					var $origin = $(e.delegateTarget);
					if ($this.val() !== '') {
						$('.selected', $origin).html(text);
					} else {
						$('.selected', $origin).html('');
					}
					closeMetadataSerach();
					$input.focus();
				});

			$input
				.focus(function() {
					$suggestions.view.removeClass('hide');
					closeMetadataSerach();
					$widget.doSuggestions({
						widget: $widget,
						delay: $widget.keystrokeDelay,
						e: null,
						key: null,
						text: $(this).val(),
						suggestions: $suggestions
					});
				})
				.blur(function() {
					if (!suggestionFocus) {
						$suggestions.view.addClass('hide');
					}
				})
				.keydown(function(e) {

					var $key = e.which,
						$arrowKeys = {
							38: 1, //up arrow
							40: 1 //down arrow
						};

					if ($arrowKeys[$key]) {
						e.preventDefault();
						$widget.navigateSuggestions({
							37: -1,
							38: -1,
							39: 1,
							40: 1
						}[$key]);
					}
					/*else if ($key === 13) {
						var $val = $(this).val(),
							$mask = /\(produto:\/url(-[a-zA-z0-9]+)+\)/,
							$pmask = /\/url(-[a-zA-z0-9]+)+/,
							$match = $val.match($mask);
						if ($match.length) {
							e.preventDefault();
							window.location.href = $match[0].match($pmask)[0];
						}
					}*/
				})
				.keyup(function(e) {
					var $key = e.which,
						$serviceKeys = {
							9: 1, //tab
							13: 1, //enter
							16: 1, //shift
							17: 1, //ctrl
							18: 1, //alt
							19: 1, //pause/break
							20: 1, //caps lock
							27: 1, //escape
							33: 1, //page up
							34: 1, //page down
							35: 1, //end
							36: 1, //home
							37: 1, //left arrow
							38: 1, //up arrow
							39: 1, //right arrow
							40: 1, //down arrow
							45: 1, //insert
							91: 1, //left window key
							92: 1, //right window key
							112: 1, //f1
							113: 1, //f2
							114: 1, //f3
							115: 1, //f4
							116: 1, //f5
							117: 1, //f6
							118: 1, //f7
							119: 1, //f8
							120: 1, //f9
							121: 1, //f10
							122: 1, //f11
							123: 1, //f12
							144: 1, //num lock
							145: 1 //scroll lock
						};

					if ($input.val()) $input.removeClass('search-field-empty');

					if (!$serviceKeys[$key]) {
						if ($form.attr('data-url-mapper') === 'true') {
							$widget.changeAction($form, $input, urlBase);
						}
					}

					var keysDontApply = [37, 38, 39, 40];

					if ($.inArray($key, keysDontApply) === -1) {
						$widget.doSuggestions({
							widget: $widget,
							delay: $widget.keystrokeDelay,
							e: e,
							key: $key,
							text: $(this).val(),
							suggestions: $suggestions
						});
					}
				});

			var linxImpulseByGroup = browsingContext.Common.Config.Platform.LinxImpulseByGroup;
			if (linxImpulseByGroup &&
				linxImpulseByGroup.IsEnabled &&
				window.location.search == '?t=' &&
				!$input.val()) {
				$input.addClass('search-field-empty');
				$input.focus();
			}

			//Enter no sugestion #CORE-8419
			$form.submit(function() {
				var linxImpulseByGroup = browsingContext.Common.Config.Platform.LinxImpulseByGroup;
				if (linxImpulseByGroup &&
					linxImpulseByGroup.IsEnabled &&
					!$input.val()) {
					$input.addClass('search-field-empty');
					$input.focus();
					return false;
				}

				if (!$form.hasClass('by-suggestion') && $widget.doMapperIsValid()) {
					$widget.changeAction($form, $input, urlBase);
				}
				window.location.href = browsingContext.Common.Urls.BaseUrl + $form.attr('action').replace('/', '');
			});
		},

		keystrokeDelay: 200,
		timer: null,
		ajaxHandler: {
			abort: function() {}
		},

		doMapperIsValid: function() {
			var $widget = this,
				$w = $widget.getContext(),
				$input = $w('.search-field'),
				$form = $input.closest('form');

			if ($form.data('url-mapper') && $input.val()) {
				return true;
			}
			return false;
		},

		changeAction: function(form, input, baseUrl) {
			if ($('.nav-indexable.nav-current', '.suggestion-box-wrapper').length) {
				form.attr('action', $('.nav-indexable.nav-current', '.suggestion-box-wrapper').data('url')).addClass('by-suggestion');
			} else {
				form.attr('action', baseUrl + encodeURIComponent(input.val()).replace(/%20/g, '-'));
			}
		},

		doSuggestions: function(options) {
			var $widget = options.widget,
				$suggestions = options.suggestions,
				$text = options.text,
				$delay = options.delay,
				$w = $widget.getContext(),
				$input = $w('.search-field'),
				$o = $widget.options.suggestions,
				b = browsingContext.Common.Urls.BaseUrl;
			// cdnUrl = $w('input[name="widget-cdn-url"]').val();

			//cancela o ultimo pedido
			clearTimeout($widget.timer);
			$widget.ajaxHandler.abort();

			//cria um pedido novo
			if ($text.length <= 1) {

				var linxImpulseByGroup = browsingContext.Common.Config.Platform.LinxImpulseByGroup;
				if (linxImpulseByGroup && linxImpulseByGroup.IsEnabled) {

					if (cache.suggestionPopular !== null) {
						$suggestions.view.html(cache.suggestionPopular);
						return;
					}

					$.ajax({
						url: browsingContext.Common.Urls.BaseUrl + 'Shopping/SearchSuggest/Popular',
						type: 'POST',
						success: function(response) {

							if (!response || !response.Terms || !response.Terms.length) {
								return;
							}

							var termsList = response.Terms;
							var templateListWrapper = $w('.template-suggestion-popular-list').html();
							var templateListItem = $w('.template-suggestion-popular-items').html();

							var html = '';
							var templateListItemCompiled = _.template(templateListItem);
							_(termsList).each(function(e, i) {
								html += templateListItemCompiled({
									term: e,
									ranking: i + 1
								});
							});
							html = _.template(templateListWrapper)({
								termsList: html
							});

							cache.suggestionPopular = html;

							// Verifica se ainda deve substituir o html do suggestions
							if ($w('.search-field').val().length <= 1) {
								$suggestions.view.html(html);
							}

						}
					});
				} else {
					$suggestions.view.html('');
				}

			} else {
				$widget.timer = setTimeout(function() {

					$text = $widget._executeSuggestCustomHandler($text) || $text;

					$widget.ajaxHandler = $.ajax({
						url: b + 'sugestao.partial',
						//url: b+'sugestao.json',
						type: 'GET',
						data: {
							t: $text,
							showCorrections: $o.showCorrections,
							TextDidYouMean: $o.TextDidYouMean,
							showTerms: $o.showTerms,
							showProducts: $o.showProducts,
							termsLimit: $o.termsLimit,
							productsLimit: $o.productsLimit,
							bannerTopSrc: $o.bannerTopSrc,
							bannerTopTargetBlank: $o.bannerTopTargetBlank,
							bannerTopUrl: $o.bannerTopUrl,
							bannerBottomSrc: $o.bannerBottomSrc,
							bannerBottomTargetBlank: $o.bannerBottomTargetBlank,
							bannerBottomUrl: $o.bannerBottomUrl

						},
						success: function(response) {

							$suggestions.view.html(response);

							$('.suggestion-correction', $suggestions.view).click(function(e) {
								var $t = $(this).attr('data-val');
								$input.val($t);
								$widget.doSuggestions({
									widget: $widget,
									delay: 1,
									e: e,
									key: null,
									text: $t,
									suggestions: $suggestions
								});
							});
							$('.suggestion-item', $suggestions.view).click(function() {
								if ($widget.doMapperIsValid()) {
									window.location.href = b + $(this).attr('data-term');
								} else {
									window.location.href = b + 'pesquisa?t=' + $(this).attr('data-term');
								}
								// window.location.href = b + 'pesquisa/' + $(this).attr('data-term');
							});
							$('.suggestion-product', $suggestions.view).click(function() {
								window.location.href = $(this).attr('data-url');
							});
							$('.target-blank', $suggestions.view).click(function() {
								window.open($(this).attr('href'));
							});
							$.publish('product/search/suggestions/result', $suggestions.view);
						}
					});

				}, $delay);
			}
		},
		nav: {
			index: -1
		},
		navigateSuggestions: function(key) {
			var $widget = this,
				$w = this.getContext(),
				$suggestions = $w('.suggestion-box'),
				$map = $('.nav-indexable', $suggestions),
				$input = $w('.search-field'),
				$form = $input.closest('form'),
				urlBase = browsingContext.Common.Urls.BaseUrl,
				$current = $map.filter('.nav-current');

			$widget.nav.index += key;

			if ($map.length === $widget.nav.index) {
				$widget.nav.index = 0;
			} else if ($widget.nav.index < 0) {
				$widget.nav.index = $map.length - 1;
			}
			//console.log('navigating', key, $next, $map.length, $current.index($map));
			$current.removeClass('nav-current');
			$current = $map.eq($widget.nav.index).addClass('nav-current');
			$input.val($current.attr('data-indexable'));
			if ($widget.doMapperIsValid()) {
				$widget.changeAction($form, $input, urlBase);
			}
		},
		registerSuggestSubmitHandler: function(handler) {
			var $widget = this;
			if (handler && typeof handler === 'function') {
				$widget.options.customSuggestSubmitHandle = handler;
			}
		},
		_executeSuggestCustomHandler: function(data) {
			var $widget = this;

			if ($widget.options.customSuggestSubmitHandle && typeof $widget.options.customSuggestSubmitHandle === 'function') {
				return $widget.options.customSuggestSubmitHandle(data);
			}

			return data;
		}
	});

	$.extend($.wd.ProductSearch.prototype.options, {

	});

})(jQuery, window, document);

}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/profile.login/Scripts/wd.profile.login.js*/
try{(function($, window, document, undefined) {

	$.widget('wd.ProfileLogin', $.wd.widget, {

		_base: '',
		_create: function() {

			var widget = this,
				$w = this.getContext(),
				cb = function() {
					if (location.href.indexOf('recuperarsenha') != -1)
						location.href = '/';
					else
						location.reload();
				};

			widget.subscribe('/login/cb', function(e, fn) {
				if (fn) {
					cb = fn;
				}
			});

			widget.subscribe('/login/showlogin', function(e, args) {
				if (args.hasOwnProperty('cb')) {
					cb = args.cb;
				}
				widget._showModalLogin();
			});

			var validateRules = $.extend(widget._buildKeyRules('Login.'), {
				'Login.Password': {
					required: true
				}
			});

			widget.validate($w('form.js-login').first(), {
				errorPlacement: widget.options.validate.errorFlyout,
				rules: validateRules,
				messages: {
					'Login.Email': {
						email: 'Informe um e-mail válido.'
					}
				},
				submitHandler: function(form) {
					widget._submit(form, cb);
				}
			});

			$w('.js-login-recoverpassword').click(function(e) {
				e.preventDefault();
				widget.modal({
					element: $('.wd-profile-login-recover-password:first'),
					'class': 'wd-profile-login',
					className: 'wd-profile-login-modal',
					onComplete: function($modal) {
						var $form = $('form.recover-form:visible', $modal);
						$w('.js-result').empty();

						var rules = widget._buildKeyRules(null, true);
						widget.validate($form, {
							rules: rules,
							submitHandler: function(form) {
								widget._submit(form);
							}
						});
					}
				});

			});
			widget._base = $w('input[name="widget-base-url"]').val();
			//console.log(this);
			$w('.profile-login-modalText').bind('click', function() {
				widget._showModalLogin();
			});

		},
		_buildKeyRules: function(prefix, force) {
			prefix = prefix || '';
			var rules = {};

			if (browsingContext.Common.Config.Profile.Account.IsDocumentNumberLoginEnabled ||
				force) {
				rules[prefix + 'Key'] = {
					required: true,
				}
			} else {
				rules[prefix + 'Email'] = {
					required: true,
					email: true
				}
			}

			return rules;
		},
		_showModalLogin: function() {

			var widget = this,
				$w = this.getContext();
			if ($w('.profile-login-modal').length) {
				widget.modal({
					element: $w('.profile-login-modal'),
					'class': 'wd-profile-login',
					className: 'wd-profile-login-modal'
				});
			}
			widget.validate($('.profile-login-modal.modal form'), {
				errorPlacement: widget.options.validate.errorFlyout,
				rules: {
					'Login.Email': {
						required: true,
						email: true
					},
					'Login.Password': {
						required: true
					}
				},
				messages: {
					'Login.Email': {
						email: 'Informe um e-mail válido.'
					}
				}
			});
			$('.profile-login-modal.modal .js-login-recoverpassword').click(function(e) {
				e.preventDefault();
				widget.modal({
					element: '.wd-profile-login-recover-password',
					className: 'wd-profile-login-recover-password-modal',
					onComplete: function($modal) {
						var $form = $('form.recover-form:visible', $modal);
						$w('.js-result').empty();
						widget.validate($form, {
							rules: {
								Key: {
									required: true,
									email: true
								}
							},
							submitHandler: function(form) {
								widget._submit(form);
							}

						});
					}
				});

			});
			$('.profile-login-modal.modal form').bind('submit', function() {
				var $form = $(this);

				if ($form.data('locked') == true)
					return false;

				$form.data('locked', true);
				$('.login-loading', $form).addClass('show');
				$.ajax({
					url: widget._base + 'Login.json',
					type: 'post',
					data: $(':input', $form).serialize(),
					success: function(response) {
						if (response.Response.IsValid) {
							$.publish('/login/success', {});
							$.colorbox.close();
						} else {
							$.publish('/login/error', {});
							$('.login-error-placeholder', $form).text(response.Response.Errors[0].ErrorMessage);
						}
					},
					error: function() {},
					complete: function() {
						$('.login-loading', $form).removeClass('show');
						$form.data('locked', false);
					}
				});

				return false;
			});

		},
		_executeRecaptcha: function($form, _submit, mustRetry) {
			var widget = this;
			var isRecoverPassword = $form.attr('action').indexOf('Login/RecoverPassword') > 0;

			var dispatchError = function(errorMsg) {
				widget.publish('login/recaptcha/errors', {
					error: errorMsg
				});
			};

			var showRecaptchaErrors = function() {
				widget.alert('O teste de recaptcha falhou, por favor tente novamente.', 'error', {
					'class': 'wd-profile-login-recover-password-response',
					className: 'wd-profile-login-recover-password-response-modal'
				});
			}

			var setRecaptchaValue = function(key) {
				var inputName = 'ReCaptchaToken';
				if (!isRecoverPassword) {
					inputName = 'Login.' + inputName;
				}

				var $currentInput = $form.find('[name="' + inputName + '"]');

				if ($currentInput.length) {
					$currentInput.val(key);
					return;
				}

				var rctInput = document.createElement('input');
				rctInput.type = 'hidden';
				rctInput.value = key;
				rctInput.name = inputName;

				$form.append(rctInput);
			};

			if (app.recaptcha.isActive === false) {
				_submit();
				return false;
			}

			var recaptchaAction = (isRecoverPassword) ? 'password_recovery' : 'login';
			app.recaptcha.execute(recaptchaAction)
				.then(function(key) {
					if (!key) {
						if (mustRetry === true) {
							widget._executeRecaptcha($form, _submit, false);
						} else {
							showRecaptchaErrors();
							dispatchError('Chave do captcha vazia - key: ' + key);
						}

						return;
					}

					setRecaptchaValue(key);

					setTimeout(function() {
						_submit();
					}, 200);
				})
				.fail(function() {
					showRecaptchaErrors();
				});
		},
		_submit: function(form, cb) {
			var widget = this,
				$form = $(form),
				$button = $('button[type="submit"]', $form);
			$load = $form.find('.load');

			$load.css('display', 'inline-block');
			$button.attr('disabled', true);

			//cb = cb || function(){};
			//console.log($form.serialize());
			var ajaxSubmit = function() {
				widget.ajax({
					url: $form.attr('action'),
					type: $form.attr('method'),
					data: $form.serialize(),
					dataType: 'json',
					success: function(data) {
						var url; // = data.Model.Url;
						if (data.hasOwnProperty('Model') && data.Model.hasOwnProperty('Url')) {
							url = data.Model.Url
						}
						var redirectToUrl = $form.find('[name="redirectToUrl"]').val();
						$button.removeAttr('disabled');
						if (data.Response !== undefined)
							data = data.Response;
						if (data.IsValid) {
							if (url && redirectToUrl == "true") {
								location.href = url;
								return true;
							}
							if (cb) {
								//widget.publish('/login/success', {});
								cb();
								$.colorbox.close();
							} else {
								widget._handleSuccess(data);
							}
						} else {
							widget._handleError(data);
							$load.hide();
						}
					},
					error: function(e) {
						$button.removeAttr('disabled');
						$load.hide();
						widget.alert('Ocorreu um erro, contate o suporte', 'error', {
							'class': 'wd-profile-login-recover-password-response',
							className: 'wd-profile-login-recover-password-response-modal'
						});
					}
				});
			};

			// || !browsingContext.Common.Config.General.Application.UseReCaptchaInLoginPage
			if (!app.recaptcha || !app.recaptcha.isActive) {
				ajaxSubmit();
				return false;
			}

			widget._executeRecaptcha($form, ajaxSubmit, true);

			return false;
		},
		_handleSuccess: function(response) {
			var widget = this,
				$w = this.getContext();
			widget.alert(response.Success || 'O e-mail com as instruções para redefinir a senha foi enviado com sucesso!', 'success', {
				'class': 'wd-profile-login-recover-password-response',
				className: 'wd-profile-login-recover-password-response-modal'
			});
		},
		_handleError: function(response) {

			var inputErrors = response.InputErrors,
				widget = this,
				$w = this.getContext(),
				$err = $('<div class="alert alert-error"><div class="message"></div></div>');
			if (inputErrors) {
				for (var i = 0, len = inputErrors.length; i < len; i++) {

					var errors = inputErrors[i].Errors;

					for (var k = 0, errorsLen = errors.length; k < errorsLen; k++) {
						$err.append('<div class="input-wrapper"><span>' + errors[k] + '</span></div>');
					}
				}
			} else if (response.hasOwnProperty('Errors') && response.Errors.length > 0) {
				var errors = response.Errors;
				//console.log(errors);
				for (var i = 0, len = errors.length; i < len; i++) {
					$err.append('<div class="input-wrapper"><span>' + errors[i].ErrorMessage + '</span></div>');
				}
			}
			$.publish('/profile/login/failed', {
				errors: errors,
				inputErrors: inputErrors
			});
			$(document).trigger('wdProfileLogin_failed');

			//$.colorbox.close();
			app.modal({
				html: $err.html(),
				width: "300px",
				height: "130px",
				'class': 'wd-profile-login-recover-password-response',
				className: 'wd-profile-login-recover-password-response-modal'
			});

		}
	});

})(jQuery, window, document);

}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/profile.login.oauth/Scripts/wd.profile.login.oauth.js*/
try{; (function($, window, document, undefined) {
	
	$.widget('wd.ProfileLoginOauth',  $.wd.widget, {
		
		// Create
	_create: function () {
			var $widget = this,
				$w = $widget.getContext(),
				$id = this.element,
				_window = {};
			
			$w('a.login-link').bind('click', function(e){ e.preventDefault(); });
			// Facebook
			$(document).on('click', '.loginFacebook', function (e) {
				_window = window.open( $w('input[name="widget-base-url"]').val() + 'Oauth/Facebook', 'Facebook_Login', 'width=950,height=550,scrollbars=yes,resizable=1');
			});
			// Twitter
			$(document).on('click', '.loginTwitter', function (e) {
				_window = window.open( $w('input[name="widget-base-url"]').val() + 'Oauth/Twitter', 'Twitter_Login', 'width=800,height=400,scrollbars=yes,resizable=1');
			});
			// Stelo
			$(document).on('click', '.loginStelo', function (e) {
				_window = window.open( $w('input[name="widget-base-url"]').val() + 'Oauth/Stelo', 'Stelo_Login', 'width=1024,height=640,scrollbars=yes,resizable=1');
			});
			
			$widget.subscribe('/OAuth/Provider/Success', function(e, result) {
				var obj = $.parseJSON(result);
				//var obj = JSON.parse(result);
				if(obj.IsUser)
				{
					_window.close();
					//var urlCallbackUser = $w('input[name="url-current"]').val();
					//window.location.href = urlCallbackUser;
					window.location.reload();
					return;
				}

				if(!obj.IsValid) {

					if ( obj.ModelName === "Facebook") {
						$("#iframe-login-facebook").remove();
						$("#iframe-facebook-content").html("<div style='float:left; margin:auto; color:red; font-size:12px; text-align:center; margin-top:40px;'>" + obj.Error);
					}
					else {
						//alert(obj.Error);
					}
					_window.close();
				}
				else {
					
					_window.close();
					var urlCallback = $w('input[name="url-callback"]').val();
					window.location.href = urlCallback + "?provider=" + obj.ModelName;
				}
			});
		}
	});

	//options defaults
	$.extend($.wd.ProfileLoginOauth.prototype.options, {
		
	});
})(jQuery, window, document);





		
	  
}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/profile.welcome.shopper/Scripts/wd.profile.welcome.shopper.js*/
try{(function($, window, document, undefined) {

	function KoModel() {
		var self = this;

		self.UI = {
			StatusWrapperClass: ''
		};

		self.UI.StatusWrapperClass = browsingContext.Common.Shopper.IsAuthenticated ? 'shopper-authenticated' : 'shopper-not-authenticated';
	}

	var wdMessages = {},
		wdContext = {};

	$.widget('wd.ProfileWelcomeShopper', $.wd.widget, {

		_create: function() {
			var widget = this,
				$w = widget.getContext(),
				//currentUrl = $w('[name="widget-current-url"]').val(),
				currentUrl = browsingContext.Common.Urls.CurrentUrl,
				href = $w('.sign-out').attr('href');

			//widget.messages = JSON.parse($w().attr('data-messages'));
			//widget.messages = $.parseJSON ($w().attr('data-messages'));
			widget.messages = wdMessages = $w().data('messages');
			widget.wdContext = wdContext = $w().data('js');

			// console.log("widget.wdContext welcomeshopper",widget.wdContext)

			widget.currentUrl = currentUrl;
			if (href) {
				$w('.sign-out').attr('href', href.replace('{CurrentUrl}', currentUrl));
				widget.randomNoCaheSignOut();
			}

			//cs = $w('input[name="widget-cache-strategy"]').val();
			var cs = copyObject(browsingContext.Common.CacheSettings.CacheStrategy);

			if ($w().hasClass('wd-ko')) {
				// Nova renderização usando KO
				if (cs != 'Disabled') {
					if (browsingContext.Common.ready) {
						widget.reload();
						//console.log('welcome shopper browsingContext.Common.ready', browsingContext.Common.ready);
					} else {
						browsingContext.queue.push({
							action: function() {
								widget.reload();
							}
						});
					}
					//widget.reload();
				} else {
					//ko.applyBindings(new widget.KoViewModel(), widget.element[0]);
					widget.KoApplyBindings();
				}

				$.subscribe('/login/success', function() {
					//console.log('pub login/success');
					widget.reload();
				});
			} else {
				// Modo antigo, legado
				if (cs != 'Disabled') {
					widget.reloadLegacy();
				}
				$.subscribe('/login/success', function() {
					//console.log('pub login/success');
					widget.reloadLegacy();
				});
			}

			var hoverTimer;

			$w().on({
				mouseenter: function(e) {
					// hack para previnir seleção de valor no hover da opção do autocomplete - chrome
					if (e.relatedTarget == null) return;

					clearTimeout(hoverTimer);
					if (!$(e.target).is('input') && !$w('.login-wrapper').hasClass('hover')) {
						hoverTimer = setTimeout(function() {
							$w('.login-wrapper').addClass('hover');
							$(".transparent-login-simple-top-click-to-leave").show();
						}, parseInt($w().attr('data-hovertimer')));
					}
				},
				mouseleave: function(e) {
					// hack para previnir seleção de valor no hover da opção do autocomplete - chrome
					if (e.relatedTarget == null) return;

					clearTimeout(hoverTimer);
					if ($w('.login-wrapper').hasClass('hover') && !$(e.target).is('input')) {
						hoverTimer = setTimeout(function() {
							$w('.login-wrapper').removeClass('hover');
						}, parseInt($w().attr('data-hovertimer')));
					}
				}
			}, '.login-wrapper');
		},
		randomNoCaheSignOut: function() {
			var widget = this,
				$w = widget.getContext(),
				href = $w('.sign-out').attr('href');
			if (href) {
				var concat = href.indexOf('?') != -1 ? '&' : '?';
				// foi trocado o parâmetro v por e , pois v conflitava com o split
				$w('.sign-out').attr('href', href + concat + 'e=' + Math.floor((Math.random() * 8999) + 1000)).addClass("put-pipe");
			}
		},
		KoViewModel: function() {
			var self = this;
			var balance = false;
			ko.utils.extend(self, new KoModel());

			self.messages = wdMessages;
			if (wdContext) {
				var nameTruncate = wdContext.NameTruncate || 30;
				nameTruncate = +nameTruncate;
			}
			var shortName = browsingContext.Common.Shopper.Name || "";
			if (nameTruncate !== 0 && shortName.length > nameTruncate - 3) {
				shortName = shortName.substring(0, nameTruncate) + "...";
			}
			// self.loggedText = self.messages.TextHello+" "+shortName;
			self.loggedText = ko.observable(self.messages.TextHello + " " + shortName);
			return self;
		},
		KoApplyBindings: function() {
			//console.log('rodou applyBindings', this, 'this.element', this.element, 'this.element[0]', this.element[0]);
			var widget = this;
			widget.element.removeClass('wd-hide');
			ko.applyBindings(new widget.KoViewModel(), widget.element[0]);
			widget.publish('/wd/profile/welcomeshopper/ready', {});
		},
		reload: function() {
			//console.log('welcomeShopper reload()');
			var widget = this,
				$w = this.getContext(),
				o = this.options,
				//b = $w('input[name="widget-base-url"]').val();
				b = browsingContext.Common.Urls.BaseUrl;

			if (b != undefined) {
				// console.log('widget.element', widget.element);
				widget.KoApplyBindings();
			};
		},
		reloadLegacy: function() {
			var widget = this,
				$w = this.getContext(),
				o = this.options,
				b = browsingContext.Common.Urls.BaseUrl;

			if (b != undefined) {
				widget.ajax({
					url: b + 'widget/browsing_welcome_shopper',
					type: 'get',
					data: $.extend({
						Template: o.Template
					}, widget.messages),
					dataType: 'html',
					cache: false,
					success: function(response) {
						$w('.widget-content').html(response);
						$w().removeClass('wd-hide');
						var href = $w('.sign-out').attr('href') || '';
						$w('.sign-out').attr('href', href.replace('{CurrentUrl}', widget.currentUrl));
						widget.randomNoCaheSignOut();
					}
				});
			};
		}

	});

	// Defaults
	$.extend($.wd.ProfileWelcomeShopper.prototype.options, {
		Template: 'welcome.shopper.data.template'
		/*,
				TextLoading: 'carregando...'*/
	});

})(jQuery, window, document);

}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/browsing.categorymenu/Scripts/wd.browsing.categorymenu.js*/
try{
}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/success.message/Scripts/wd.success.message.js*/
try{; (function ($, window, document, undefined) {

    $.widget('wd.SuccessMessage', $.wd.widget, {

        _create: function () {
            var widget = this,
                $w = this.getContext();
            widget.options.autoLoad = $w().attr("data-autoload");
            if (widget.options.autoLoad == "true") {
                widget.modal({
                    element: $w().clone().removeClass("displayNone"),
                    'class': 'wd-success-message',
                    className: 'wd-success-message-modal'
                });
            }else{
                $w().show();
            }
        }

    });

   // Defaults
   $.extend($.wd.SuccessMessage.prototype.options, {
   });
   

}) (jQuery, window, document);
}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/error.summary/Scripts/wd.error.summary.js*/
try{//
// Widget de criação de novo review
// Esse widget tem responsabilidade de mostrar o link para novo review e abrir a modal para o form
//
// Publish:
//

;
$.widget('wd.ErrorSummary', $.wd.widget, {

	_create: function() {

		var widget = this,
			$w = widget.getContext();

		// Se for popup, avisa a tela principal
		if (window && window.opener) {
			try {
				window.opener.$.publish('/Page/Error', $w);
			} catch (err) {}
		}
		// Se for a tela principal, recebe o evento
		if (window && window.opener == null) {
			widget.subscribe('/Page/Error', function(e, w) {
				widget.element.html(w.element.html());
			});

			widget.subscribe('/Page/Response', function(e, r) {
				if (r && !r.IsValid) {
					var htmlError = "";
					for (var i in r.Errors) {
						var err = r.Errors[i];
						if (!err.ErrorGroup || (err.ErrorGroup && err.ErrorGroup != null)) {
							htmlError = err.ErrorMessage || err.Message || "";
							break;
						}
					}
					if (htmlError != "") {
						widget.alert('<div class="erros" style="display:none;">Erro(s):</div><ul><li>' + htmlError + '</li></ul>', 'error', {
							className: "wd-error-summary-modal"
						});
					} else {
						var template = $("#ResponseErrorTmpl").html(),
							html = Mustache.render(template, r);
						widget.element.html(html);
						if ($w().attr('data-mode') === 'modal') {
							widget.alert(html, undefined, {
								className: "wd-error-summary-modal multi-error-modal"
							});
						} else {
							$('html, body').animate({
								scrollTop: 0
							}, 300);
						}
					}
				}
			});
		}

		if ($w().attr('data-mode') === 'modal') {
			setTimeout(function() {
				widget.publish('/Modal/Error', {
					error: $w('.error-summary-message').text()
				});
			}, 0);
			var errors = [];

			setTimeout(function() {
				$w('.error-summary-message').each(function() {
					errors.push($(this).html());
				});
				if (errors.length)
					widget.alert('<div class="erros" style="display:none;">Erro(s):</div><ul><li>' + errors.join('</li><li>') + '</li></ul>', 'error', {
						className: "wd-error-summary-modal"
					});
			}, 0);
		}
	}
});

}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/product.medias.displayer/Scripts/wd.product.medias.displayer.js*/
try{//
// Widget de medias displayer
// Esse widget tem responsabilidade de exibir a midia clicada e lançar os eventos (over, click)
//
// Publish:
//      /wd/product/medias/displayer/clicked { widget, index }
//      /wd/product/medias/displayer/changed { widget, index }
//      /wd/product/medias/displayer/mouseover { widget, index }
//      /wd/product/medias/displayer/mouseout { widget, index }
//      /wd/product/medias/displayer/mouseenter { widget, index }
//      /wd/product/medias/displayer/mouseleave { widget, index }
//
// Subscribe:
//      /wd/product/medias/displayer/changed
//
;
(function($, window, document, undefined) {

	// $('.wd-product-medias-displayer img').error(function () {
	// 	$(this).attr('src', '/content/images/sem-foto.gif');
	// });

	$.widget('wd.ProductMediasDisplayer', $.wd.widget, {

		_create: function() {
			var widget = this,
				$w = this.getContext();
			var $element = $(widget.element),
				$id = this.options.productId;

			// $('img',$element).error(function () {
			// 	$(this).attr('src', '/content/images/sem-foto.gif');
			// });

			$(document, $element).bind('cbox_open', function() {
				$('iframe.video', widget.element).css('visibility', 'hidden');
			});

			$(document, $element).bind('cbox_closed', function() {
				$('iframe.video', widget.element).css('visibility', 'visible');
			});

			if (widget.options.datasource.length) {

				$element.find('img.image').data('index', widget.options.datasource[0].index);


				widget.subscribe('/wd/product/medias/selector/changed/' + $id, function(e, args) {
					var ds = widget.options.datasource;

					for (i = 0; ds.length; i++) {
						if (ds[i].index == args.index) {
							var index = ds[i].index;
							var image = $('img.image', widget.element),
								divZoom = image.parents('.zoom');

							if ($('iframe.video').length) {
								var iframeVideo = $('iframe.video', widget.element).get(0).contentWindow;
							}
							var iframe = $('iframe.video', widget.element),
								uploadedVideo = $('video', widget.element);

							if (ds[i].video != undefined && !ds[i].video.indexOf("&enablejsapi=1")) { //console.log("ds",ds[i].video.replace('&amp;', '&'));
								ds[i].video = ds[i].video + "&enablejsapi=1";
							}

							if (ds[i].video) {
								ds[i].video = ds[i].video.replace('&amp;', '&');
								image.parent().addClass('wd-hide');
								divZoom.hide();

								uploadedVideo.hide();
								if ($('video', widget.element).length)
									$('video', widget.element)[0].pause();
								if (iframe.attr('src') != ds[i].video.replace('&amp;', '&')) {
									iframe.attr('src', ds[i].video.replace('&amp;', '&'));
								}

								iframe.show();
								iframe.parent().show();
								if ($w('iframe.video').length) {
									iframeVideo.postMessage('{"event":"command","func":"playVideo","args":""}', '*');
								}
							} else if (ds[i].uploadedVideo) {
								divZoom.hide();
								image.parent().addClass('wd-hide');
								iframe.hide();
								iframe.parent().hide();

								uploadedVideo.show();
								widget._setSourceVideo($('video', widget.element), ds[args.index - 1].uploadedVideo);
							} else {
								uploadedVideo.hide();
								if ($('video', widget.element).length)
									$('video', widget.element)[0].pause();

								divZoom.show();
								image.parent().removeClass('wd-hide');
								iframe.hide();
								iframe.parent().hide();
								if ($w('iframe.video').length) {
									iframeVideo.postMessage('{"event":"command","func":"pauseVideo","args":""}', '*');
								}
								image
									.data('index', index)
									.attr({
										src: ds[i].mediaPath,
										'data-big': args.element.find('img').attr('data-big'),
										'width': args.element.find('img').attr('data-width-small'),
										'height': args.element.find('img').attr('data-height-small')
									});

							}
							widget.publish('/wd/product/medias/displayer/changed/' + $id, {
								element: args.element,
								widget: widget.element,
								index: index
							});
							break;
						}
					}
				});

				widget.subscribe('/wd/product/medias/displayer/no/photo/' + $id, function(e, args) {
					var image = $('img.image', widget.element),
						iframe = $('iframe.video', widget.element);
					if ($w('iframe.video').length) {
						var iframeVideo = $('iframe.video', widget.element).get(0).contentWindow;
					}
					image.parent().removeClass('wd-hide');
					iframe.hide();
					iframe.parent().hide();
					if ($w('iframe.video').length) {
						iframeVideo.postMessage('{"event":"command","func":"pauseVideo","args":""}', '*');
					}
					image.attr({
						src: '',
						'width': 'auto',
						'height': 'auto',
						'data-big': ''
					});
				});

				$(widget.element).find('img.image').bind('click', function() {
					widget.publish('/wd/product/medias/displayer/clicked/' + $id, {
						widget: widget.element,
						index: $(this).data('index')
					});
				}).bind('mouseover', function() {
					widget.publish('/wd/product/medias/displayer/mouseover/' + $id, {
						widget: widget.element,
						index: $(this).data('index')
					});
				}).bind('mouseout', function() {
					widget.publish('/wd/product/medias/displayer/mouseout/' + $id, {
						widget: widget.element,
						index: $(this).data('index')
					});
				}).bind('mouseenter', function() {
					widget.publish('/wd/product/medias/displayer/mouseenter/' + $id, {
						widget: widget.element,
						index: $(this).data('index')
					});
				}).bind('mouseleave', function() {
					widget.publish('/wd/product/medias/displayer/mouseleave/' + $id, {
						widget: widget.element,
						index: $(this).data('index')
					});
				});
			}
		},
		_setSourceVideo: function(el, video) {
			var tpl = '<source src="#SRC#" type="video/#TYPE#">',
				types = ['ogg', 'webm', 'mp4'],
				rendered = '';
			el.empty();

			for (var i in types) {
				rendered += tpl.replace('#SRC#', video.replace('.mp4', '.' + types[i])).replace('#TYPE#', types[i]);
			}
			el.append(rendered).load();
			el[0].play();
		}
	});

	// Defaults
	$.extend($.wd.ProductMediasDisplayer.prototype.options, {

	});

})(jQuery, window, document);

}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/product.medias.enlarger/Scripts/wd.product.medias.enlarger.js*/
try{//
// Widget de medias selector
// Esse widget tem responsabilidade de selecionar a midia clicada e lançar os eventos (over, click)
//
// Subscribe:
//      /wd/product/medias/displayer/clicked
//

;$.widget('wd.ProductMediasEnlarger', $.wd.widget, {

    // Opções do Widget
    options: {
        index: 0,
        hierarchy: '/'
    },

    //
    _create: function () {
        var widget = this;

        var hasImages = $('button', widget.element).length;

        if (hasImages) {

            widget._bindColorBox();

            $('button', widget.element).click(function (e) {
                widget._showLargeGallery(e);
            });

            widget._subscribeEvents();
        }
    },

    //
    _subscribeEvents: function () {
        var widget = this,
            $id = this.options.productId;

        widget.subscribe('/wd/product/medias/selector/changed/'+$id, function (e, args) {
            widget.options.index = args.order;
        });

        widget.subscribe('/wd/product/medias/displayer/clicked/'+$id, function (e, args) {
            widget._showLargeGallery();
        });

        widget.subscribe('/wd/product/variation/changed/'+$id, function (e, args) {
            widget.options.hierarchy = args.variationContent.hierarchy.replace("|", "/");

            var variationPath = '/' + widget.options.hierarchy + '/',
                idx = $.grep(widget.options.datasource, function(v) { return v.variationPath === variationPath; });

            if (!idx.length && !widget.options.useHierarchy) {
                $(widget.element).hide();
            } else {
                $(widget.element).show();
                widget._rebuildColorBox();
            }

        });
    },

    //
    _bindColorBox: function () {
        var widget = this;

        $.colorbox.remove();

        $.colorbox.settings.opacity = 0.5;

        $(".large-gallery", widget.element).not('.hide').not('.video').colorbox({ rel: 'large-gallery',className:'wd-product-medias-enlarger-modal galeria', fixed: true, open: false, current: 'Mídia {current} de {total}' });
        $(".video", widget.element).not('.hide').colorbox({ iframe: true, rel: 'large-gallery', fixed: true, open: false,className:'wd-product-medias-enlarger-modal video', current: 'Mídia {current} de {total}', innerWidth: 640, innerHeight: 390 });
    },

    //
    _getMedia: function (path, firstHierarchy) {
        var widget = this;

        var media = null;

        $.each(widget.options.datasource, function (i) {
            if ("/" + path == this.mediaPath && this.variationPath == firstHierarchy)
                media = this;
        });

        return media;
    },

    //
    _mediaIsInVarPath: function (path, hierarchy) {
        var widget = this;
        var media = null;
        var fullHierarchy = ('/' + hierarchy + '/').replace('//', '/');

        $.each(widget.options.datasource, function (i) {
            if (path == this.mediaPath && this.variationPath == fullHierarchy)
                media = this;
        });

        return media != null;
    },

    //
    _rebuildColorBox: function () {
        var widget = this;
        var hierarchy = widget.options.hierarchy;

        // $(".large-gallery", widget.element).each(function () {
        //     if (widget._mediaIsInVarPath(this.pathname, hierarchy))
        //         $(this).removeClass('hide');
        //     else
        //         $(this).addClass('hide');
        // });

        // Caso nao tenha nenhuma imagem na variacao
        // percorre as hierarquias anteriores até encontrar uma imagem
        if ($(".large-gallery", widget.element).not('.hide').length == 0) {
            var previousHierarchy = widget.options.hierarchy;

            while (previousHierarchy != '') {
                previousHierarchy = previousHierarchy.substr(0, previousHierarchy.lastIndexOf('/'))

                $(".large-gallery", widget.element).each(function () {
                    if (widget._mediaIsInVarPath(this.pathname, previousHierarchy))
                        $(this).removeClass('hide');
                });

                if ($(".large-gallery", widget.element).not('.hide').length != 0)
                    previousHierarchy = '';
            }
        }

        widget._bindColorBox();

    },

    //
    _showLargeGallery: function () {
        var widget = this;
        $('a:eq(' + widget.options.index + ')', widget.element).trigger('click');
    }

});
}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/product.medias.selector/Scripts/wd.product.medias.selector.js*/
try{//
// Widget de medias selector
// Esse widget tem responsabilidade de selecionar a midia clicada e lançar os eventos (over, click)
//
// Publish:
//    /wd/product/medias/selector/changed  { widget, mediaType, index }
//
;
(function($, window, document, undefined) {

	$('.wd-product-media-selector img').error(function() {
		$(this).parents('li').hide();
	});

	$.widget('wd.ProductMediasSelector', $.wd.widget, {
		// Opções do Widget
		options: {
			hierarchy: '/'
		},

		//
		_create: function() {

			var widget = this,
				$w = this.getContext(),
				$id = this.options.productId;

			if (widget.options.datasource.length > 0) {
				$(widget.element).find('img').each(function() {
					if ($(this).attr('data-big') && $(this).attr('data-big').length)
						$(widget.element).append('<div class="preloader" style="background: url(' + $(this).attr('data-big') + ')"></div>');
				});


				$(widget.element).find('li').each(function(index) {
					$(this)
						.data('index', widget.options.datasource[index].index)
						.data('varpath', widget.options.datasource[index].variationPath)
						.data('order', index);

				});

				if (widget.options.carousel) {
					$w().addClass('wd-product-media-selector-carousel');
					var o = widget.options;
					$.each(o, function(k, v) {
						if (typeof v === 'string') o[k] = v.toLowerCase();
					});
					$('ul', widget.element).jcarousel(widget.options);
				}


				$(widget.element).find('li').click(function() {
					$(this).addClass('selected').siblings('.selected').removeClass('selected');
					widget.publish('/wd/product/medias/selector/changed/' + $id, {
						element: $(this),
						widget: $(widget.element),
						mediaType: 'image',
						index: $(this).data('index'),
						order: $(this).data('order')
					});
				});

			}

			//
			widget._subscribeEvents();

		},

		//
		_subscribeEvents: function() {
			var widget = this,
				$w = this.getContext(),
				$id = this.options.productId;

			widget.subscribe('/wd/product/variation/changed/' + $id, function(e, args) {
				widget.options.hierarchy = args.variationContent.hierarchy.replace(/\|/g, "/");
				widget._rebuildList();
			});
		},

		//
		_mediaIsInVarPath: function(hierarchy) {
			var widget = this;
			return (hierarchy == ('/' + widget.options.hierarchy + '/').replace(/\/\//g, '/'));
		},

		//
		_rebuildList: function() {
			var widget = this,
				$id = this.options.productId,
				$w = $(widget.element);

			$w.find('li').each(function(index) {
				var varpath = $(this).data('varpath');
				if (widget._mediaIsInVarPath(varpath)) {

					$(this).show();
				} else {

					$(this).hide();
				}
			});

			// Percorre as variações validando a hierarquia independente da ordem do path
			if ($w.find('li:visible').length == 0) {
				var _hierarchy = _.compact(widget.options.hierarchy.split('/'));
				$w.find('li').each(function(index) {
					var varpath = $(this).data('varpath') || '';
					var paths = _.compact(varpath.split('/'));
					// app.log('new paths', paths, 'wdHierarchyPaths new', _hierarchy);
					if (paths.length === _hierarchy.length) {
						var dif = _.difference(paths, _hierarchy);
						//app.log('dif', dif);
						if (dif.length) {
							$(this).hide();
						} else {
							$(this).show();
						}
					} else {
						$(this).hide();
					}
				});
			};

			// Caso nao tenha nenhuma imagem na variacao
			// percorre as hierarquias anteriores até encontrar uma imagem
			if ($w.find('li:visible').length == 0) {
				var previousHierarchy = widget.options.hierarchy;
				while (previousHierarchy != '') {
					previousHierarchy = previousHierarchy.substr(0, previousHierarchy.lastIndexOf('/'))
					$w.find('li').each(function(index) {
						if (previousHierarchy != '' && $(this).data('varpath') == ('/' + previousHierarchy + '/').replace('//', '/')) {
							$(this).show();
						}
					});

					if ($w.find('li:visible').length != 0)
						previousHierarchy = '';
				}
			}

			if (widget.options.carousel){
				$('ul', widget.element).jcarousel(widget.options);
			}
			
			var $visibles = $w.find('li:visible');

			if (!$visibles.length && !widget.options.useHierarchy) {
				$.publish('/wd/product/medias/displayer/no/photo/' + $id, {});
				$w.find('li').hide();
			} else {
				if (!$visibles.length){
					$w.find('li').first().click();
				}else{
					$w.find('li:visible').first().trigger('click');
				}
			}

			// OLD WAY
			// var variationPath = '/' + widget.options.hierarchy + '/',
			//     idx = $.grep(widget.options.datasource, function(v) {
			//         return v.variationPath === variationPath;
			//     });
			// if (!idx.length && !widget.options.useHierarchy) {
			//     $.publish('/wd/product/medias/displayer/no/photo/' + $id, {});
			//     $(widget.element).find('li').hide();
			// } else {
			//     $(widget.element).find('li:visible:first').click();
			// }
		}

	});


	// Defaults
	$.extend($.wd.ProductMediasSelector.prototype.options, {
		carousel: false,
		visible: 4,
		scroll: 1,
		wrap: 'first',
		vertical: false
	});

})(jQuery, window, document);

}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/product.medias.zoom/Scripts/wd.product.medias.zoom.js*/
try{//
// Widget de medias displayer
// Esse widget tem responsabilidade de exibir a midia clicada e lançar os eventos (over, click)
//
// Publish:
//      /wd/product/medias/zoom/clicked { widget, index }
//      /wd/product/medias/zoom/mouseover { widget, index }
//      /wd/product/medias/zoom/mouseout { widget, index }
//
// Subscribe:
//      /wd/product/medias/displayer/mouseover
//

;(function($, window, document, undefined){

    $.fn.ezZoom = function(options){
        
        options = options || {};
        
        if (!this.data('ezZoom')) {
            var settings = {
                    /*
                        DEFAULT SETTINGS
                    */
                    cls: 'ezZoom',
                    mousetrapSize: 'auto', //auto, css
                    containerSize: 'auto', //auto, css
                    containerPos: 'css', //auto, css
                    fadeDuration: 300,
                    scroll: {
                        animation: false,
                        duration: 150,
                        easing: 'easeOutQuad'
                    }
                },
                plugin = $(this).data('ezZoom', $.extend({
                    /*
                        CORE SETTINGS
                    */
                    mousetrap: this,
                    imgS: $('> img', this).addClass(settings.cls+'-small'),
                    formula: function(e){
                        var $plugin = this,
                            $mousetrap = $plugin.mousetrap,
                            $container = $plugin.container,
                            $imgB = $plugin.imgB,
                            $dX = (e.pageX - $mousetrap.offset().left) * $imgB.width() / $mousetrap.width(),
                            $dY = (e.pageY - $mousetrap.offset().top) * $imgB.height() / $mousetrap.height(),
                            $bigX = -1 * $dX + (e.pageX - $mousetrap.offset().left),
                            $bigY = -1 * $dY + (e.pageY - $mousetrap.offset().top);

                        return { left: $bigX , top: $bigY };
                    },
                    doUpdateImages: function(o){
                        var $plugin = this;
                        if ('small' in o)
                            $plugin.imgS.attr('src', o.small);
                        if ('big' in o) {
                            $plugin.imgS.attr('data-image-big', o.big);
                            $plugin.imgB.attr('src', o.big);
                        }
                    }
                }, settings, options)).data('ezZoom');
            
            if(!plugin || !$(this).length)
                return {};
            
            //inject and set big image
            plugin.container = plugin.mousetrap.append('<div class="'+plugin.cls+'-container"><div class="loading-big">carregando...</div><img src="'+ plugin.imgS.attr('data-image-big') +'" class="'+plugin.cls+'-big">').find('.'+plugin.cls+'-container');
            plugin.imgB = plugin.container.find('.'+plugin.cls+'-big');

            $('.'+plugin.cls+'-container img').on('load', function() {
                $('.'+plugin.cls+'-container .loading-big').hide();
            });
            

            
            //set fixed container size
            var $containerSize = {},$containerPos = {};  
            // largura da imagem pequena
            var $imgSWidth = plugin.imgS.width();
            // altura da imagem pequena
            var $imgSHeight = plugin.imgS.height();

            if (plugin.containerPos === 'auto')
                $containerPos = { left: plugin.imgS.position().left, top: plugin.imgS.position().top };

            // verifica se o tamanho da div parent .wd-product-medias-displayer é igual ao tamanho da foto pequena
            var $imgS_ParentWidth = plugin.imgS.parent().parent('.wd-product-medias-displayer').width();
            var $imgS_Parentheight = plugin.imgS.parent().parent('.wd-product-medias-displayer').height();

            if($imgS_ParentWidth == $imgSWidth ){
                if (plugin.mousetrapSize === 'auto'){
                    //atualiza zoom
                    plugin.mousetrap.css({ width: plugin.imgS.width(), height: plugin.imgS.height() });
               }

                 if (plugin.containerSize === 'auto'){
                    //atualiza ezZoom-container
                    $containerSize = { width: plugin.imgS.width(), height: plugin.imgS.height() };
                }
            }else{
                if (plugin.containerSize === 'auto'){
                    //atualiza ezZoom-container
                    $containerSize = { width: $imgS_ParentWidth, height: $imgS_Parentheight };
                }
                //set fixed mousetrap size
                if (plugin.mousetrapSize === 'auto'){
                    //atualiza zoom
                    plugin.mousetrap.css({ width: $imgS_ParentWidth, height: $imgS_Parentheight });
                }
           }
            

            plugin.container.css($.extend($containerSize, $containerPos));
            
            

            /*
                EVENTS
            */

            plugin.mousetrap.bind('mouseenter.ezZoom', function(e){
                // MOUSE ENTER
                var plugin = $(this).data('ezZoom');

                if (plugin.imgS.attr('data-image-big').length) {

                    //protection against positioned container
                    if (!((e.target === plugin.imgB[0] || e.target === plugin.container[0]) && (plugin.container.position().left !== 0 || plugin.container.position().top !== 0))) {
                        plugin.imgB.css(plugin.formula(e));
                        plugin.container.stop().removeClass('dispatch').show().fadeTo(plugin.fadeDuration, 1);
                    }

                }

            })
            .bind('mouseleave.ezZoom', function(e){
                // MOUSE LEAVE
                var plugin = $(this).data('ezZoom');

                if (plugin.imgS.attr('data-image-big').length) {
                    plugin.container.stop().fadeTo(plugin.fadeDuration, 0, function(){ $(this).hide().addClass('dispatch') });
                }

            })
            .bind('mousemove.ezZoom', function(e){
                // MOUSE MOVE
                var plugin = $(this).data('ezZoom');
                if (plugin.imgS.attr('data-image-big').length) {
                    //protection against positioned container
                    if (!((e.target === plugin.imgB[0] || e.target === plugin.container[0]) && (plugin.container.position().left !== 0 || plugin.container.position().top !== 0))) {
                        if (parseInt(plugin.container.css('opacity')) === 1 && plugin.scroll.animation)
                            plugin.imgB.stop().animate(plugin.formula(e), plugin.scroll.duration, plugin.scroll.easing);
                        else
                            plugin.imgB.css(plugin.formula(e));
                    }
                    else
                        $(this).trigger('mouseleave.ezZoom');
                }
            });

            plugin.mousetrap.trigger('mouseenter.ezZoom');
        }

        /*
            ACTIONS
        */
        var plugin = $(this).data('ezZoom');

        if ('updateImages' in options)
            plugin.doUpdateImages(options.updateImages);

        if ('destroy' in options && options.destroy === true) {
            if (plugin.mousetrap[0] !== plugin.container[0])
                plugin.container.remove();
            else
                plugin.imgB.remove();
            plugin.imgS.stop().removeAttr('style').removeClass(plugin.cls+'-small');
            plugin.mousetrap.removeAttr('style').unbind('.ezZoom');
            $(this).removeData('ezZoom');
        }

        return $(this);
    };

})(jQuery, window, document);

; (function($, window, document, undefined) {
    

    /*
    $('.wd-product-medias-displayer img').error(function () {
        $(this).attr('src', '/content/images/sem-foto.gif');
    });
    */
    $.widget('wd.ProductMediasZoom', $.wd.widget, {

        _create: function () {
            var widget = this,
                $w = this.getContext(),
                $id = this.options.productId;
            
            widget.subscribe('/wd/product/medias/displayer/mouseenter', function(e, args){
                $('.zoom', args.widget).ezZoom(widget.options.zoom);

                //console.log(args.widget);   
               // console.log(widget.options.zoom);
                //alert(widget.options.zoom);
            });
            widget.subscribe('/wd/product/medias/displayer/changed', function(e, args){
                $('.wd-product-medias-displayer .zoom').ezZoom({
                    updateImages: {
                        big: args.element.find('img').attr('data-image-big')
                    }, destroy: true
                });
            });

            widget.subscribe('/wd/product/medias/displayer/no/photo/'+$id, function (e, args) {
                $('.wd-product-medias-displayer .zoom').ezZoom({
                    updateImages: {
                        big: ''
                    }, destroy: true
                });
            });
            
         }
    });

    // Defaults
    $.extend($.wd.ProductMediasZoom.prototype.options, {
        zoom: {}
    });

})(jQuery, window, document);
}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/product.medias/Scripts/wd.product.medias.js*/
try{//
// Widget de medias
//
; (function($, window, document, undefined) {

	$.widget('wd.ProductMedias', $.wd.widget, {

		_create: function () {

		}

	});

	// Defaults
	//$.extend($.wd.ProductMedias.prototype.options, {
	//});

})(jQuery, window, document);
}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/product.rating/Scripts/wd.product.rating.js*/
try{//
// Widget exibição de avaliações
// Esse widget tem responsabilidade de mostrar a média de avaliação do produto e link para novo review
//
// Publish:
//

;
$.widget('wd.ProductRating', $.wd.widget, {

	_create: function() {
		var widget = this;

		widget.element.find('.review-create').click(function(e) {
			e.preventDefault();

			var groupProductConfig = browsingContext.Common.Config.Platform.Product;
			if (groupProductConfig.EnableReviewOnlyForBuyers || groupProductConfig.EnableUniqueReview) {
				widget._checkReviewPermission();
				return;
			}

			widget.publish('/product/review/create', {
				widget: widget.element
			});

			return;
		});
	},
	_checkReviewPermission: function() {
		var widget = this;

		function evaluate(responseData) {
			if (!responseData || !responseData.IsValid) {
				var errorMessage = responseData.Errors && responseData.Errors.length ? responseData.Errors[0].ErrorMessage : 'Você precisa comprar este produto para comentar';

				widget.publish('/product/review/info', {
					widget: widget.element,
					message: errorMessage
				});

				return;
			}

			widget.publish('/product/review/create', {
				widget: widget.element
			});

			return;
		}

		if (!browsingContext.Common.Shopper.IsAuthenticated) {
			widget.publish('/product/review/info', {
				widget: widget.element,
				message: 'Você precisa fazer o login continuar.'
			});

			return;
		}

		if (browsingContext.Custom.wdReviews && browsingContext.Custom.wdReviews.ValidateCustomerReviewPermit) {
			evaluate(browsingContext.Custom.wdReviews.ValidateCustomerReviewPermit);
			return;
		}

		var productID = browsingContext.Page.Product.ProductID;
		var customerID = browsingContext.Common.Customer.CustomerID;
		var url = browsingContext.Common.Urls.BaseUrl + 'shopping/review/ValidateCustomerReviewPermit/' + productID;

		$.ajax({
			type: "POST",
			url: url,
			data: {
				customerID: customerID
			},
			success: function(data) {
				browsingContext.Custom.wdReviews = {
					ValidateCustomerReviewPermit: data
				};

				evaluate(browsingContext.Custom.wdReviews.ValidateCustomerReviewPermit);
			}
		});
	}
});

}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/product.price/Scripts/wd.product.price.js*/
try{//
// Widget do preço
//
;
(function($, window, document, undefined) {
	var _requestCache = {};
	var _responseCache = {};

	$.widget('wd.ProductPrice', $.wd.widget, {

		// Create
		_create: function() {

			var $widget = this;
			var $element = $($widget.element);
			var pid = $element.attr('data-widget-pid');
			var ProductSelection = $element.data('product-selection');
			var PropertyPath = ProductSelection && /\/(\d+\.\d+\/)+/g.test(ProductSelection.PropertyPath) ? ProductSelection.PropertyPath : '';

			var skipCache = browsingContext.Common.Config.Product.SkipCache;

			var updateCachedPrice = function(skuID) {
				var message = {
					ID: pid,
					I: [{
						I: skuID
					}]
				};

				$widget._fetchCachedDescription($.param({
						R: [message]
					}))
					.done(function(response) {
						$widget._updateDescription(response.Prices[0].PriceDescription);
					});
			};

			// Força refresh somente no detalhe do produto
			if (!browsingContext.Page.Product) {
				skipCache = false;
			}

			// Força refresh inicial somente quando é o produto princial do detalhe e não possui variação
			if (skipCache &&
				browsingContext.Page.Product &&
				(browsingContext.Page.Product.ProductID + '') === (pid + '') &&
				browsingContext.Page.Product.SkuID > 0
			) {
				updateCachedPrice(browsingContext.Page.Product.SkuID);
			}

			$widget.subscribe('/wd/product/variation/changed/' + pid, function(e, args) {
				var variation = args.variationContent.sku;
				//				if(variation!=null && variation.isInventoryAvailable)
				if (variation !== null && !args.variationContent.noPriceChange) {
					var element, price;
					element = $widget.element.find('.priceContainer');
					var t = element.html(variation.priceDescription).text();
					element.html(t);

					if (skipCache) {
						updateCachedPrice(variation.productID);
					}
				}
			});

			$widget.subscribe('/wd/product/price/change/variationPath/' + pid + PropertyPath, function(e, variationPath) {
				$widget._fetchCachedDescription({
						R: [{
							ID: pid,
							V: variationPath
						}]
					})
					.done(function(response) {
						$widget._updateDescription(response.Prices[0].PriceDescription);
					});
			});

			$widget.subscribe('/wd/product/price/change/description/' + pid, function(e, data) {
				if (data) {
					$widget._fetchCachedDescription(data, 'POST')
						.done(function(response) {
							$widget._updateDescription(response.Prices[0].PriceDescription);
						});
				}
			});

			$widget.subscribe('/wd/product/variation/optionslist/init/' + pid, function() {
				$element.addClass('wd-hide');
			});
		},
		_fetchCachedDescription: function(data, method) {
			var $self = this;
			method = method ? method.toUpperCase() : 'GET';
			var cacheKey = method + '/' + JSON.stringify(data);

			if (_requestCache[cacheKey]) {
				return _requestCache[cacheKey];
			}

			if (_responseCache[cacheKey]) {
				var dfd = $.Deferred();
				dfd.resolve(_responseCache[cacheKey]);
				return dfd.promise();
			}

			_requestCache[cacheKey] = $self._fetchDescription(data, method);

			return _requestCache[cacheKey]
				.done(function(response) {
					_responseCache[cacheKey] = response;
				})
				.complete(function() {
					_requestCache[cacheKey] = null;
				});
		},
		_fetchDescription: function(data, method) {
			var url;

			if ($.isPlainObject(data)) {
				data = JSON.stringify(data);
			}

			if (!method || method === 'GET') {
				url = browsingContext.Common.Urls.BaseUrl + 'web-api/v1/Shopping/Price/Get';

				return $.ajax({
					url: url,
					type: 'GET',
					cache: true,
					data: data,
				});

			} else {
				url = browsingContext.Common.Urls.BaseUrl + 'web-api/v1/Shopping/Price/Post';

				return $.ajax({
					url: url,
					type: 'POST',
					//cache: true,
					data: data,
					headers: {
						'Content-Type': 'application/json'
					}
				});

			}
		},
		_updateDescription: function(content) {
			var $widget = this;

			$widget.element.find('.priceContainer').html(content);
		}

	});

})(jQuery, window, document);

}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/product.variations/Scripts/wd.product.variations.js*/
try{//
// Widget de variações do produto
// Esse widget tem responsabilidade de exibir as variações/disponibilidades dos filhos de um produto configurável,
// o mesmo envia as informações da variação/hierarquia de propriedades selecionadas a cada troca
//
// Publish:
//      /wd/product/variation/changed { widget, variationContent }
//      /wd/product/variation/optionslist/init/{ID_PRODUTO} { }
//
;
(function($, window, document, undefined) {

	function htmlDecode(t) {
		return app.tools.htmlDecode(t);
	}

	$.widget('wd.ProductVariations', $.wd.widget, {

		// Opções do Widget
		options: {
			unavailableText: ' (Indisponível)', // Texto de indisponibilidade
			variationsGroupCount: null, // Número de grupos de variação
			rootVariation: '', // Contém o ID da variação ROOT. Ex: 12
			rootVariationText: '', // Contém o Texto da variação ROOT. Ex: Cor
			variationHierarchy: '', // Contém a hierarquia das variações. Ex: 12|14|15|
			variationHierarchyText: '', // Contém a hierarquia dos textos das variações. Ex: P|Sacola|Plastico|
			hashData: {}, // Objeto que guarda os parametros hash da url
			searchData: {}, // Objeto que guarda os parametros search da url,
			ignoreQueryString: false
		},

		// Create Function
		_create: function() {
			var widget = this,
				$w = this.getContext(),
				$id = this.options.productId;
			widget.options.showAllGroups = widget.element.hasClass('show-all');
			widget.options.variationsGroupCount = $('.variation-group, .subvariation-group', widget.element).length;
			widget._initUrlHash();
			widget._initUrlSearch();
			widget._adjustVariationsAvailability();
			if (!widget.element.find('.type-options-list').length) {
				widget._bindEvents();
				widget._listenSelectedSku($id);
				widget._listenError($id);
			} else {
				widget._initOptionsList($id);
			}

			widget.$productVariations = widget.element.find('#product-variations');
			widget.$groups = widget.element.find('.variation-group, .subvariation-group');

			var initialRun = function() {
				widget._setCurrentVariation();
				widget._fixPrematureChange();
			};

			$(document).ready(function() {
				//Escolhe a variação atual aqui devido aos outros widgets escutarem o evento de mudança
				initialRun();
			});

		},

		selectedOptions: [],

		_listenSelectedSku: function($id) {
			var $self = this;
			this.subscribe('/wd/product/variation/selected/' + $id, function(e, args) {
				var skuID = args.variationContent.skuID;
				$self._setCurrentVariation(skuID);
			});
		},

		_listenError: function($id) {
			var $self = this,
				$w = this.getContext();
			$self.subscribe('/wd/product/variation/error/' + $id, function(e, args) {
				var errors = args.errors;
				if (errors && errors.length && errors[0].hasOwnProperty('msg')) {
					$self.options.chooseVariationErrorMessage = errors[0].msg;
					$self.$groups.trigger('checkEmptyVariation');
				}
			});

			$self.subscribe('/wd/buybutton/cleanerrors/' + $id, function() {
				$w('.error').remove();
			});
		},

		// Efetua o bind nos controles do widget
		_bindEvents: function() {
			var $self = this;
			$('.variation-group .options label', $self.element).bind('click', function() {
				$self._handleVariationChange($(this));
			});
			$('.variation-group .options select', $self.element).bind('change', function() {
				$self._handleVariationChangeSelect($(this));
			});

			$('.subvariation-group select', $self.element).bind('change', function() {
				$self._handleSubVariationChangeSelect($(this));
			});

			// $('.subvariation-group .options label', $self.element).bind('click', function() {
			//     $self._handleSubVariationChange($(this));
			// });
			$self.element.on('click', '.subvariation-group .options label', function() {
				$self._handleSubVariationChange($(this));
			});

			$('.variation-group, .subvariation-group', $self.element).on('checkEmptyVariation', function() {
				$self._checkEmptyVariation($(this));
			});
		},

		// Tratamento da mudança de uma primeira variação INPUT
		_handleVariationChange: function($element) {
			var $self = this;

			if (!$element.hasClass('selected')) {

				$('.variation-group .options label.selected', $self.element).removeClass('selected');

				$element.addClass('selected');

				// fix bug mobile
				$element.find('input').attr('checked', true);

				//$self.options.rootVariation = $element.find('input:radio:first').val();
				//$self.options.rootVariationText = $element.find('input:radio:first').parent().parent().parent().parent().find('.title').text() + '#' + $element.find('input:radio:first').parent().text();

				$self.selectedOptions[0] = $element.find('input:radio:first').val();

				if (!$self.options.showAllGroups)
					$('.subvariation-group', $self.element).hide();

				//limpa erros e habilita novamente o botão de comprar
				//$('.options span.error', $self.element).remove();
				$self.cleanErrors();
				// $('.btn-buy').removeAttr('disabled')
				//              .removeClass('disabled');

				$self._handleVariationsGroup(0, true);

				// g comment
				//$self._showSubVariation(0, true);
			}
		},
		// Tratamento da mudança de uma primeira variação SELECT
		_handleVariationChangeSelect: function($element) {
			var $self = this,
				$btNotifyme = $('.bt-notifyme'),
				val = $element.val();
			//limpa erros e habilita novamente o botão de comprar
			//$('.options span.error', $self.element).remove();
			$self.cleanErrors();
			// $('.btn-buy').removeAttr('disabled')
			//              .removeClass('disabled');

			if (!val) {
				// fix ( CORE-4082 )
				if (!$self.options.showAllGroups)
					$('.subvariation-group', $self.element).hide();
				var $elem = $self._getVariationByProductID($self.element.attr('pid'));
				if ($elem.isPurchasable) {
					$self.publish('/wd/buybutton/mustvalidated/' + $self.options.productId, {
						mustValidated: true,
						show: true
					});
					//$('.btn-buy').addClass('must-validated').show();
					$('.wd-product-notifywhenavailable').hide();

					$.publish('/wd/buybutton/clearskuid/' + $self.options.productId, {});
				} else {
					$('.wd-product-notifywhenavailable').show();
				}

			} else {

				// $self.options.rootVariation = $element.val();
				// $self.options.rootVariationText = $element.parent().parent().find('.title').text() + '#' + $element.find('option:selected')[0].innerText;

				if (!$self.options.showAllGroups)
					$('.subvariation-group', $self.element).hide();
				//$('.subvariation-group').hide();
				// g comment
				//$self._showSubVariation(0, true);

			}

			$self.selectedOptions[0] = val ? val : undefined;
			$self._handleVariationsGroup(0, true);

		},

		// Tratamento da mudança de uma subvariação INPUT
		_handleSubVariationChange: function($element) {
			var $self = this;
			var nodeName = $element[0].nodeName.toLowerCase();
			//var optionIsAvailable = !$element.find(':selected').hasClass('unavailable');
			var $btNotifyme = $('.bt-notifyme');

			if (!$element.hasClass('selected')) {

				//$('.variation-group .options label.selected', $self.element).removeClass('selected');
				$element.closest('.subvariation-group').find('label.selected')
					.removeClass('selected');

				$element.addClass('selected');

				// fix bug mobile
				$element.find('input').attr('checked', true);
				//$element.find('input').prop('checked');

				if (nodeName === 'label') {
					$element = $element.find('input');
				}

				//limpa erros e habilita novamente o botão de comprar
				//$('.options span.error', $self.element).remove();
				$self.cleanErrors();
				// $('.btn-buy').removeAttr('disabled')
				//              .removeClass('disabled');

				// if(!$element.val()){
				//     // fix ( CORE-4082 )
				//     var $IDGroup = '#'+$element.closest('.subvariation-group').attr('id');
				//     $($IDGroup+' ~ .subvariation-group').hide()
				//                                         .removeClass('show');
				//     //$('.btn-buy').addClass('must-validated').show();
				//     $self.publish('/wd/buybutton/mustvalidated/'+$self.options.productId,{mustValidated:true, show:true});
				//     if($btNotifyme.length){
				//         $btNotifyme.hide();
				//     }
				//     $self.publish('/wd/buybutton/clearskuid/'+$self.element.attr('pid'),{});
				// }
				// else{
				var level = $element.parents('.subvariation-group').find('.level').val();
				$self.selectedOptions[level] = $element.val();
				// g comment
				//$self._showSubVariation( $element.parents('.subvariation-group').find('.level').val(), true );
				$self._handleVariationsGroup(level, true);
				//}
			}
		},

		// Tratamento da mudança de uma subvariação SELECT
		_handleSubVariationChangeSelect: function($element) {
			var $self = this;
			var optionIsAvailable = !$element.find(':selected').hasClass('unavailable');
			var $btNotifyme = $('.bt-notifyme');
			var level = $element.closest('.subvariation-group').find('.level').val();

			//limpa erros e habilita novamente o botão de comprar
			//$('.options span.error', $self.element).remove();
			$self.cleanErrors();
			// $('.btn-buy').removeAttr('disabled')
			//              .removeClass('disabled');

			if (!$element.val()) {
				if (!$self.options.showAllGroups) {
					// fix ( CORE-4082 )
					var $IDGroup = '#' + $element.closest('.subvariation-group').attr('id');
					$($IDGroup + ' ~ .subvariation-group').hide()
						.removeClass('show');
				}
				$self.publish('/wd/buybutton/mustvalidated/' + $self.options.productId, {
					mustValidated: true,
					show: true
				});
				//$('.btn-buy').addClass('must-validated').show();
				if ($btNotifyme.length) {
					$btNotifyme.hide();
				}
				$.publish('/wd/buybutton/clearskuid/' + $self.element.attr('pid'), {});
			}
			// else{

			//     // g comment
			//     //$self._showSubVariation( $element.parents('.subvariation-group').find('.level').val(), true );

			// }
			$self.selectedOptions[$element.parents('.subvariation-group').find('.level').val()] = $element.val() ? $element.val() : undefined;
			$self._handleVariationsGroup(level, true);
		},

		// Apresenta as opções de subvariação para o nível escolhido
		_showSubVariation: function(level, optionIsAvailable) {
			var $self = this;

			//$self._getRelatedOptions();

			var currentLevel = parseInt(level);
			var nextLevel = currentLevel + 1;

			// SubItems Visiveis
			var visibleSubItemsCount = $('.subvariation-group:visible', $self.element).length;

			// Hide downlevels
			var l = nextLevel + 1;
			for (l; l <= visibleSubItemsCount; l++) {
				// limpa level no selectedOptions se o próximo level existir de fato
				if (l < $self.options.variationsGroupCount) {
					$self.selectedOptions[l] = undefined;
				}

				$('#option-' + l, $self.element)
					.hide()
					.removeClass('show');
			}

			// Monta Hierarchia
			//$self.options.variationHierarchy = $self.options.rootVariation;
			//$self.options.variationHierarchyText = $self.options.rootVariationText;

			$self._showNextOption('#option-' + nextLevel, optionIsAvailable);

			//$self._adjustSubVariationsAvailability('#option-' + nextLevel);

			//$self._publishVariationChanges();

		},

		// Mostra a próxima opção de variação
		_showNextOption: function(optionSelector, resetSelection) {
			var $self = this;
			var $selector = $(optionSelector, $self.element);

			$selector.show().addClass('show');

			if (resetSelection) {
				// seta o option SELECIONE como seleciondo apenas necessário no select
				$selector.find('.options select option:first-child').attr("selected", "selected");
			}
		},
		// Verifica se o grupo possui uma opção selecionada, se não adiciona msg de erro
		_checkEmptyVariation: function($group) {
			var $self = this;
			var appendMsg = function() {
				$group.find('.options')
					.append($self.options.chooseVariationErrorMessage);
			};
			if ($group.is(':visible')) {
				if ($group.hasClass('type-combo')) {
					if (!$group.find('select').val())
						appendMsg();
				} else {
					if (!$group.find('label.selected').length)
						appendMsg();
				}
			}
		},

		// Limpa erros
		cleanErrors: function() {
			var $self = this;
			$('.options span.error', $self.element).remove();
		},

		// Verifica se uma hierarquia possui disponibilidade
		_isHierarchyAvailable: function(hierarchy) {

			var $self = this;

			var result = $('#product-variations', $self.element)
				// .find("div[id^='" + hierarchy + "|']")
				// CORE-14244
				.find("div[id*='" + hierarchy + "|']")
				.find(".availability[value!=O][value!=S][value!=D]")
				.length > 0;

			return result;

		},
		// Ajusta a disponibilidade das variações
		_adjustVariationsAvailability: function() {
			var $self = this;

			if ($('.variation-group .options label').length) {
				$.each($('.variation-group .options label'), function() {
					var $varOption = $(this).find('input:radio');

					if ($self._isHierarchyAvailable($varOption.val()) == false) {
						$(this).addClass('unavailable');
						$varOption.parents('span').find('b').append($self.options.unavailableText);
					}

				});
			} else if ($('.variation-group .options select option').length) {
				$.each($('.variation-group .options select option'), function() {
					var $varOption = $(this).val();
					if ($varOption != '' && $self._isHierarchyAvailable($varOption) == false) {
						$(this).append($self.options.unavailableText);
					}
				});
			}

		},

		_defaultOptions: [],

		// g - new
		_handleVariationsGroup: function(level, optionIsAvailable) {
			var widget = this,
				$w = this.getContext(),
				$relatedOptions = null;
			if (!widget.options.showAllGroups) {
				// legacy
				widget._showSubVariation(level, optionIsAvailable);
				/*
					validar se vai funcionar verificando apenas o próximo grupo
					ou se será necessário validar todos os grupos também
				*/
				var nextLevel = parseInt(level) + 1;
				$relatedOptions = widget._getRelatedOptions();
				widget._handleVariationsGroupOptions($w('#option-' + nextLevel), $relatedOptions, nextLevel);
			} else {
				$relatedOptions = widget._getRelatedOptions();
				$w('.variation-group, .subvariation-group').each(function(i) {
					widget._handleVariationsGroupOptions($(this), $relatedOptions, i);
				});

			}

			// sempre deve fazer a publicação da troca de variação
			widget._publishVariationChanges();
		},
		// g - new
		_handleVariationsGroupOptions: function($el, $relatedOptions, level) {
			if (!$el || !$el.length || !$relatedOptions || !$relatedOptions.length) {
				return '';
			}
			var widget = this,
				// $w = this.getContext(),
				isCombo = $el.hasClass('type-combo'),
				isFirstVariation = $el.hasClass('first'),
				isLastVariation = $el.hasClass('last'),
				showUnavailableMessage = true;

			// indica se a mensagem de indisponibilidade deve ser exibida
			// regra: se ValidateAllVariations for false, só irá exibir a mensagem no último nível
			// a regra de exibir inicialmente a mensagem de indisponibilidade na variação (primeiro nível) quando todas as opções estiverem indisponiveis é feita na função _adjustVariationsAvailability
			if ((isFirstVariation && !widget.options.ValidateAllVariations) ||  (!isFirstVariation && !widget.options.ValidateAllVariations && !isLastVariation)) {
				showUnavailableMessage = false;
			}

			if (isCombo) {
				// Se for combo
				var $select = $('.options select', $el);
				$select.find('option', $el).each(function() {
					var $option = $(this),
						val = $option.attr('value'),
						isEmpty = false;

					//app.log('---- _handleVariationsGroupOptions OPTION VAL --------', val ,'$options',$option);

					// Se for o Selecione | valor vazio
					if (!val) {
						isEmpty = true;
					}

					var selectorHTML = '';
					var _selectedOptions = _.clone(widget.selectedOptions);
					_selectedOptions[level] = val;
					_selectedOptions = _.compact(_selectedOptions);
					selectedOptionsPath = _selectedOptions.join('|');
					widget.$productVariations.find('.sku-option').each(function() {
						var $this = $(this),
							isValid = true,
							id = $this.attr('id');
						_.each(_selectedOptions, function(op) {
							if (id.indexOf(op) == -1) {
								isValid = false;
								// return;
							}
						})
						if (isValid) {
							selectorHTML += this.outerHTML;
						}
						// if($this.attr('id').indexOf(selectedOptionsPath) != -1)
						//     selectorHTML+=this.outerHTML;
					});

					// $related.find(".availability[value!=O][value!=S]")
					//         .length>0;
					var $related = $('<div>' + selectorHTML + '</div>').find('[id*="' + val + '"]');

					if (!widget.options.showAllGroups && $option.is(':selected')) {
						$select.val('');
					}

					if (!isEmpty) {
						if ($related.length || isFirstVariation) {
							var isValid = false;
							$related.each(function() {
								var $r = $(this);
								if ($r.find(".availability[value!=O][value!=S][value!=D]").length > 0)
									isValid = true;
							});
							if (isValid) {
								// remover mensagem de indisponível
								widget.handleAvailableMessage($option, true, isCombo);
								//$option.show();
								$option.attr('disabled', false).show();
							} else {
								//$inp.closest('label').addClass('unavailable');
								// add mensagem de indisponível
								if (showUnavailableMessage) widget.handleAvailableMessage($option, false, isCombo);
								$option.attr('disabled', false).show();
							}
						} else {
							// !!! deve desabilitar opção para corrigir bug de browsers mais antigos;
							$option.attr('disabled', true)
								.removeClass('unavailable')
								.hide();

						}
					}
				});
			} else {
				//isFirstVariation = false;
				// if(isFirstVariation || $el.find('label.selected').length > 0)
				//     return;
				$('.options label', $el).removeClass('unavailable').find('.option-text small').remove();

				$('.options input', $el).each(function() {
					var $inp = $(this),
						val = $inp.val();
					//$related = $('<div>'+$relatedOptions.html()+'</div>').find('[id*="'+val+'"]');

					var selectorHTML = '';
					var _selectedOptions = _.clone(widget.selectedOptions);
					_selectedOptions[level] = val;
					_selectedOptions = _.compact(_selectedOptions);
					selectedOptionsPath = _selectedOptions.join('|');

					widget.$productVariations.find('.sku-option').each(function() {
						var $this = $(this),
							isValid = true,
							id = $this.attr('id');
						_.each(_selectedOptions, function(op) {
							if (id.indexOf(op) == -1) {
								isValid = false;
								// return;
							}
						})
						if (isValid) {
							selectorHTML += this.outerHTML;
						}
						// if($this.attr('id').indexOf(selectedOptionsPath) != -1)
						//     selectorHTML+=this.outerHTML;
					});

					// $related.find(".availability[value!=O][value!=S]")
					//         .length>0;
					var $related = $('<div>' + selectorHTML + '</div>').find('[id*="' + val + '"]');
					if (!widget.options.showAllGroups && $inp.is(':checked')) {
						$inp.attr('checked', false)
							.closest('label')
							.removeClass('selected');
					}

					//$related.each(function(){

					if ($related.length || isFirstVariation) {
						var isValid = false;
						$related.each(function() {
							var $r = $(this);

							if ($r.find(".availability[value!=O][value!=S][value!=D]").length > 0)
								isValid = true;

						});
						var $label = $inp.closest('label');
						if (isValid) {
							// remover mensagem de indisponível
							widget.handleAvailableMessage($label, true, isCombo);
							$label.show();
						} else {
							//$inp.closest('label').addClass('unavailable');
							// add mensagem de indisponível
							if(showUnavailableMessage) widget.handleAvailableMessage($label, false, isCombo);
							$label.show();
						}
					} else {
						// TODO ver jeito de limpar o checked
						$inp //.attr('checked',false)
							.closest('label')
							.removeClass('unavailable')
							.removeClass('selected')
							.hide();

					}

				});
			}
		},

		handleAvailableMessage: function($el, isAvailable, isCombo) {
			var $self = this;
			if (!isAvailable) {
				if (isCombo) {
					$el.addClass('unavailable');
					if ($el.text().indexOf($self.options.unavailableText) < 1)
						$el.text($el.text() + $self.options.unavailableText);
				} else {
					$el.addClass('unavailable');
					var $b = $el.find('b');
					if ($b.text().indexOf($self.options.unavailableText) < 1)
						$b.html($b.text() + '<small>' + $self.options.unavailableText + '</small>');
				}
			} else {
				if (isCombo) {
					$el.removeClass('unavailable');
					$el.text($el.text().replace($self.options.unavailableText, ''));
				} else {
					$el.removeClass('unavailable');
					var $b = $el.find('b');
					$b.text($b.text().replace($self.options.unavailableText, ''));
				}

			}
		},

		// g - new
		_isReady: function($relatedOptions) {
			var widget = this,
				$w = this.getContext();
			return ($relatedOptions.length == 1 && _.compact(widget.selectedOptions).length == widget.options.variationsGroupCount)
		},

		// g- new
		_clearVariationOptions: function(index, value) {
			var widget = this,
				$w = this.getContext();

			var $group = $w('#option-' + index);
			if (index === 0) {
				$group = $w('.variation-group.first');
			}
			if ($group.hasClass('type-combo')) {
				$group.find('select').val('');
			} else {
				// TODO validar se é viável fazer resto do fluxo baseado no trigger do campo em questão
				// a fim de retirar a recursividade manual
				$group.find('input[value="' + value + '"]')
					.attr('checked', false)
					.closest('label')
					.removeClass('selected');
			}
			widget.selectedOptions[index] = undefined;

		},
		/***
		 * retorna os elementos html referentes a #product-variations dos metadados relacionados
		 * caso retorne vazio, recusrivamente vai removendo os os itens do array selectedOptions
		 * até encontrar um objeto, ou seja, nunca retornará vazio.
		 * return {object} jquery
		 ***/
		_getRelatedOptions: function() {
			var widget = this;
			var $productVariations = widget.$productVariations;
			var _selectedOptions;
			var selectedOptionsPath;

			function findRecursively() {
				var response = '';
				_selectedOptions = _.compact(widget.selectedOptions);
				selectedOptionsPath = _selectedOptions.join('|');
				$productVariations.find('.sku-option').each(function() {
					var $s = $(this),
						id = $s.attr('id'),
						isValid = true;
					_.each(_selectedOptions, function(selectedOption) {
						if (id.indexOf(selectedOption) == -1) {
							isValid = false;
							return;
						}
					});
					if (isValid) {
						response += this.outerHTML;
					}
				});
				//app.log('findRecursively response ',response, $(response));
				return response.length ? $(response) : false;
				//return $productVariations.find('div[id*="' + selectedOptionsPath + '"]');
			};
			// var $productVariations = widget.$productVariations;
			// var _selectedOptions = _.compact(widget.selectedOptions);
			// var selectedOptionsPath = _selectedOptions.join('|');

			// var $r = $productVariations.find('div[id*="' + selectedOptionsPath + '"]');
			var $r = findRecursively();
			while (!$r.length) {
				var lastSelectedOptions = _.last(_selectedOptions);
				var index = widget.selectedOptions.lastIndexOf(lastSelectedOptions);
				widget._clearVariationOptions(index, lastSelectedOptions);

				$r = findRecursively();

			};

			return $r;
		},

		// Busca o SKU na coleção de variações por SKU
		_getVariationBySKU: function(sku) {
			var variant = null;

			if (sku != '') {
				$.each(variants, function(i) {
					if (sku == htmlDecode(this.sku))
						variant = this;
				});
			}

			return variant;
		},

		// Busca o SKU na coleção de variações por ProductID
		_getVariationByProductID: function(productID) {
			var variant = null;

			if (productID != '') {
				$.each(variants, function(i) {
					if (productID == this.productID)
						variant = this;
				});
			}

			return variant;
		},

		// Busca o SKU na coleção de variações por variation path
		_getVariationByVariationPath: function(selectedOptions) {
			var $self = this,
				$el = [];
			selectedOptions = selectedOptions || $self.selectedOptions;
			selectedOptions = _.compact(selectedOptions);
			$self.$productVariations.find('.sku-option').each(function() {
				var paths = _.compact($(this).attr('id').split('|'));
				if (paths.length === selectedOptions.length) {
					var dif = _.difference(paths, selectedOptions);
					if (!dif.length) {
						$el = $(this);
					}
				}
			});

			return $el;
		},

		// Busca a variação com o menor preço e a seleciona
		//        _getLowestVariation : function () {
		//            if (variants.length > 1)
		//			{
		//				//seleciona por default a primeira variação (nao conta sku pai)
		//				var lowest = variants[1];

		//				//para cada variação na tela
		//				$.each(variants, function(i) {
		//					if (i!=0) {
		//						if (this.price < lowest.price) {
		//							lowest = this;
		//						}
		//					}
		//				});

		//				//seleciona a menor variação
		//				if(lowest!=null) {
		//					$.each(lowest.options, function(i) {
		//						if(i==0)
		//							$('.variation-group').find('#rd-var-group-'+this.id + '-' +this.value).click();
		//						else
		//							$('#option-'+i+' select').val(this.id + '.' + this.value).trigger('change');
		//					});
		//				}
		//			}
		//        },

		// Publica as informações da variação
		_publishVariationChanges: function() {
			var $self = this,
				$id = this.options.productId;
			//$id = this.element.attr('pid');

			//var $sku = $self.$productVariations.find("div[id='"+$self.selectedOptions.join('|')+"|']").find('.sku');
			// var selectedSKU = ($sku.length ? $sku.val() : '');

			var $sku = $self._getVariationByVariationPath($self.selectedOptions);
			var selectedSKU = ($sku.length ? $sku.find('.sku').val() : '');
			var variant = $self._getVariationBySKU(selectedSKU);

			// giovanni #8903 - removido o elemento hierarchyText de variationContent
			var variationContent = {
				hierarchy: _.compact($self.selectedOptions).join('|'),
				sku: variant
			};

			//app.log('publish variation change', variationContent, $self.selectedOptions);
			$self.element.data('variationContent', variationContent);

			// jeito antigo
			//var variationContent = { hierarchy: $self.options.variationHierarchy, sku : variant, hierarchyText: $self.options.variationHierarchyText };
			$self.publish('/wd/product/variation/changed/' + $id, {
				widget: $self,
				variationContent: variationContent
			});
		},

		// Verifica se existe uma variação na Hash Url e escolhe a mesma programaticamente
		_setCurrentVariation: function($id) {
			var $self = this,
				$w = this.getContext();

			if ($self.options.ignoreQueryString) {
				return;
			}

			var productVariationID = $id || $self._getUrlSearchParameter('v');
			if (productVariationID != "") {
				var variation = $self._getVariationByProductID(productVariationID);
				if (variation != null) {

					$.each(variation.options, function(i) {
						if (i === 0) {
							if ($w('.variation-group.first').hasClass('type-combo')) {
								$w('.variation-group.first select[name="rd-var-group"]').val(this.id + '.' + this.value).trigger('change');
							} else {
								$w('.variation-group').find('#rd-var-group-' + this.id + '-' + this.value).click();
							}
						} else {
							var $optionLevel = $w('#option-' + i);
							if ($optionLevel.hasClass('type-combo')) {
								$optionLevel.find('select').val(this.id + '.' + this.value).trigger('change');
							} else {
								$optionLevel.find('#rd-var-group-' + this.id + '-' + this.value).click();
							}
						}

					});
				}

			} else {
				var propertyPath = $self._getUrlSearchParameter('pp');

				if (propertyPath != '') {
					if ($('.variation-group.first').hasClass('combo')) {
						propertyPath = propertyPath.replace(/[/]/g, '');
						$('.variation-group.first select[name="rd-var-group"]').val(propertyPath).trigger('change');
					} else {
						propertyPath = propertyPath.replace(/[/]/g, '').replace('.', '-');
						$('.variation-group').find('#rd-var-group-' + propertyPath).click();
						$w(".subvariation-group").each(function(i, e) {
							$this = $(e);
							if ($this.hasClass("combo") && $this.find("select").find("option").size() == 2)
								$this.find("select").find("option").eq(1).attr("selected", "selected");
							else if (($this.hasClass("type-side-by-side") || $this.hasClass("type-radio") || $this.hasClass("type-color-pallete")) && $this.find(".options").find("label:visible").size() == 1)
								$this.find(".options").find("label:visible").click();
						})
					}
				} else {

					//giovanni:11062015: inserida variavel setFirst para controle se deverá ou não seta a primeira
					var setFirst = false;
					if (setFirst && variants && variants.length) {

						var firstPurchasable = null;

						for (var index = 0; index < variants.length; index++) {
							if (variants[index].isPurchasable) {
								firstPurchasable = variants[index];
								break;
							}
						}

						if (!firstPurchasable)
							firstPurchasable = variants[0];
						//cicero:22072013 : se descomentar vai trazer a opção default da variação marcada
						var opt = firstPurchasable.options[0];
						if (opt)
							$('.variation-group').find('#rd-var-group-' + opt.id + '-' + opt.value).click();
					}
				}
			}
		},

		_initOptionsList: function(pid) {
			var $self = this,
				$list = $self.element.find('.type-options-list'),
				$options = $list.find('.option-item');

			var handleBuyButton = function($opt) {
					var $buyButton = $('.wd-buy-button', $opt),
						$inputProductID = $('input[name="Products[0].ProductID"]', $buyButton),
						skuID = $inputProductID.length ? $inputProductID.val() : 0;
					if (!skuID) {
						$opt.hide();
					} else {
						$('.btn-buy', $buyButton).removeClass('must-verify');
						var $inputSkuID = $('input[name="Products[0].SkuID"]', $buyButton);
						$inputSkuID.val(skuID);
						$inputProductID.val(pid);
					}
				},
				handleNotifymeButton = function($opt) {
					$('.wd-product-notifywhenavailable .content', $opt).show();
					var $button = $('.bt-notifyme', $opt);
					$button.removeClass('must-validated');
					var $inputSkuID = $('.notify-form form input[name="SkuID"]', $opt);
					$inputSkuID.val($opt.data('item-pid'));
				};

			$options.each(function() {
				var $this = $(this);
				if ($('.wd-buy-button', $this).length) {
					handleBuyButton($this);
				} else if ($('.wd-product-notifywhenavailable', $this).length) {
					handleNotifymeButton($this);
				}
			});

			$(document).ready(function() {
				// esconder buybutton principal
				// esconder notifyme principal
				// esconder pricedescription principal
				$self.publish('/wd/product/variation/optionslist/init/' + $self.options.productId, {});
			});
		},

		// Inicia os dados da Hash da Url
		_initUrlHash: function() {
			var $self = this;

			var obj = document.location.hash.split('#');
			var x, temp;
			$self.options.hashData = {};

			if (obj.length > 1) {
				obj = obj[1].toString().split('&');

				for (x in obj) {
					temp = obj[x].toString().split('=');
					$self.options.hashData[temp[0]] = temp[1];
				}
			}
		},

		// Inicia os dados da pesquisa
		_initUrlSearch: function() {
			var $self = this;

			var obj = document.location.search.split('?');
			var x, temp;
			$self.options.searchData = {};

			if (obj.length > 1) {
				obj = obj[1].toString().split('&');

				for (x in obj) {
					temp = obj[x].toString().split('=');
					$self.options.searchData[temp[0]] = temp[1];
				}
			}
		},

		// Retorna algum parametro hash setado na url
		_getUrlHashParameter: function(name) {
			var $self = this;

			try {
				if ($self.options.hashData[name] != undefined)
					return $self.options.hashData[name];
			} catch (e) {}

			return "";
		},

		// Retorna algum parametro search setado na url
		_getUrlSearchParameter: function(name) {
			var $self = this;

			try {
				if ($self.options.searchData[name] != undefined)
					return $self.options.searchData[name];
			} catch (e) {}

			return "";
		},

		// Adiciona um parametro hash na url
		_addUrlHashParameter: function(name, value) {
			var $self = this;

			var x, temp = "";
			$self._initUrlHash();

			if (name != "") {
				$self.options.hashData[name] = value;

				for (x in $self.options.hashData) {
					if (temp != "")
						temp += '&';
					temp += x + "=" + $self.options.hashData[x];
				}
			}

			document.location.hash = temp;
		},
		// Executa a ação do change mesmo se o valor do select for alterado antes do carregamento do JS do widget
		// fix #CORE-4192
		_fixPrematureChange: function() {
			var $self = this,
				$element = $self.element,
				$w = this.getContext();

			var $prematures = $w(':checked, :selected').not('[value=""]');
			$prematures.each(function(i) {
				var $this = $(this);
				if ($this.is('option')) {
					$this.closest('select')
						.trigger('change');
				} else {
					$this.trigger('click');
				}
			});
			//$prematures.trigger('click');
			//app.log('_fixPrematureChange  $prematures ', $prematures);
		}

	});

})(jQuery, window, document);

}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/product.accessories/Scripts/wd.product.accessories.js*/
try{; (function($, window, document, undefined) {
	$.widget('wd.ProductAccessories',  $.wd.widget, {
		// Create
		_create: function () {
			var $widget = this,
				$w = $widget.getContext(),
				$form = $('#content-wrapper .wd-buy-button form').not('.js-login');
			$form.append('<div class="input-accessories"></div>');

			$w('select.accessory-variation').on('change', function(evt) {
				var $comboBox = $w(evt.target);
				var productID = $comboBox.val();

				// Altera a informação de ID do SKU no checkbox correspondente e dispara o evento de change.
				$w('input:checkbox', $comboBox.closest('.accessory-option'))
					.data('product-id', productID)
					.trigger('change');
			});

			$w('input:checkbox').on('change', function() {
				var items = [];
				$form.find('.input-accessories').empty();
				
				$w('input:checkbox:checked').each(function(k, v) {
					items.push({
						index: k,
						skuID: $(this).data('sku-id'),
						productID: $(this).data('product-id'),
						parentID: $(this).data('parent-id')
					});
				});

				var template = $w('#template-inputs').html();
				Mustache.parse(template);

				var rendered = Mustache.render(template, { items: items });
				$form.find('.input-accessories').append(rendered);

				var parent = $(this).closest('.accessory');

				if ($(this).is(':checked'))
					parent.addClass('selected');
				else 
					parent.removeClass('selected');
			});

			$w('select.accessory-variation')
				.trigger('change');
		}
	});

	//options defaults
	$.extend($.wd.ProductAccessories.prototype.options, {
		
	});
})(jQuery, window, document);
}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/product.gift/Scripts/wd.product.gift.js*/
try{;
(function($, window, document, undefined) {
	$.widget('wd.ProductGift', $.wd.widget, {
		// Create
		_create: function() {
			var $widget = this,
				$w = $widget.getContext(),
				$buyButton = $('#content-wrapper .wd-buy-button .btn-buy');

			// Verifica se o buy button já possui .must-validate
			if (!$buyButton.hasClass('must-validated')) {
				$widget._lockBuy();
			} else {
				$widget.options.hasMustValidate = true;
			}

			$widget._createInputs();
			$widget._subscribeVariation();
			$widget._listenError();
			$widget._binds();

			// Se ja possuir um .checked remover .must-validate dos buy buttons
			if ($w('.image.checked').length == 1) {
				var $elem = $w('.image.checked');

				$widget._addGift($elem.attr('data-widget-pid'), $elem.attr('data-widget-sku'), $elem.attr('data-widget-parentid'));

				if ($widget.options.hasMustValidate == false) {
					$widget._allowBuy();
				}
			} else {
				$buyButton.addClass('has-gift');
			}

			$(document).ready(function() {
				$widget.publish('/wd/product/gift/created', {});
			});
		},
		_subscribeVariation: function() {
			var $widget = this,
				$w = $widget.getContext(),
				//$id = $('#content-wrapper .wd-buy-button form input[name*="Products[0].ProductID"]').val();
				$id = $w().attr('data-widget-pid');

			$widget.subscribe('/wd/product/variation/changed/' + $id, function(e, args) {
				window.setTimeout((function() {
					var hasMustValidateYet = $('#content-wrapper .wd-buy-button .btn-buy').hasClass('must-validated');
					var hasChecked = $w('.image.checked').length;
					if (!hasMustValidateYet && !hasChecked) {
						//window.setTimeout($widget._lockBuy, 450);
						$widget._lockBuy();
						$widget.options.hasMustValidate = false;
					}

					//console.log('e',e,'args',args,'hasMustValidateYet',hasMustValidateYet,'hasChecked',hasChecked);
				}), 300)
			});
		},

		// _subscribeBuyButton: function(){
		// 	var $widget = this,
		// 		$w = $widget.getContext(),
		// 		$id = $('#content-wrapper .information .wd-buy-button form input[name*="Products[0].ProductID"]').val();
		// 	$widget.publish('/wd/product/variation/error/' + $id, function(){

		// 	});
		// },

		_binds: function() {
			var $widget = this,
				$w = $widget.getContext(),
				$list = $w('.wd-product-gift-list');

			if ($list.length) { //se for lista(com select fake)
				$w('.wd-product-gift-list ul').click(function(event) {
					var $this = $(this);
					$w('.error').remove();
					$this.toggleClass('open');
					event.stopPropagation();
				})
				$('html').click(function() {
					$w('.wd-product-gift-list ul').removeClass('open').scrollTop(0);

				})
				$w('.wd-product-gift-list ul li.unavailable').click(function() {
					$(this).closest('ul').scrollTop(0);
				})
				$w('.wd-product-gift-list ul li').not('.wd-option-title, .unavailable').click(function() {
					var $this = $(this);
					$w('li.image').removeClass('checked');
					$this.addClass('checked');
					$w('.wd-option-title').hide();
					$this.closest('ul').addClass('checked').scrollTop(0).prepend($this);
					$widget.element.addClass('checked');
					$widget._addGift($this.attr('data-widget-pid'), $this.attr('data-widget-sku'), $this.attr('data-widget-parentid'));
					if ($widget.options.hasMustValidate == false) {
						$widget._allowBuy();
					}
					$widget._removeHasGift();
				})
			} else { //se for inline
				$w('li.image').not('.unavailable').click(function() {
					var $this = $(this);
					$w('li.image').removeClass('checked');
					$this.addClass('checked');
					$widget.element.addClass('checked');
					$widget._addGift($this.attr('data-widget-pid'), $this.attr('data-widget-sku'), $this.attr('data-widget-parentid'))
					if ($widget.options.hasMustValidate == false) {
						$widget._allowBuy();
					}
					$widget._removeHasGift();
				})
			}
			//alert($widget.options.hasMustValidate);

		},
		_listenError: function($id) {
			var $self = this,
				$w = this.getContext(),
				$id = $w().attr('data-widget-pid');

			$self.subscribe('/wd/product/gift/selection/error/' + $id, function(e, args) {
				var errors = args.errors;
				if (errors && errors.length && errors[0].hasOwnProperty('msg')) {
					$w().append(errors[0].msg);
				}
			});

			$self.subscribe('/wd/buybutton/cleanerrors/' + $id, function() {
				$w('.error').remove();
			});
		},

		// Cria inputs hidden no formulario do Buy Button
		_createInputs: function() {
			var $widget = this,
				$w = $widget.getContext(),
				$form = $('#content-wrapper .wd-buy-button form').not('.js-login'),
				skuInput = '<input type="hidden" value="" name="Products[0].SelectedFreeItem[0].Sku">',
				productInput = '<input type="hidden" value="" name="Products[0].SelectedFreeItem[0].ProductID">';
			parentInput = '<input type="hidden" value="" name="Products[0].SelectedFreeItem[0].ParentID">';
			$form.append(skuInput + productInput + parentInput);
		},

		_addGift: function(productID, skuID, parentID) {
			var $widget = this,
				$w = $widget.getContext(),
				$form = $('#content-wrapper .wd-buy-button form').not('.js-login'),
				$skuInput = $form.find('[name="Products[0].SelectedFreeItem[0].Sku"]'),
				$productInput = $form.find('[name="Products[0].SelectedFreeItem[0].ProductID"]');
			$parentInput = $form.find('[name="Products[0].SelectedFreeItem[0].ParentID"]');

			$productInput.val(productID);
			$skuInput.val(skuID);
			$parentInput.val(parentID);

			$widget.publish('/wd/product/gift/selected', {
				productID: productID,
				skuID: skuID,
				parentID: parentID
			});
		},

		_allowBuy: function() {
			var $widget = this,
				$w = $widget.getContext();
			$w('.error').remove();
			$('#content-wrapper .wd-buy-button .btn-buy').removeAttr('disabled').removeClass('disabled').removeClass('must-validated');
		},

		_lockBuy: function() {
			var $widget = this,
				$w = $widget.getContext(),
				$id = $w().attr('data-widget-pid');
			//$('#content-wrapper .wd-buy-button .btn-buy').addClass('must-validated');
			$widget.publish('/wd/buybutton/mustvalidated/' + $id, {
				mustValidated: true
			});
		},

		_removeHasGift: function() {
			var $widget = this,
				$w = $widget.getContext(),
				$id = $w().attr('data-widget-pid');
			$('#content-wrapper .wd-buy-button .btn-buy').removeClass('has-gift');
			$widget.publish('/wd/buybutton/mustvalidated/' + $id, {
				mustValidated: false
			});
		}
	});

	//options defaults
	$.extend($.wd.ProductGift.prototype.options, {
		hasMustValidate: false
	});
})(jQuery, window, document);

}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/product.amount/Scripts/wd.product.amount.js*/
try{(function($, window, document, undefined) {
	$.widget('wd.ProductAmount', $.wd.widget, {
		// Create Function
		_create: function() {
			var widget = this,
				$id = widget.element.attr('data-widget-pid'),
				$buybutton = $('.information .wd-buy-button .btn-buy');

			if (!Array.indexOf) {
				Array.prototype.indexOf = function(obj) {
					for (var i = 0; i < this.length; i++) {
						if (this[i] == obj) {
							return i;
						}
					}
					return -1;
				};
			}

			if ($buybutton.hasClass('must-validate')) {
				widget.options.validateBuyButton = true;
			}

			widget._bindEvents();

			if ($('.buy-group', widget.element).length) {
				var dataJS = widget.element.attr('data-js'),
					variationCount;
				dataJS = jQuery.parseJSON(dataJS);
				variationCount = parseInt(dataJS.VariationCount);
				//$('wrapper .information .wd-product-variations').hide();
				if (variationCount == 1) {
					widget._adjustSingleAmountByGroup();
					widget._adjustNotifyme(true);
				} else {
					widget._adjustMultiplesAmountsByGroup();
				}
				widget.subscribe('/wd/product/variation/error/' + $id, function() {
					app.modal({
						html: '<div class="error">Escolha a quantidade de pelo menos um dos itens.</div>',
						width: 340,
						height: 160,
						className: 'variation-error-choose-item-modal'
					});
				});
			} else {
				widget._subscribeEvents();
				widget._bindButtons();
			}

		},
		_subscribeEvents: function() {
			var $self = this,
				$id = $self.element.attr('data-widget-pid');

			$self.subscribe('/wd/product/variation/changed/' + $id, function(e, args) {
				if (args.variationContent.sku) {
					$self._adjustSingleAmount(args.variationContent.sku);
				} else {
					$('input.js-qty', $self.element).attr('data-quantity-min', '').attr('data-quantity-max', '').attr('data-stock', '').addClass('withou-sku');
					$self._bindEvents();
				}
			});
		},
		_publishSingleAmountChange: function(val) {
			var $self = this;

			$self.publish('/wd/product/amount/single/changed', {
				quantity: val
			});
		},
		_adjustSingleAmount: function(sku) {
			var $self = this,
				$id = $self.element.attr('data-widget-pid'),
				$input = $('input.js-qty', $self.element),
				quantityMin = parseInt(sku.MinimumQtyAllowed),
				quantityMax = parseInt(sku.MaximumQtyAllowed);
			$input.attr('data-quantity-min', quantityMin)
				.attr('data-quantity-max', quantityMax)
				.attr("data-stock", parseInt(sku.StockBalance))
				.removeClass('withou-sku');
			$self._bindEvents();

			if (sku.isPurchasable && $input.val() == '0') {
				$input.val(1);
			}

			window.setTimeout((function() {
				$self._changeValue($input)
			}), 200);
		},

		_adjustSingleAmountByGroup: function() {
			var $self = this,
				$id = $self.element.attr('data-widget-pid'),
				_skuIDs = new Array();
			$('.buy-group .js-qty', $self.element).each(function() {
				_skuIDs.push($(this).attr('data-skuoption-id'));
			});
			for (i in variants) {
				if (variants[i].options.length) {
					for (ii in variants[i].options) {
						if (_skuIDs.indexOf(variants[i].options[ii].value) != -1 && variants[i].productID != $id) {
							var _skuVal = variants[i].options[ii].value,
								$this = $('.buy-group .js-qty[data-skuoption-id="' + _skuVal + '"]', $self.element);
							$this.attr('data-quantity-max', parseInt(variants[i].MaximumQtyAllowed));
							$this.attr('data-quantity-min', parseInt(variants[i].MinimumQtyAllowed));
							$this.attr('data-sku-id', parseInt(variants[i].productID));
							$this.attr('data-stock', parseInt(variants[i].StockBalance));
							if (variants[i].isPurchasable != false) {
								//$this.attr('disabled','disabled');
								//$this.closest('.box').addClass('not-purchasable');

								// invertida a lógica
								$this.removeAttr('disabled');
								$this.closest('.box').removeClass('not-purchasable');
							}
						}
					}
				}
			}
		},

		_adjustMultiplesAmountsByGroup: function() {
			var $self = this,
				$id = $self.element.attr('data-widget-pid'),
				_skuIDs = new Array();

			var dataJS = $self.element.attr('data-js'),
				variationCount;
			dataJS = jQuery.parseJSON(dataJS);
			variationCount = parseInt(dataJS.VariationCount);
			$('.buy-group .js-qty', $self.element).each(function() {
				_skuIDs.push($(this).attr('data-skuoption-id'));
			});
			for (i in variants) {
				if (variants[i].options) {
					var enter = false,
						ctrl = 0;
					for (ii in variants[i].options) {
						if ((_skuIDs.indexOf(variants[i].options[ii].value) != -1 && variants[i].productID != $id) || enter == true) {
							if (enter == false) { //roda apenas a primeira vez
								var _skuVal = variants[i].options[ii].value;
							}
							if (variants[i].options[ii].value != '0' && variants[i].options[ii].value != '' && variants[i].options[ii].value != 0) {
								var $this = $('.buy-group .js-qty[data-skuoption-id="' + _skuVal + '"]', $self.element),
									$box = $this.closest('.box');
								if (enter == false) {
									if (variants[i].isPurchasable != false) {

										// $this.attr('disabled','disabled');
										// $box.addClass('not-purchasable');

										//Invertida a lógica
										$this.removeAttr('disabled');
										$box.removeClass('not-purchasable');
									}
								}
								if ($box.find('.sub-variation[data-variation-name="' + variants[i].options[ii].name + '"]').length) {
									//se ja existir subvariação do item
									if ($box.find('.sub-variation[data-variation-name="' + variants[i].options[ii].name + '"]').hasClass('final') == false && $box.find('.sub-variation[data-variation-name="' + variants[i].options[ii].name + '"] option[data-variation-alias="' + variants[i].options[ii].title + '"]').length) {
										//se for a primeira variação e tiver uma outra variação no mesmo grupo com o mesmo nome
										var $obj = $box.find('.sub-variation[data-variation-name="' + variants[i].options[ii].name + '"] option[data-variation-alias="' + variants[i].options[ii].title + '"]');
										$obj.attr('data-variation-id', $obj.attr('data-variation-id') + '|' + variants[i].productID);
									} else {
										var opt = '<option data-variation-alias="' + variants[i].options[ii].title + '" data-variation-id="' + variants[i].productID + '" value="' + variants[i].productID + '">' + variants[i].options[ii].title + '</option>';
										$box.find('.sub-variation[data-variation-name="' + variants[i].options[ii].name + '"]').append(opt);
									}
								} else {
									//se nao existir subvariação referente ao item
									var disabled = '';
									var final_ = '';
									var init = '';
									var dataVariation = 'data-variation-alias="' + variants[i].options[ii].title + '" data-variation-id="' + variants[i].productID + '"';
									// if (ctrl != 1) {
									//     disabled = 'disabled = "disabled"';
									// }
									if (ctrl != 1 || variants[i].isPurchasable == false) {
										disabled = 'disabled = "disabled"';
									}
									if (ctrl == 1) {
										init = 'initial ';
									}
									if (ctrl == (variationCount - 1)) {
										final_ = 'final'
									}
									var select = '<select ' + disabled + ' class="' + init + final_ + ' sub-variation" data-variation-name="' + variants[i].options[ii].name + '">';
									select += '<option value="0" class="opt-title">' + variants[i].options[ii].name + '</option>';
									select += '<option ' + dataVariation + ' value="' + variants[i].productID + '">' + variants[i].options[ii].title + '</option>';
									select += '</select>';

									if (ctrl != 0) {
										$box.append(select);
									}

									ctrl++;
								}

								enter = true;
							}

							// $this.attr('data-quantity-max',parseInt(variants[i].MaximumQtyAllowed));
							// $this.attr('data-quantity-min',parseInt(variants[i].MinimumQtyAllowed));
							// $this.attr('data-sku-id',parseInt(variants[i].productID));
						}

					}
				}

			}

		},
		_adjustAmountsByVariation: function() {
			var $self = this,
				$id = $self.element.attr('data-widget-pid'),
				_skuIDs = new Array();
			$('.buy-group .js-qty', $self.element).each(function() {
				_skuIDs.push($(this).attr('data-skuoption-id'));
			});
			for (i in variants) {
				if (variants[i].options.length) {
					for (ii in variants[i].options) {
						if (_skuIDs.indexOf(variants[i].options[ii].value) != -1 && variants[i].productID != $id) {
							var _skuVal = variants[i].options[ii].value,
								$this = $('.buy-group .js-qty[data-skuoption-id="' + _skuVal + '"]', $self.element);
							$this.attr('data-quantity-max', parseInt(variants[i].MaximumQtyAllowed));
							$this.attr('data-quantity-min', parseInt(variants[i].MinimumQtyAllowed));
							$this.attr('data-stock', parseInt(variants[i].StockBalance));
							$this.attr('data-sku-id', parseInt(variants[i].productID));
						}
					}
				}
			}

			$self._changeValue($this);
		},

		_adjustAmountsByPIDVariation: function($elem) {
			var $self = this,
				$id = $self.element.attr('data-widget-pid'),
				elemPID = $elem.attr('data-pid');

			$elem.attr('data-quantity-max', '');
			$elem.attr('data-quantity-min', '');
			$elem.attr('data-sku-id', '');
			for (i in variants) {
				if (variants[i].productID == elemPID && variants[i].productID != $id) {
					$elem.attr('data-quantity-max', parseInt(variants[i].MaximumQtyAllowed));
					$elem.attr('data-quantity-min', parseInt(variants[i].MinimumQtyAllowed));
					$elem.attr('data-sku-id', parseInt(variants[i].productID));
					$elem.attr('data-stock', parseInt(variants[i].StockBalance));
					$self._changeValue($elem);
				}
			}

		},

		_getResultPID: function(thisOptVal, $box) {
			var $self = this,
				dataJS = $self.element.attr('data-js'),
				log = 0,
				result = new Array(),
				$subvariations,
				variationCount;
			dataJS = jQuery.parseJSON(dataJS);
			variationCount = parseInt(dataJS.VariationCount) - 2; //menos 2 pois desconsidera o primeiro e o ultimo select
			$subvariations = $('.sub-variation', $box).not('.final');
			if (thisOptVal.length) {
				for (i in thisOptVal) {
					var ctrl = 0;
					$subvariations.each(function() {
						var $this_ = $(this),
							thisVal_ = $this_.val(),
							$elem_ = $this_.find('option[value="' + thisVal_ + '"]'),
							thisVariation = $elem_.attr('data-variation-id');
						thisVariation = thisVariation.split("|");
						for (cc in thisVariation) {
							if (thisVariation[cc] == thisOptVal[i]) {
								ctrl++
								//console.log('entrou--', thisOptVal[i]);
								if (ctrl >= log) {
									log = ctrl;
									if (variationCount == log) {
										result.push(thisVariation[cc]);
									}
								}
							}
						}

					})
				}
			}
			//console.log('variationCount', variationCount, 'ctrl', ctrl, 'log', log, 'result', result);
			return result;
		},

		// Publica as informações da variação
		_publishVariationChanges: function($element) {
			var $self = this,
				$id = this.element.attr('data-widget-pid'),
				$box = $element.closest('.box');

			var dataVariation = $box.find('.color-title').attr('data-variation');
			var $sku = $('#product-variations').find("div[id*='" + dataVariation + "|']").find('.sku');
			var selectedSKU = ($sku.length ? $sku.val() : '');
			var variant = $self._getVariationBySKU(selectedSKU);
			var hideBuyButton = false;
			if ($box.hasClass('not-purchasable')) {
				hideBuyButton = true;
			}
			//var variationContent = { hierarchy: dataVariation, sku : variant };
			var variationContent = {
				hierarchy: dataVariation,
				sku: variant,
				noPriceChange: true,
				hideBuyButton: hideBuyButton
			};
			$self.publish('/wd/product/variation/changed/' + $id, {
				widget: this,
				variationContent: variationContent
			});
		},

		// Busca o SKU na coleção de variações por SKU
		_getVariationBySKU: function(sku) {
			var variant = null;
			if (sku != '') {
				$.each(variants, function(i) {
					if (sku == this.sku) {
						variant = this;
					}
				});
			}

			return variant;
		},

		// Efetua o bind nos campos do widget
		_bindEvents: function() {
			var $self = this,
				$body = $('body'),
				dataJS = $self.element.attr('data-js'),
				variationCount;
			dataJS = jQuery.parseJSON(dataJS);
			variationCount = parseInt(dataJS.VariationCount) - 1,
				$id = $self.element.attr('data-widget-pid');
			$('.js-qty', $self.element).not('.withou-sku').bind('change', function() {
				var $this = $(this),
					$box = $this.closest('.box'),
					$subvariations = $box.find('.sub-variation');

				if ($subvariations.length) {
					$self._adjustAmountsByPIDVariation($this);
					$self._publishSingleAmountChange(parseInt(($this.val() || '1')));
				} else {
					$self._changeValue($(this));
					//aqui
				}

				$self._adjustBuyButton();
			});

			$body.on('change', '.sub-variation.final', function() {
				var $this = $(this),
					$box = $this.closest('.box'),
					thisVal = $this.val(),
					result = '',
					log = 0,
					$subvariations = $box.find('.sub-variation').not('.final'),
					thisOptVal = $this.find('option[value="' + $this.val() + '"]').attr('data-variation-id');

				if (thisVal != '0') {

					$box.find('.js-qty').attr('data-pid', thisVal);
				} else {
					var oldVal = $box.find('.js-qty').attr('data-pid');
					$box.find('.js-qty').attr('data-pid', '');
					$('.wd-buy-button form input[value="' + oldVal + '"][name*="SkuID"]').val('');
				}

				$self._adjustAmountsByPIDVariation($box.find('.js-qty'));
				$self._adjustBuyButton();
			});

			$body.on('change', '.sub-variation:not(.final)', function() {
				var $this = $(this),
					$box = $this.closest('.box'),
					$subvariations = $box.find('.sub-variation').not('.initial'),
					thisVal = $this.val(),
					thisOptVal = $this.find('option[value="' + $this.val() + '"]').attr('data-variation-id'),
					$next = $this.next('.sub-variation');
				if (thisVal != '0') {
					thisOptVal = thisOptVal.split("|");
					if ($next.hasClass('final')) { // se a proxima .sub-variation for .final
						result = $self._getResultPID(thisOptVal, $box);
						$next.find('option').not('.opt-title').hide();
						for (i in result) {
							$next.find('option[data-variation-id="' + result[i] + '"]').show();
						}
						$next.removeAttr('disabled').addClass('selected');
					} else {
						$subvariations.find('option').not('.opt-title').hide();
						for (i in thisOptVal) {
							//console.log('thisOptVal[i]',thisOptVal[i]);
							$subvariations.find('option[data-variation-id*="' + thisOptVal[i] + '"]').show();
						}

						$this.nextAll('.sub-variation').attr('disabled', 'disabled').removeClass('selected').val('0');
						$this.next('.sub-variation').removeAttr('disabled').addClass('selected').val('0');
						$box.find('.js-qty').attr('data-pid', '');

					}
				} else {
					$this.nextAll('.sub-variation').attr('disabled', 'disabled').removeClass('selected').val('0');
					$box.find('.js-qty').attr('data-pid', '');
				}

				$self._adjustAmountsByPIDVariation($box.find('.js-qty'));
			});

			$('.color-box , .color-title', $self.element).click(function() {
				$self._publishVariationChanges($(this));
				var $box = $(this).closest('.box'),
					$input = $box.find('.js-qty'),
					inputVal = $input.val();
				if (!$box.hasClass('not-purchasable')) {
					if (inputVal == '') {
						// $input.val('1').trigger('change');
					} else if (inputVal == '1') {
						// $input.val('').trigger('change');
					}
				} else {
					//$('.information .wd-product-notifywhenavailable .bt-notifyme').removeClass('must-validated').trigger('click');
				}

			});

			$(document).ready(function() {
				$self._fixPrematureChange();

			});
		},

		//efetua bind nos controles do widget
		_bindButtons: function() {
			var $self = this;

			$('.js-qty-less', $self.element).click(function() {
				var $inp = $('.js-qty', $self.element);
				var inputVal = parseInt($inp.val());
				var inputNewVal = inputVal - 1;
				//$inp.val(inputVal-1);
				if ($('.js-qty.withou-sku', $self.element).length) {
					if ((inputNewVal) < 1) {
						$('.js-qty-less', $self.element).attr('disabled', 'disabled');
					} else {
						//aqui tratar melhor o change com o desable dos botoes!!!!
						$inp.val(inputNewVal).trigger('change');
						$self._publishSingleAmountChange(inputNewVal);
					}
				} else {
					$inp.val(inputNewVal).trigger('change');
					$self._changeValue($inp);
				}
			});
			$('.js-qty-more', $self.element).click(function() {

				var $inp = $('.js-qty', $self.element);
				var inputVal = parseInt($inp.val());
				var inputNewVal = inputVal + 1;
				$inp.val(inputNewVal).trigger('change');
				if ($('.js-qty.withou-sku', $self.element).length) {
					$('.js-qty-less', $self.element).removeAttr('disabled');
					$self._publishSingleAmountChange(inputNewVal);
				} else {
					$self._changeValue($inp);
				}
			});
		},
		_adjustCtrlButtons: function(newVal, max, min) {
			var $self = this;
			newVal = parseInt(newVal);
			//button less
			if (min > 0 && newVal <= min) {
				$('.js-qty-less', $self.element).attr('disabled', 'disabled');
			} else {
				$('.js-qty-less', $self.element).removeAttr('disabled');
			}

			//button more
			if (max > 0 && newVal >= max) {
				$('.js-qty-more', $self.element).attr('disabled', 'disabled');
			} else {
				$('.js-qty-more', $self.element).removeAttr('disabled');
			}
		},
		_openModal: function(data) {
			var $self = this;

			if ($self.options.disableModal) {
				return;
			}

			$self.modal(data);
		},
		_changeValue: function($this) {
			var $self = this;
			var quantityMax = parseInt($this.attr('data-quantity-max')),
				quantityMin = parseInt($this.attr('data-quantity-min')),
				stock = parseInt($this.attr('data-stock')),
				thisValue = parseInt($this.val()),
				name = $this.closest('.box').find('.wd-title').text(),
				dataJS = $self.element.attr('data-js');
			dataJS = jQuery.parseJSON(dataJS);

			var changeVal = function(val) {
				$this.val(val);
			};

			//if(dataJS.ShowErrorsNotLogged || dataJS.IsLogged){
			if (thisValue > stock) {
				var replacements = {
					name: name.toLowerCase(),
					stock: stock
				};
				// var lowStockMessage = this.options.lowStockMessage || 'O estoque disponível para o item %name% é de %stock% unidade(s)';
				// lowStockMessage = lowStockMessage.replace(/%\w+%/gi, function(match) {
				//     return replacements[match.toLowerCase().replace(/%/g, '')];
				// });
				// $self._openModal({
				//     element: '<div class="low-stock"><p class="alert alert-error">' + lowStockMessage + '</p></div>',
				//     'class': 'wd-product-variations',
				//     className: 'wd-product-variations-modal'
				// });
				//$this.val(stock);
				changeVal(stock);
			}

			if ((quantityMin > 1 && thisValue < quantityMin) || thisValue < 0) {
				$self._openModal({
					element: '<div class="low-stock"><p class="alert alert-error">A quantidade mínima para o item ' + name.toLowerCase() + ' é de ' + quantityMin + ' unidade(s)</p></div>',
					'class': 'wd-product-variations',
					className: 'wd-product-variations-modal'
				});
				// $this.val(quantityMin);
				changeVal(quantityMin);
			}
			if (quantityMax >= 1 && thisValue > quantityMax) {
				$self._openModal({
					element: '<div class="low-stock"><p class="alert alert-error">A quantidade máxima para o item ' + name.toLowerCase() + ' é de ' + quantityMax + ' unidade(s)</p></div>',
					'class': 'wd-product-variations',
					className: 'wd-product-variations-modal'
				});
				// $this.val(quantityMax);
				changeVal(quantityMax);
			}
			//}
			if ($this.hasClass('single')) { //////// se for SINGLE
				var $wdBuyButtonForm = $('.wd-buy-button').find('form').not('.js-login'),
					newVal = $this.val();

				$self._publishSingleAmountChange(newVal);

				$wdBuyButtonForm.find('input[name="Products[0].Quantity"]').val(newVal);
				$self._adjustCtrlButtons(newVal, quantityMax, quantityMin);
			} else { /////// se for MULTIPLE
				$self._handleAmountChange($this);
			}

		},
		// Insere ou remove variações de produto ao form formBuyButton
		_handleAmountChange: function($element) {
			var $self = this,
				_val = $element.val(),
				$id = $self.element.attr('data-widget-pid'),
				_sku = $element.attr('data-sku-id'),
				$wdBuyButtonForm = $('.wd-buy-button').find('form').not('.js-login'),
				first = false,
				index = null;

			if ($wdBuyButtonForm.find('input[name="Products[0].SkuID"]').val() == '') {
				first = true;
			} else {
				$wdBuyButtonForm.find('input[name*="SkuID"]').each(function() {
					if ($(this).val() == _sku) {
						index = $(this).attr('name');
						index = index.replace('Products[', '').replace(']', '');
						index = parseInt(index);
					}
				});
			}
			if (_val == '' || _val == '0') {
				if (index != null) {
					if (index == 0) {
						if ($wdBuyButtonForm.find('input[name="Products[' + (index + 1) + '].SkuID"]').length) {
							$wdBuyButtonForm.find('input[name="Products[' + index + '].Quantity"]').remove();
							$wdBuyButtonForm.find('input[name="Products[' + index + '].SkuID"]').remove();
							$wdBuyButtonForm.find('input[name="Products[' + index + '].ProductID"]').remove();
						} else {
							$wdBuyButtonForm.find('input[name="Products[' + index + '].Quantity"]').val('1');
							$wdBuyButtonForm.find('input[name="Products[' + index + '].SkuID"]').val('');
						}
					} else {
						$wdBuyButtonForm.find('input[name="Products[' + index + '].Quantity"]').remove();
						$wdBuyButtonForm.find('input[name="Products[' + index + '].SkuID"]').remove();
						$wdBuyButtonForm.find('input[name="Products[' + index + '].ProductID"]').remove();
					}
				}

			} else {
				if (first == true) {
					$wdBuyButtonForm.find('input[name="Products[0].Quantity"]').val(_val);
					$wdBuyButtonForm.find('input[name="Products[0].SkuID"]').val(_sku);
				} else {
					if (index != null) {
						$wdBuyButtonForm.find('input[name="Products[' + index + '].Quantity"]').val(_val);
						$wdBuyButtonForm.find('input[name="Products[' + index + '].SkuID"]').val(_sku);
					} else {
						$wdBuyButtonForm.append('<input type="hidden" value="' + _sku + '" name="Products[0].SkuID">');
						$wdBuyButtonForm.append('<input type="hidden" value="' + $id + '" name="Products[0].ProductID">');
						$wdBuyButtonForm.append('<input type="hidden" value="' + _val + '" name="Products[0].Quantity">');
					}
				}
			}

			$self._reorderInputsBuyButtonForm();

			//remove must-validate do buy-button se algum input estiver preenchido
			$self._adjustBuyButton();
		},

		//reordena inputs hidden do form buybutton
		_reorderInputsBuyButtonForm: function() {
			$('.wd-buy-button form').not('.js-login').each(function() {
				$(this).find('input[name*="SkuID"]').each(function(i) {
					var indx = $(this).attr('name');
					indx = indx.replace('Products[', '').replace('].SkuID', '');
					$(this).attr('name', $(this).attr('name').replace(indx, i));
				});
				$(this).find('input[name*="ProductID"]').each(function(i) {
					var indx = $(this).attr('name');
					indx = indx.replace('Products[', '').replace('].ProductID', '');
					$(this).attr('name', $(this).attr('name').replace(indx, i));
				});
				$(this).find('input[name*="Quantity"]').each(function(i) {
					var indx = $(this).attr('name');
					indx = indx.replace('Products[', '').replace('].Quantity', '');
					$(this).attr('name', $(this).attr('name').replace(indx, i));
				});
			});
		},
		_adjustNotifyme: function(isValid) {
			if (isValid) {
				$('.information .wd-buy-button .btn-buy').addClass('must-validated');

			} else {
				$('.information .wd-buy-button  .btn-buy').removeClass('must-validated').removeClass('disabled').removeAttr('disabled');
			}
		},

		_adjustBuyButton: function() {
			var $self = this,
				dataJS = $self.element.attr('data-js'),
				isEmpty = true,
				$btns = $('.wd-buy-button .btn-buy'),
				variationCount;
			dataJS = jQuery.parseJSON(dataJS);
			variationCount = parseInt(dataJS.VariationCount);
			$('.buy-group .js-qty', $self.element).each(function() {
				if (variationCount > 1) {
					if ($(this).attr('data-pid') != '' && $(this).val() != '') {
						isEmpty = false;
					}
				} else {
					if ($(this).val() != '' && $(this).val() != '0') {
						isEmpty = false;
					}
				}
			});
			if (isEmpty == false) {
				$btns.removeClass('must-validated').removeClass('disabled').removeAttr('disabled');
			} else if ($self.options.validateBuyButton) {
				$btns.addClass('must-validated');
			}
		},

		_fixPrematureChange: function() {
			var $self = this;
			var $buyGroup = $('.buy-group .js-qty', $self.element);
			var $subVariation = $('.buy-group .sub-variation', $self.element);
			if ($buyGroup.length) {
				$buyGroup.val('');
			}
			if ($subVariation.length) {
				$subVariation.val('0');
			}
		}
	});

	//options defaults
	$.extend($.wd.ProductAmount.prototype.options, {
		validateBuyButton: false,
		disableModal: false
	});

}(jQuery, window, document));

}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/product.buybutton/Scripts/wd.product.buybutton.js*/
try{(function($, window, document, undefined) {

	var submitHandlerHelper = {};
	var _class = {};

	_class.btnBuy = 'btn-buy';
	_class.mustValidated = 'must-validated';
	_class.mustVerify = 'must-verify';
	_class.hasGift = 'has-gift';
	_class.isGiftCertificate = 'is-gift-certificate';
	_class.buying = 'buying';

	submitHandlerHelper.getProductData = function(data) {
		var productData = {};

		_.each(data, function(val, key) {
			if (!!~key.indexOf('Products[0]')) {
				productData[key] = val;
			}
		});

		return productData;
	};

	submitHandlerHelper.cloneProductData = function(productData, index) {
		var cloned = {};

		_.each(productData, function(val, key) {
			key = key.replace(/\[\d*\]/, '[' + index + ']');
			cloned[key] = val;
		});

		return cloned;
	};

	submitHandlerHelper.appendError = function(data, errorMessage) {
		data.errors = data.errors || [];

		data.errors.push(errorMessage);
	};

	submitHandlerHelper.cleanData = function(productData) {
		_.each(productData, function(val, key) {
			if (key !== 'error') {
				delete productData[key];
			}
		});
	};

	$.widget('wd.ProductBuyButton', $.wd.widget, {

		_create: function() {

			var $widget = this,
				$element = $widget.element,
				$form = $('form', $element).not('.js-login, .frm-oneclickbuy'),
				$btnBuy = $('.' + _class.btnBuy, $element),
				$id = this.options.productId,
				//$skuID = $('input[name="Products[0].SkuID"]', $element),
				$baseUrl = $('input[name="BaseUrl"]', $element).val(),
				$basketInModal = $btnBuy.data('basket-in-modal') || false,
				isMix = $form.data('ismix') || false,
				$callbackModalAjax = $btnBuy.data('callback-modal-ajax') || false,
				queryString = window.location.search.slice(1).replace(/\&amp;/g, '&');

			if (queryString) {
				queryString = app.tools.sanitizeString(queryString);
				$element.find('input[name="QueryString"]').val(queryString);
			}

			//var $hasVariation = $('input[name="Products[0].Variations"]', $element).val();
			$widget.isUponRequest = $('.wd-product-uponrequest').length > 0;

			if ($.wd.hasOwnProperty('ProductBuyGrid') || $.wd.hasOwnProperty('ProductBuyGridList') || $.wd.hasOwnProperty('ProductBuyGridComponent')) {
				$widget.options.mustCheckSkuSelected = false;
			}

			if (!$id) {
				console.warn('O widget ProductBuyButton está configurado incorretamente, é necessário definir um jsoptions contendo productId', $widget);
			}

			function buyingActions(start) {
				if (start) {
					$element.addClass(_class.buying);
					$btnBuy.hide();
					$('.loading-buy', $element).css('display', 'block');
				} else {
					$element.removeClass(_class.buying);
					$btnBuy.show();
					$('.loading-buy', $element).css('display', 'none');
				}
			}

			function buy(baseParams) {
				baseParams = baseParams || {};
				// var $serialized = {};
				var $serialized = $.extend({}, baseParams);

				if ($widget.options.hasBuyGrid) {
					$widget._removeEmptyInputs();
					// tem que rodar depois
					$widget._handleFreeItemsInputs();
				}

				$(':input', $form).each(function() {

					var $this = $(this);
					$serialized[$this.attr('name')] = $this.val();

				});

				$widget._executeCustomHandlers($serialized);

				if ($serialized.hasOwnProperty('errors') && $serialized.errors.length) {
					$widget._showErros($serialized);
					$widget.publish('basket/error', {
						errors: $serialized.errors
					});
					return;
				}

				if ($basketInModal) {

					$.extend($serialized, {
						basketInModal: true,
						baseUrl: $baseUrl
					});

				}

				if ($callbackModalAjax) {

					$.extend($serialized, {
						callbackModalAjax: true
					});

				}

				if (isMix) {

					$.extend($serialized, {
						isMix: true
					});

				}

				var paramsAddProduct = {
					params: $serialized,
					redirectTo: $baseUrl + 'carrinho',
					urlBasket: $('form', $element).attr('action')
				};

				if (window.self !== window.top && window.top.$) {
					top.$.publish('basket/add', paramsAddProduct);
				} else {
					$.publish('basket/add', paramsAddProduct);
				}

				if ($('.btn-buy').hasClass('loader')) {
					$form.find('.btn-buy').addClass('start');
				} else {
					// $element.addClass('buying');
					// $btnBuy.hide();
					// $('.loading-buy', $widget.element).css('display', 'block');

					buyingActions(true);
				}

			}

			$widget.buy = buy;

			var checker = {};
			/*
			se for necessário confirmar variações antes de colocar no carrinho.
			deverá retornar FALSE caso a validação não seja necessária, do contrário retorna TRUE
			*/
			checker.confirmVariation = function() {

				function buildMessage() {

					var variationTxt = '';
					// vaar = optsLenght = $widget.selectedSku.options.length;

					_.each($widget.selectedSku.options, function(o) {
						variationTxt += '<br><b>' + o.name + ': <span>' + o.title + '</span></b>';
					});
					var msg = $widget.options.confirmationText;
					//msg = msg.replace('{{variation}}','<b>'+variationTxt+'</b>');
					msg += '<br><span>' + variationTxt + '</span>';
					msg = '<div class="dialog-buybutton-verification">' + msg + '</div>';

					return msg;

				}

				function openModal(msg) {

					$widget.success({
						message: msg,
						'class': 'modal-dialog-buybutton-verification',
						className: 'modal-dialog-buybutton-verification',
						width: $widget.options.verificationModal.width,
						//height:'auto',
						height: $widget.options.verificationModal.height,
						containerCss: {
							//width:'380px',
							width: $widget.options.verificationModal.width,
							height: $widget.options.verificationModal.height //'auto' não funciona
						},
						buttons: [{
							'class': 'no',
							label: JSResource.No + ', alterar',
							onclick: function() {
								$.publish('browsingModal/closeModal/', {});
								$.colorbox.close();
								$.modal().close();
							}
						}, {
							'class': 'yes',
							label: JSResource.Yes + ', colocar no carrinho',
							onclick: function() {
								$.publish('browsingModal/closeModal/', {});
								buy();
								$.colorbox.close();
								$.modal().close();
							}
						}]
					});

				}

				if ($btnBuy.hasClass(_class.mustVerify)) {

					if ($widget.selectedSku) {

						if ($widget.selectedSku.options.length) {
							openModal(buildMessage());
						} else {
							buy();
						}

						return true;

					}

				}

				return false;

			};

			/*
			se for necessário validar a existência de um seller antes de adicionar ao carrinho
			deverá retornar FALSE caso a validação não seja necessária, do contrário retorna TRUE
			*/
			checker.seller = function() {

				var context = browsingContext.Common;

				function isRequired() {
					if (!$widget.options.mustCheckSellerSelected) {
						return false;
					}
					var validationMode = context.Config.Platform.Seller.SellerValidationMode;
					return !context.Config.Platform.MarketPlace.IsEnabled && context.Config.Platform.Seller.SellerSelectionMode === 'SelectedSeller' && (validationMode === 'Basket' || validationMode === 'BasketAndOrder');
				}

				if (isRequired()) {
					$widget.bindSellerModal();
					return true;
				}

				return false;

			};

			/*
			se for necessário validar a existência de um seller se o modulo marketplace estiver ativo
			deverá retornar FALSE caso a validação não seja necessária, do contrário retorna TRUE
			*/
			checker.sellerMarketplace = function() {

				var context = browsingContext.Common;

				if (!context.Config.Platform.MarketPlace.IsEnabled) {
					return false;
				}

				var sellerID = $form.find('[name="SellerID"]').val();

				if (!sellerID) {
					$widget.alert('Não é possível comprar este produto no momento');

					console.warn('Nenhuma oferta encontrada');

					return true;
				}

				return false;

			};

			/*
			se for um giftCertificate(vale-compra) deverá abrir uma modal com os metadados fixos.
			deverá retornar FALSE caso a validação não seja necessária, do contrário retorna TRUE
			*/
			checker.giftCertificate = function() {

				function isRequired() {
					return $btnBuy.hasClass(_class.isGiftCertificate);
				}

				// logic
				if (isRequired()) {
					$widget.bindGiftCertificateModal();
					return true;
				}

				return false;

			};

			/*
			verifica se deverá ser aberto a modal de seleção de variação, caso não, retorna FALSE e segue o fluxo
			*/
			checker.openSelectVariation = function() {

				if (!$widget.options.openSelectVariationModal) {
					return false;
				}

				var id = $id;
				// var skuID = parseInt($form.find('[name="Products[0].SkuID"]').val() || 0);
				var url = $form.find('[name="Products[0].Url"]').val();

				// se for mix ou bundle redireciona pro detalhe do produto
				// if (id == skuID) {
				// 	return false;
				// }

				var separator = '?';
				if (!!~url.indexOf('?')) {
					separator = '&';
				}

				url += separator + 'keepBuy=true';

				$widget.publish('product/selectvariation', {
					productID: id,
					url: url
				});

				return true;

			};

			/*
			verifica se o produto possui um skuID selecionado, caso não, abre a modal
			*/
			checker.skuSelected = function() {

				if (!$widget.options.mustCheckSkuSelected) {
					return false;
				}

				var skuID = $form.find('[name="Products[0].SkuID"]').val(),
					id = $id;

				if (!skuID) {

					var url = $form.find('[name="Products[0].Url"]').val();

					$widget.publish('product/selectvariation', {
						productID: id,
						url: url
					});

					return true;

				}

				return false;

			};

			/*
			verifica se o produto é um bundle, caso sim, abre modal de selectVariation
			*/
			checker.bundle = function() {

				var skuID = parseInt($form.find('[name="Products[0].SkuID"]').val() || 0);
				var id = parseInt($id) || null;
				var url = $form.find('[name="Products[0].Url"]').val();

				if (skuID === id && !$widget.options.bundleAllowed && url) {
					// abre select variations
					$widget.publish('product/selectvariation', {
						productID: $id,
						url: url
					});

					return true;
				}

				return false;

				// var catalogItemID = parseInt($form.data('catalogitemid'));
				// var isMix = $form.data('ismix');
				// var isBundle = catalogItemID === 7 && !isMix;

				// if (isBundle && !isMix) {

				// 	var url = $form.find('[name="Products[0].Url"]').val();

				// 	$widget.publish('product/selectvariation', {
				// 		productID: $id,
				// 		url: url
				// 	});

				// }
				// return isBundle;
			};

			checker.paymentTerm = function() {
				var $el = $('.wd-product-payment-term');
				if (!$el.length) {
					return false;
				}

				$.publish('product/payment/term/check', $form);

				if ($el.data('selected-payment-term-id') != 0 && !$el.data('selected-payment-term-id')) {
					return true;
				}

				return false;
			};

			/*
			se for necessário preencher um formulário de compra antes de adicionar ao carrinho
			deverá retornar FALSE, do contrário retorna TRUE
			*/
			checker.purchasingForm = function() {
				function isRequired() {
					return !!$('.wd-product-purchasing-form', $element).length;
				}

				if (isRequired()) {
					$widget.bindPurchasingFormModal();
					return true;
				}

				return false;
			};

			function onFormSubmit() {
				// TODO, chamar _removeEmptyInputs e reorder antes de validar o modelo
				if ($widget.isModelValid()) {

					// a ordem do IF impacta
					if (!checker.openSelectVariation() &&
						!checker.paymentTerm() &&
						!checker.bundle() &&
						!checker.skuSelected() &&
						!checker.giftCertificate() &&
						!checker.sellerMarketplace() &&
						!checker.seller() &&
						!checker.confirmVariation() &&
						!checker.purchasingForm()
					) {
						buy();
					}

				}

				return false;
			}

			$form.on('submit do-buy', onFormSubmit);

			if ($('.btn-oneclickbuy', $element).length) {
				$('.wd-product-oneclickbuy', $element).ProductOneclickbuy(this.options);
			}

			$.subscribe('basket/error', function() {
				buyingActions(false);
			});

			var $wdvariation = $('.wd-product-variations[pid="' + $id + '"]');
			if ($wdvariation.length) {
				var variationContent = $wdvariation.data('variationContent');
				if (variationContent) {
					$widget._onVariationChange(null, { variationContent: variationContent }, $widget);
				}
			}

		},

		selectedSku: null,

		_onVariationChange: function (e, args, widget) {
			var $widget = widget,
				$element = $($widget.element),
				$skuID = $('input[name="Products[0].SkuID"]', $element);
			var variation = args.variationContent.sku;
			if ($widget.isUponRequest) {
				return false;
			}

			var $btnBuy = $element.find('.' + _class.btnBuy);
			if (variation != null && args.variationContent.noPriceChange != true) {

				if (variation.isInventoryAvailable) {

					$widget.selectedSku = variation;
					$btnBuy.closest('.wd-widget-js').removeClass('notigymewhenavailable-visible');
					$btnBuy.removeAttr('style').removeClass(_class.mustValidated);

				} else {

					$btnBuy.closest('.wd-widget-js').addClass('notigymewhenavailable-visible');
					$btnBuy.hide().addClass(_class.mustValidated);

				}

				$skuID.val(variation.productID);

				if (variation.buyBox && variation.buyBox.SellerID) {
					$widget._setSellerID(variation.buyBox.SellerID);
				}

			} else {

				$widget.selectedSku = null;

				if (args.variationContent.noPriceChange != true) {
					$skuID.val('');
					$btnBuy.addClass(_class.mustValidated);
				}

				if (args.variationContent.hideBuyButton) {
					$element.hide();
				} else {
					$element.show();
				}

				//$widget.element.find('.'+_class.btnBuy).hide();

			}
		},

		_init: function() {

			var $widget = this,
				$element = $($widget.element),
				$id = this.options.productId,
				$skuID = $('input[name="Products[0].SkuID"]', $element);

			// eventos de variacao
			$widget.subscribe('/wd/product/variation/changed/' + $id, function (e, args) {
				$widget._onVariationChange(e, args, $widget);
			});

			$widget.subscribe('/wd/product/buygrid/isactive', function() {
				$widget.options.hasBuyGrid = true;
			});

			$widget.subscribe('/wd/buybutton/mustvalidated/' + $id, function(e, args) {

				var $btnBuy = $widget.element.find('.' + _class.btnBuy);

				if (args.mustValidated == false) {
					$btnBuy.removeAttr('style').removeClass(_class.mustValidated);
				} else {
					$btnBuy.addClass(_class.mustValidated);
				}

				if (args.hasOwnProperty('show') && !$widget.isUponRequest) {

					if (args.show) {
						$btnBuy.show();
					} else {
						$btnBuy.hide();
					}

				}

			});

			$widget.subscribe('/wd/buybutton/clearskuid/' + $id, function() {
				$skuID.val('');
			});

			$widget.subscribe('/wd/buybutton/setskuid/' + $id, function(e, skuid) {
				$skuID.val(skuid);
			});

			$widget.subscribe('/wd/buybutton/formdata/' + $id, function(e, postData) {
				// é necessário limpar os inputs atuais para add os novos
				$widget.element.find('input:hidden[name^="Products"]').remove();
				$.each(postData, function(name, value) {

					if (name == 'items') {
						name = 'Products[0].Variations';
						value = true;
					}

					$('<input/>').attr({
						'type': 'hidden',
						'name': name,
						'value': value
					}).appendTo($element.find('form'));

				});

			});

			$widget.subscribe('/wd/product/variation/optionslist/init/' + $id, function() {
				$element.addClass('wd-hide');
			});

			$widget.subscribe('/wd/buybutton/set/submithandler/' + $id, function(e, data) {
				if (typeof data !== 'object') {
					return;
				}

				$.extend($widget.options._customSubmitHandlers, data);
			});

			// ko.postbox.subscribe('/wd/product/sellers/offers/fetched', function(model) {
			// 	var sellerBuybox;

			// 	if (model.Offers && model.Offers.length) {
			// 		sellerBuybox = model.Offers[0];

			// 		$widget.element.find('[name="SellerID"]').val(sellerBuybox.SellerID);

			// 	}
			// });

		},

		// verifica se o modelo da página é valido
		isModelValid: function() {

			// vars
			var $widget = this,
				$element = $($widget.element),
				$skuID = $('input[name="Products[0].SkuID"]', $element),
				// hasVariationSelected = ($skuID.val() != ''),
				$button = $('.' + _class.btnBuy, $element),
				// htmlError = '',
				hasError = false,
				$variations = $('.wd-product-variations, .wd-product-variations-new'),
				$variationsWidgets = $('.wd-product-buy-grid, .wd-product-buy-grid-list'),
				constraints = {};

			// classes
			function ErrorFactory(cssClass, text) {

				return {
					cssClass: cssClass,
					text: text
				};

			}

			function ConstraintFactory(controlClass, error, registeredPublish, validateChecker) {

				controlClass = controlClass || ''; // classe css que será verificada a ocorrencia no btn-buy
				error = error || {}; // objeto de erro(ErrorFactory)
				error.cssClass = error.cssClass || ''; // classe css de identificação no html de erro
				error.text = error.text || ''; // texto que aparecerá na mensagem de erro
				registeredPublish = registeredPublish || ''; // evento que será publicado via pub/sub
				validateChecker = validateChecker || function() { // função que controla se o publish será executado
					return true;
				};

				function _buildError() {
					return '<span class="error ' + error.cssClass + '-error">' + $widget.options[error.text] + '</span>';
				}

				return {

					any: function() {
						return $button.hasClass(controlClass);
					},

					publish: function() {

						if (validateChecker()) {

							$widget.publish(registeredPublish + $widget.options.productId, {
								errors: [{
									msg: _buildError()
								}]
							});

						}

						return;

					},

					publishCallback: function() {
						// TODO
					}

				};

			}

			// methods
			/*var cleanErrors = function() {
				//$('.wd-product-variations .options .error, .wd-product-gift .error').remove();
				$widget.publish('/wd/buybutton/cleanerrors/' + $id, {});
			};*/

			// logic
			constraints.variation = new ConstraintFactory(_class.mustValidated, new ErrorFactory('variation', 'variationErrorText'), '/wd/product/variation/error/', function() {
				return $variations.length || $variationsWidgets.length;
			});

			constraints.variation.publishCallback = function() {

				// TODO - passar para cada widget o scroll
				if ($variations.length && $skuID.val() === '') {

					$('html, body').animate({
						scrollTop: $('.wd-product-variations, .wd-product-variations-new').offset().top
					}, 605);

				}

			};

			constraints.gift = new ConstraintFactory(_class.hasGift, new ErrorFactory('gift', 'giftVariationErrorText'), '/wd/product/gift/selection/error/', function() {
				return true;
			});

			constraints.gift.publishCallback = function() {

				$('html, body').animate({
					scrollTop: $('.wd-product-gift').offset().top - 150
				}, 605);

			};

			_.each(constraints, function(constraint) {

				if (constraint.any() && !hasError) {

					hasError = true;
					constraint.publish();
					constraint.publishCallback();

				}

			});

			return !hasError;

		},
		_setSellerID: function(sellerID) {
			var $widget = this;
			var $w = $widget.getContext();
			var $sellerID = $w('input[name="SellerID"]');

			if ($sellerID.length) {
				$sellerID.val(sellerID);
			}
		},
		bindSellerModal: function() {

			// vars
			var $widget = this,
				$w = $widget.getContext(),
				productID = $widget.options.productId;

			// classes
			function Seller(data) {

				// vars
				var self = this;
				self.Quantity = ko.observable('1');
				// validar seller para setar o corrente
				self.isCurrent = ko.observable(false);
				//ko.utils.extend(self, data);
				self.SellerID = ko.observable(data.SellerID);
				self.Name = ko.observable(data.SellerName);
				self.HasOfflineDeliveryMethod = ko.observable(data.HasOfflineDeliveryMethod);
				self.StockBalance = ko.observable(data.StockBalance);
				self.PointOfSale = data.PointOfSale;
				self.IsPurchasable = ko.observable(data.IsPurchasable);

				// methods
				self.Select = function() {
					self.isCurrent(true);
					var selected = ko.toJS(self);
					ko.postbox.publish('/wd/buybutton/sellermodal/selected/' + productID, selected);
					// if($widget.options.sellerModalMustBeRedirect)
					// 	$widget.buy();
				};

				// subscribers
				ko.postbox.subscribe('/wd/buybutton/sellermodal/selected/' + productID, function(args) {
					if (args.SellerID !== self.SellerID()) {
						self.isCurrent(false);
					}
				});

			}

			function ModalViewModel() {

				var self = this;

				// vars
				self.loadingText = ko.observable('Carregando...');
				self.isLoading = ko.observable(true);
				self.sellers = ko.observableArray([]);
				self.selectedSeller = ko.observable(null);
				self.title = ko.observable($widget.options.sellerModal.title);
				self.message = ko.observable($widget.options.sellerModal.msg);
				self.enableBuy = ko.computed(function() {
					return self.selectedSeller() && self.selectedSeller().SellerID > 0;
				});

				// methods
				self.loadData = function() {

					var data = $widget.options.sellerModalModel || $w('form').not('.js-login').first().serialize();

					$.ajax({
						//url: browsingContext.Common.Urls.BaseUrl + "web-api/v1/Shopping/Seller/GetAll",
						url: browsingContext.Common.Urls.BaseUrl + 'web-api/v1/Shopping/Seller/GetSellerPurchasing',
						data: data,
						type: 'GET',
						headers: {
							'Content-Type': 'application/json'
						}
					}).success(function(r) {
						if (r.ResponseCallback && r.ResponseCallback.hasOwnProperty('Code') && r.ResponseCallback.Code == 'SelectVariation') {
							document.location.href = $w('form').find('input[name="Products[0].Url"]').val();
						} else {
							//app.log('loaded data', r);
							if (r && r.hasOwnProperty('Result')) {
								_.map(r.Result, function(el) {
									self.sellers.push(new Seller(el));
								});
							}
							self.isLoading(false);
							$.publish('browsingModal/centerModal/');
						}
					});

				};

				self.buy = function() {

					$widget.publish('/wd/buybutton/sellermodal/buy/' + productID, {
						selectedSeller: self.selectedSeller()
					});

					self.loadingText('Redirecionando...');
					self.isLoading(true);

					var execute = $widget.options.sellerModalSubmitAction || $widget.buy;
					execute(self.selectedSeller().SellerID);
					// $widget.buy();

				};

				self.cancel = function() {
					$.colorbox.close();
					$.modal().close();
				};

				//subscribers
				ko.postbox.subscribe('/wd/buybutton/sellermodal/selected/' + productID, function(args) {

					if (args.Quantity > 1) {
						$w('[name="Products[0].Quantity"]').val(args.Quantity);
					}

					$w('[name="SellerID"]').val(args.SellerID);
					self.selectedSeller(args);

				});

			}

			// methods
			var getTemplate = function() {

				var tpl = $w().data('seller-template');

				if (!tpl) {
					tpl = $w('#sellerModalTemplate').html();
					$w().data('seller-template', tpl);
				}

				return tpl;

			};

			var openModal = function() {

				var onOpen = function($el) {

					var el = $el ? $el.find('.seller-modal')[0] : window;
					var modalViewModel = new ModalViewModel();
					ko.cleanNode(el);
					ko.applyBindings(modalViewModel, el);
					// Load initial data via Ajax
					modalViewModel.loadData();
					$widget.publish('/wd/buybutton/sellermodal/open/' + productID, {});

				};

				var customClass = 'wd-buybutton-seller-modal';

				$widget.modal({
					element: getTemplate(),
					onComplete: onOpen,
					'class': customClass,
					'customClass': customClass,
					width: $widget.options.sellerModal.width,
					height: $widget.options.sellerModal.height,
				});

				return;

			};

			openModal();
			return;

		},

		bindGiftCertificateModal: function() {

			// vars
			var $widget = this,
				$w = $widget.getContext(),
				productID = $widget.options.productId;

			// methods
			var getTemplate = function() {

				var tpl = $w().data('gift-certificate-template');

				if (!tpl) {
					tpl = $w('#giftCertificateModalTemplate').html();
					$w().data('gift-certificate-template', tpl);
				}

				return tpl;

			};

			var handleFields = function(form) {
				var $form = $(form);
				var $btnForm = $w('form[name="formBuyButton"]');

				$btnForm.find('.giftcertificate-prop-email').val($form.find('[name="giftcertificate-prop-email"]').val());
				$btnForm.find('.giftcertificate-prop-name').val($form.find('[name="giftcertificate-prop-name"]').val());
				$btnForm.find('.giftcertificate-prop-message').val($form.find('[name="giftcertificate-prop-message"]').val());
			};

			var bindModalElements = function(scope) {
				var $scope = $(scope);

				var oValidate = {
					rules: {
						'giftcertificate-prop-name': {
							required: true,
							maxlength: 100
						},
						'giftcertificate-prop-message': {
							required: true,
							maxlength: 500
						},
						'giftcertificate-prop-email': {
							required: true,
							email: true,
							maxlength: 80
						},

					},

					submitHandler: function(form) {

						handleFields(form);

						$.publish('browsingModal/closeModal/', {});
						$.colorbox.close();

						// evita problemas de modal de erro
						setTimeout($widget.buy, 100);
						// $widget.buy();

						return false;
					}
				};
				var $form = $scope.find('.gift-certificate-modal form');
				$form.unbind();
				$widget.validate($form, oValidate);
				$form.on('submit', function(e) {
					e.preventDefault();
				});
			};

			var openModal = function() {

				var onOpen = function($el) {

					var el = $el ? $el : $('.gift-certificate-modal');

					bindModalElements(el);
					$widget.publish('/wd/buybutton/giftcertifictemodal/open/' + productID, {});
				};

				var customClass = 'wd-buybutton-giftcertificate-modal';

				$widget.modal({
					element: getTemplate(),
					onComplete: onOpen,
					'class': customClass,
					'customClass': customClass,
					width: $widget.options.giftCertificateModal.width,
					height: $widget.options.giftCertificateModal.height,
				});

				return;

			};

			openModal();
			return;
		},

		bindPurchasingFormModal: function() {
			var $widget = this;
			var $w = $widget.getContext();
			var productID = $widget.options.productId;

			var $purchasingForm = $w('.wd-product-purchasing-form');

			if (!$purchasingForm.length) {
				return;
			}

			var renameProperty = function(propName) {
				var fromStr = 'ExtendedProperties';
				var toStr = 'Products[0].FormData'

				if (!propName || propName.indexOf(fromStr) === -1) {
					return propName;
				}

				return propName.replace(fromStr, toStr);
			};

			$purchasingForm.ProductPurchasingForm('openModal', function($form) {
				app.closeModal();

				if (!$form || !$form.length) {
					$widget.buy();
					return;
				}

				var formData = $form.serializeArray();

				if (!formData || !formData.length) {
					$widget.buy();
					return;
				}

				var $serializedData = {};

				_(formData).each(function(d) {
					$serializedData[renameProperty(d.name)] = d.value;
				});

				$widget.buy($serializedData);

				return false;
			});
		},

		_handleFreeItemsInputs: function() {
			var $widget = this,
				$element = $($widget.element);

			var handleIndex = function($el, index) {
				var name = $el.attr('name').replace(/\[\d*\]/, '[' + index + ']');
				$el.attr('name', name);
			};
			if ($widget.options.hasBuyGrid) {
				$element.find('input[name*="SelectedFreeItem"].input-cloned').remove();
				var itemsCount = $element.find('input[name*="Quantity"]').length;
				var $freeIteminputs = $element.find('input[name*="SelectedFreeItem"]');
				if (itemsCount > 1) {

					for (var i = 0; i >= (itemsCount - 1); i++) {
						$freeIteminputs.each(function() {
							var $imp = $(this);
							var $clone = $imp.clone();
							handleIndex($clone, i);
							$clone.addClass('input-cloned');
							$imp.closest('form').append($clone);
						});
					}
				}

			}
		},

		_removeEmptyInputs: function() {

			var $widget = this,
				$element = $($widget.element);

			$('input[name*="Quantity"][value="0"]', $element).not('input[name*="SelectedFreeItem"]').each(function() {
				var $this = $(this);
				var index = ($this.attr('name')).replace('Products[', '').replace('].Quantity', '');
				$('input[name*="Products[' + index + ']"]', $element).not('input[name*="SelectedFreeItem"]').remove();
			});
			$widget._reorderFormInputs();
		},

		_reorderFormInputs: function() {

			var $widget = this;
			var $element = $($widget.element);

			$('form', $element).not('.js-login').each(function() {

				var form = $(this);
				var products = form.find('input[type="hidden"][name^="Products["]').not('input[name*="SelectedFreeItem"]');

				if (products.length) {
					var first = products.first().attr('name').match(/\[\d*\]/)[0].replace(/\D/g, '');
					var recount = 0;

					products.map(function(i, product) {
						var name = $(product).attr('name'),
							index = name.match(/\[\d*\]/)[0].replace(/\D/g, '');

						if (index != first) {
							recount++;
							first = index;
						}

						$(product).attr('name', function(t, name) {
							var rename = name.replace(/\[\d*\]/, '[' + recount + ']');
							return rename;
						});
					});
				}
			});
		},

		_executeCustomHandlers: function($serialized) {
			var $widget = this;
			if (!$.isEmptyObject($widget.options._customSubmitHandlers)) {
				/*
					Ordena pelo nome do handler registrado ex: 21-HandlerName

					TESTE:

					var sr = {
						'1-teste': 1,
						'3-teste': 3,
						'11-teste': 11,
						'12-teste': 12,
						'1.1-teste': '1.1',
						'99-teste': 99,
						'21-teste': 21,
						'321-teste': 321,
						'4.32-teste': '4.32',
						'111-teste': 111,
						'1.11-teste': '1.11',
						'1.12-teste': '1.12',
						'2-ta': 2,
						'2.2-tata': '2.2'
					};

					_.sortBy(sr, function(num, key){ return key; });
					(12) [1, "1.1", "1.11", "1.12", 11, 111, 12, 21, 3, 321, "4.32", 99]

				 */
				var submitHandlers = _.sortBy($widget.options._customSubmitHandlers, function(num, key) {
					return key;
				});
				_.each(submitHandlers, function(handler) {
					if (handler && $.isFunction(handler)) {
						handler($serialized, submitHandlerHelper);
					}
				});
			}
		},
		_showErros: function($serialized) {
			var $widget = this;
			var errorModalClass = 'wd-product-buybutton-errors';
			var message = $serialized.errors.join('<br>');

			$widget.alert(message, null, {
				'class': errorModalClass,
				className: errorModalClass
			});
		}
	});

	// options defaults
	$.extend($.wd.ProductBuyButton.prototype.options, {
		bundleAllowed: false, // setado pelo widge de bundle;
		openSelectVariationModal: false,
		_customSubmitHandlers: {},
		verificationModal: {
			width: 380,
			height: 'auto'
		},
		sellerModal: {
			width: 680,
			height: 'auto',
			title: 'Selecione uma loja',
			msg: '',
			onSubmit: null
		},
		giftCertificateModal: {
			width: 680,
			height: 'auto',
			title: 'Vale-presente',
			msg: '',
			onSubmit: null
		},
		sellerModalSubmitAction: null,
		sellerModalModel: null,
		hasBuyGrid: false,
		mustCheckSkuSelected: true,
		mustCheckSellerSelected: true,
		//sellerModalMustBeRedirect: true,
		giftVariationErrorText: 'Escolha uma opção disponível',
		variationErrorText: 'Escolha uma opção disponível',
		confirmationText: 'As opções selecionadas para o produto estão corretas?'
	});

})(jQuery, window, document);

}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/product.buybutton/Scripts/wd.product.oneclickbuy.js*/
try{;
(function($, window, document, undefined) {
	$.widget('wd.ProductOneclickbuy', $.wd.ProductBuyButton, {

		config: {
			isLoaded: false,
			isAuthenticated: false,
			isOneClickBuyActive: false,
			hasEntireConfiguration: false,
			hasEntireConfigurationMessage: '',
			canPurchase: false,
			basketItemsCount: 0,
			address: {
				name: '',
				contactName: '',
				addressLine: '',
				city: '',
				neighbourhood: '',
				number: '',
				state: '',
				addressNotes: '',
				landmark: '',
				postalCode: ''
			}
		},
		// Create
		_create: function() {
			var widget = this,
				$w = widget.getContext(),
				$id = this.options.productId,
				$document = $(document);

			widget.isUponRequest = $('.wd-product-uponrequest').length > 0;

			window._lock = false;

			var queryString = window.location.search.slice(1).replace(/\&amp;/g, '&');
			$w('input[name="QueryString"]').val(queryString);

			$w('.url-read-more').bind('click', function(e) {
				widget.alert($w('.message-read-more').html(), 'info', {
					className: "wd-product-oneclickbuy-modal read-more"
				});
			});

			widget.subscribe('/wd/product/variation/changed/' + $id, function(e, args) {
				var variation = args.variationContent.sku;
				if (variation != null) {
					$w().data('skuID', variation.productID);
				} else {
					$w().data('skuID', undefined);
				}
			});

			$w().on('click', '.needed-authentication a:not(.url-read-more)', function(e) {
				e.preventDefault();
				var $thisBtn = $(this);

				if ($w().hasClass('login-in-modal')) {

					$document.bind('wdProfileLogin_failed', function(e, args) {
						$document.bind('cbox_closed', function() {
							$thisBtn.trigger('click');
							$document.unbind('cbox_closed');
							$document.unbind('wdProfileLogin_failed');
						});
					});
					//widget.unsubscribe('/profile/login/failed');

					// verificar skuid selecionado e monta url de callback
					var locationPath = location.pathname,
						queryStrings = widget.getQueryString(),
						queryStringSignal = '?';
					_.each(queryStrings, function(el, i) {
						if (el != "v" && el != "cb") {
							locationPath += queryStringSignal + el + '=' + queryStrings[el];
							queryStringSignal = '&';
						}
					});
					// var callBackUrl = browsingContext.Common.Urls.CurrentUrl;
					var callBackUrl = locationPath;
					callBackUrl = callBackUrl + queryStringSignal + 'cb=productOneclickbuy.doBuy';
					queryStringSignal = '&';
					if ($w().data('skuID')) {
						callBackUrl = callBackUrl + queryStringSignal + 'v=' + $w().data('skuID');
						//callBackUrl = callBackUrl+'&v='+$w().data('skuID');
					}

					widget.ajax({
						url: $(this).attr('href'),
						type: 'get',
						success: openModal
					});

					function openModal(r) {
						r = app.widgetStarter(r);
						var $content = $('<div class="wd-modal authentication-modal wd-product-oneclickbuy-login-modal"></div>').html(r);
						$content.find('.wd-profile-login form.js-login')
							.attr('action', browsingContext.Common.Urls.Profile.Login.Index)
							.append('<input type="hidden" name="url" value="' + callBackUrl + '" /><input type="hidden" name="redirectToUrl" value="true" />');
						//console.log('r',r,'content',content);
						widget.publish('/login/cb', function() {
							widget.doBuy();
						});
						app.modal({
							html: $content,
							width: "auto",
							height: "auto",
							className: "authentication-modal"
							// ,onComplete:function(){
							// 	$('.wd-modal .wd-profile-login form.js-login').attr('action', browsingContext.Common.Urls.Profile.Login.Index);
							// }
						});
					};
				} else {
					widget.alert('Você precisa estar logado para comprar com um clique. <div class="button-wrapper"><a class="btn" href="' + browsingContext.Common.Urls.FullBaseUrl + 'Login/?Url=' + window.location.href + '">Ir para a página de login</a></div>', undefined, {
						className: "wd-product-oneclickbuy-modal"
					});
				}

			});

			widget.loadEvents();
			widget.reload();

			// se tiver na querystring o parâmetro cb com o valor productOneclickbuy.doBuy abre modal como resultado do login
			function handleLoginModal() {
				if (app.tools.getParameterByName('cb') == "productOneclickbuy.doBuy") {
					if (app.browserSupport.hasPushstate) {
						var locationPath = location.pathname,
							queryStrings = widget.getQueryString(),
							queryStringSignal = '?';
						_.each(queryStrings, function(el, i) {
							if (el != "cb") {
								locationPath += queryStringSignal + el + '=' + queryStrings[el];
								queryStringSignal = '&';
							}
						});
						history.replaceState({}, $('title').text(), locationPath);
					}

					setTimeout((function() {
						widget.justClickBuy(widget);
					}), 700);
				}
			};
			// se o browsingContext estiver pronto executa a tarefa, se não aguarda o evento
			if (browsingContext.Common.ready) {
				handleLoginModal();
			} else {
				$.subscribe('/wd/browsing/context/ready', function() {
					handleLoginModal();
				});
			}
		},

		loadEvents: function() {
			var widget = this,
				$element = $(widget.element),
				$id = this.options.productId,
				$skuID = $('input[name="Products[0].SkuID"]', $element);

			// escuta os eventos das variações selecionadas
			widget.subscribe('/wd/product/variation/changed/' + $id, function(e, args) {
				var variation = args.variationContent.sku;

				if (widget.isUponRequest)
					return false;

				if (variation != null && variation.isInventoryAvailable && args.variationContent.noPriceChange != true) {
					$skuID.val(variation.productID);
					widget.element.find('.btn-oneclickbuy').removeAttr('style');
				} else {
					if (args.variationContent.noPriceChange != true) {
						$skuID.val('');
					}
					//$('.btn-oneclickbuy').hide();
				}

			});

			// escuta a validação do modelo que o será lançado
			// --> pelo widget do botão
			// --> widget do bundle
			widget.subscribe('/wd/product/oneclickbuy/changed/' + $id, function(e, args) {
				if (args.hasOwnProperty('state')) {
					if (args.state == 'validateFinished') {
						// se o modelo foi validado com sucesso
						if (args.isValid) {
							widget.doBuy(args.model);
						} else {
							var $button = $('.wrapper-button .btn-oneclickbuy', $element),
								$productVariationOptions = '',
								htmlError = '<span class="error">Escolha uma opção disponível</span>';
							$('.wd-product-variations .options .error, .wd-product-gift .error').remove();
							//verifica se ja temos label.selected se sim coloca erro no proximo option select combo
							if ($('.wd-product-variations label.selected').size() > 0) {
								$productVariationOptions = $('.wd-product-variations .subvariation-group .options:visible').filter(':last');
							} else {
								$productVariationOptions = $('.wd-product-variations .options:visible').filter(':last')
							}

							if ($button.hasClass('has-gift')) {
								$('#content-wrapper .wd-product-gift').append(htmlError);
							}

							$productVariationOptions.append(htmlError);
							$('html, body').animate({
								scrollTop: $('.wd-product-variations').offset().top
							}, 605);
						}
					}
				}
			});

			// escuta os eventos do one click buy
			widget.subscribe('/wd/product/oneclickbuy/changed/' + $id, function(e, args) {
				// verifica se há a propriedade state
				if (args.hasOwnProperty('state')) {
					// nesse estado o evento foi chamado para validar o modelo da página,
					// valida e lança um evento com a validação do modelo.
					// neste caso o widget de one click buy vai escutar a validação finalizada e tomar a determinada ação
					if (args.state == 'mustValidate') {
						// funcao de validação do modelo
						var validModel = widget.isModelValid();
						widget.publish('/wd/product/oneclickbuy/changed/' + $id, {
							widget: this,
							state: 'validateFinished',
							isValid: validModel // aqui determina se o modelo é valido
						});

					}
					// nesse estado o widget do one click buy lançou o evento e determina que o
					// serviço de compra com um click vai ser inicializado, esconde o botão de comprar portanto
					else if (args.state == 'initialized') {
						widget.element.find('.btn-buy').hide();
					}
					// finalizou o acesso ao serviço, libera o botão
					else if (args.state == 'finalized') {
						widget.element.find('.btn-buy').removeAttr('style');
					}
				}
			});
		},

		justClickBuy: function(widget) {
			var $w = widget.getContext(),
				$productID = $w('input[name="Products[0].ProductID"]').val(),
				$skuID = $w('input[name="Products[0].SkuID"]'),
				hasVariationSelected = ($skuID.val() != ''),
				b = browsingContext.Common.Urls.BaseUrl;
			widget.publish('/wd/product/oneclickbuy/changed/' + $productID, {
				widget: this,
				state: 'mustValidate'
			});
		},

		_lock: false,
		buying: function(not) {
			var widget = this,
				$w = widget.getContext();
			$w('.wrapper-button').removeClass('hidden');
			not ? $w().removeClass('buying') : $w().addClass('buying');
		},
		doBuy: function(model) {
			var widget = this,
				$w = widget.getContext(),
				$productID = $w('input[name="Products[0].ProductID"]').val(),
				$serialized = $w('.frm-oneclickbuy').serialize(),
				b = browsingContext.Common.Urls.FullBaseUrl;

			if (window._lock) {
				return false;
			}

			window._lock = true;

			// o model pode ter vindo do evento de validação de modelo
			// se caso vier vai executar o ajax com esses dados
			// senao busca os dados do form
			model = model || $serialized;
			//console.log('model ',model);
			widget.publish('/wd/product/oneclickbuy/changed/' + $productID, {
				widget: this,
				state: 'initialized'
			});
			widget.buying();
			//$w('.btn-oneclickbuy').hide();
			//$w('.loading-oneclickbuy').show();

			//do the ajax
			$.ajax({
				url: b + 'Payment/OneClickBuy/OneClickBuyProduct',
				type: 'post',
				dataType: 'json',
				cache: false,
				data: model,
				complete: function() {
					widget.publish('/wd/product/oneclickbuy/changed/' + $productID, {
						widget: this,
						state: 'finalized'
					});
					//					$w('.loading-oneclickbuy').hide();
					//					$w('.btn-oneclickbuy').show();
					window._lock = false;

				},
				success: function(response) {
					if (response && response.hasOwnProperty('IsValid')) {
						if (response.IsValid) {
							window.location.href = browsingContext.Common.Urls.Shopping.Checkout.Start;
						} else {
							widget.buying(true);
							// $w('.loading-oneclickbuy').hide();
							// $w('.btn-oneclickbuy').show();

							var errorMsg = "",
								mustLogin = false;

							for (var x = 0; x < response.Errors.length; x++) {
								// Keys
								// 		401 - Deve Logar
								//		301 - Deve redirecionar
								if (response.Errors[x].Key == "301") {

									window.location.href = b + response.Errors[x].ErrorMessage;
									break;
								} else if (response.Errors[x].Key == "401") {
									mustLogin = true;
									errorMsg = response.Errors[x].ErrorMessage;
									break;
								}

								if (x != 0)
									errorMsg += "<br />";

								errorMsg += response.Errors[x].ErrorMessage + '!';
							}

							if (jQuery.trim(errorMsg) != '') {
								errorMsg = '<div id="message-oneclickbuy"><span>' + errorMsg + '</span><br /></div>';
								errorMsg += 'Se você preferir, siga a compra clicando no botão abaixo:<br /><br />';
								errorMsg += '<button class="btn-buy-normal">Comprar este produto</button>';
								$('.btn-buy-normal').live('click', function() {
									$('.btn-buy').trigger('click');
								});
							}

							if (mustLogin) {
								widget.publish('/login/showlogin', {
									widget: this
									//cb: function(){widget.doBuy()}
									//cb: function(){$.publish('/login/success', {})}
									//cb: widget.doBuy;
								});

								widget.subscribe('/login/success', function() {
									widget.doBuy();
								});
							} else if (errorMsg != "")
								widget.alert(errorMsg, undefined, {
									className: "wd-product-oneclickbuy-modal"
								});
						}
					}
				},
				error: function() {
					widget.buying(true);
					// $w('.loading-oneclickbuy').hide();
					// $w('.btn-oneclickbuy').show();
				}
			});

		},

		reload: function() {
			var widget = this,
				$w = this.getContext(),
				b = browsingContext.Common.Urls.BaseUrl,
				provider = $w('input[name="Provider"]').val();

			widget.config.isLoaded = true;
			widget.config.isAuthenticated = browsingContext.Common.Shopper.IsAuthenticated;
			widget.config.isOneClickBuyActive = browsingContext.Common.Config.Payment.IsAnyOneClickBuyProviderActive;

			if (widget.config.isOneClickBuyActive) {
				// $w('.or-oneclickbuy').show();

				$w('.frm-oneclickbuy').bind('submit', function(e) {
					e.preventDefault();
					e.stopPropagation();
					return false;
				});

				if (widget.config.isAuthenticated) {
					$w('.wrapper-button').removeClass('hidden');

					$w('.btn-oneclickbuy').bind('click', function(e) {
						e.preventDefault();
						e.stopPropagation();
						widget.justClickBuy(widget);
					});
				} else {
					$w('.needed-authentication').show();

					//CORE-4850
					//$w('.wrapper-button').show();
					var $button = $w('.wrapper-button .btn-oneclickbuy'),
						$productVariationOptions = '',
						htmlError = '<span class="error">Escolha uma opção disponível</span>';

					$button.bind('click', function(e) {

						e.preventDefault();
						e.stopPropagation();

						if (!widget.config.isAuthenticated) {
							widget.alert('Você precisa estar logado para comprar com um clique. <div class="button-wrapper"><a class="btn" href="' + browsingContext.Common.Urls.FullBaseUrl + 'Login/?Url=' + window.location.href + '">Ir para a página de login</a></div>', undefined, {
								className: "wd-product-oneclickbuy-modal"
							});

							return;
						}

						if ($button.hasClass('must-validated')) {
							var $allButtons = $button.closest('.wd-buy-button').find('.btn-buy');
							$('.wd-product-variations .options .error, .wd-product-gift .error').remove();
							$allButtons.attr('disabled', true).addClass('disabled');

							//verifica se ja temos label.selected se sim coloca erro no proximo option select combo
							if ($('.wd-product-variations label.selected').size() > 0) {
								$productVariationOptions = $('.wd-product-variations .subvariation-group .options:visible').filter(':last');
							} else {
								$productVariationOptions = $('.wd-product-variations .options:visible').filter(':last')
							}

							if ($button.hasClass('has-gift')) {
								$('.wd-product-gift div.wd-content div').append(htmlError);
							}

							$productVariationOptions.append(htmlError);

							$('html, body').animate({
								scrollTop: $('.wd-product-variations, .wd-product-variations-new').offset().top
							}, 605);
							//$widget.alert('Escolha as opções disponíveis para o produto.');
							return false;
						} else {
							$productID = $w('input[name="Products[0].ProductID"]').val();
							widget.publish('/login/showlogin', {
								widget: widget,
								cb: function() {
									widget.publish('/wd/product/oneclickbuy/changed/' + $productID, {
										widget: this,
										state: 'validateFinished',
										isValid: true
									});
									//widget.justClickBuy(widget);
								}
							});
						}

					}).show();

				}
			}

			return;

		},
		getQueryString: function() {
			var vars = [],
				hash;
			if (window.location.href.indexOf('?') > -1) {
				var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).replace(/\&amp;/g, '&').split('&');
				for (var i = 0; i < hashes.length; i++) {
					hash = hashes[i].split('=');
					vars.push(hash[0]);
					vars[hash[0]] = hash[1];
				}
			}
			return vars;
		}

	});

	//options defaults
	$.extend($.wd.ProductOneclickbuy.prototype.options, {

	});
})(jQuery, window, document);

}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
