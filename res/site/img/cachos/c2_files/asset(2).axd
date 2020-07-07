/*File:~/Custom/Content/Widgets/product.notifymewhenavailable/Scripts/wd.product.notifymewhenavailable.js*/
try{//
// Widget do calculo das formas de entrega
// Esse widget tem responsabilidade de cadastrar o interesse de um cliente em ser notificado quando um produto indisponível se tornar disponível
//
// Publish:
//
;
(function($, window, document, undefined) {
	$.widget('wd.ProductNotifymeWhenAvailable', $.wd.widget, {

		//**
		_create: function() {

			var widget = this,
				$w = this.getContext(),
				$productID = widget.element.find("input[name='ProductID']"),
				$skuID = widget.element.find("input[name='SkuID']");

			var isUponRequest = $('.wd-product-uponrequest').length > 0;

			widget.msgSuccess = widget.element.find(".text-form-success").text();
			widget.msgError = widget.element.find(".text-form-error").text();

			//**
			widget.subscribe('/wd/product/variation/changed', function(e, args) {
				var variation = args.variationContent.sku;
				if (variation !== null && !variation.isInventoryAvailable) {
					$skuID.val(variation.productID);

					var $content = $w('.wd-product-notifywhenavailable'),
						$img = $w('.notify-form .photo');

					if (typeof MediaEnlargerDS == "object")
						if (MediaEnlargerDS != undefined && MediaEnlargerDS != '') {
							for (i in MediaEnlargerDS) {
								if (MediaEnlargerDS[i].variationPath.indexOf(args.variationContent.hierarchy) != -1) {
									var src_img = MediaEnlargerDS[i].mediaPath;
									src_img = src_img.replace('Large', 'Small');
									$img.attr('src', src_img);

								}
							}
						}

					if (args.variationContent.noPriceChange != true) {
						$productID.val(args.widget.options.productId);
					}

					if (variation.availability == "D" && !variation.isInventoryAvailable) {
						widget.element.find('.bt-notifyme').hide();
						widget.element.find('.content').hide();
						$('.wd-product-oneclickbuy').hide();
					} else {
						// Se não for sob-consulta
						if (!isUponRequest) {
							widget.element.find('.bt-notifyme').removeAttr('style');
							widget.element.find('.content').removeAttr('style');
							$('.wd-product-oneclickbuy').removeAttr('style');
							widget.element.find('.bt-notifyme').removeAttr('style disabled').removeClass('must-validated disabled');
						}
					}
				} else {
					widget.element.find('.bt-notifyme').hide();
					widget.element.find('.content').hide();
				}
			});

			widget.subscribe('/wd/product/variation/optionslist/init/' + $productID.val(), function(e, args) {
				if (widget.element.hasClass('wd-product-notifywhenavailable'))
					widget.element.addClass('wd-hide');
			});

			widget.subscribe('/wd/product/buygrid/isactive', function(e, args) {
				widget.element.find('.bt-notifyme').removeAttr('style disabled').removeClass('must-validated disabled');
				if (widget.element.data('eligible-skuid')) {
					$skuID.val(widget.element.data('eligible-skuid'));
				}

			});

			//**
			$w('.bt-notifyme').on('click', function() {

				var $element = $(widget.element),
					$button = $('.bt-notifyme', widget.element),
					$productVariationOptions = '',
					htmlError = '<span class="error">Escolha uma opção disponível</span>',
					isCollapse = $(this).data('is-collapse') || false;

				if ($button.hasClass('must-validated')) {

					$('.wd-product-variations .options .error').remove();
					$button.attr('disabled', true).addClass('disabled');

					//verifica se ja temos label.selected se sim coloca erro no proximo option select combo
					if ($('.wd-product-variations label.selected').size() > 0) {
						$productVariationOptions = $('.wd-product-variations .subvariation-group .options:visible').filter(':last');
					} else if ($('.wd-product-variations').length) {
						$productVariationOptions = $('.wd-product-variations .options:visible').filter(':last')
					} else {
						$productVariationOptions = $('.wd-product-variations-new .product-variation__errors').removeClass('empty');
					}

					$productVariationOptions.append(htmlError);

					if ($('.wd-product-variations, .wd-product-variations-new').length) {
						$('html, body').animate({
							scrollTop: $('.wd-product-variations, .wd-product-variations-new').offset().top
						}, 605);
					}
					//$widget.alert('Escolha as opções disponíveis para o produto.');
					return false;

				} else {

					if (!isCollapse) {

						var $modalElem = $('#wd-product-notifymewhenavailable-notifyme > div', widget.element);
						widget._openModal(widget, $modalElem);
					} else {

						var $notifymeForm = $('#wd-product-notifymewhenavailable-notifyme', widget.element);
						$($notifymeForm).css('display', 'block');
					}

					var $form = $('#wd-product-notifymewhenavailable-notifyme form', widget.element);

					//** bloqueia os dados antes de buscar informações de conta
					widget._blockFieldsForm($form);

					//** callback da funcão que retorna dados de informações de conta
					widget._buildForm(widget, $form, $productID);
					widget._validateForm(widget, $form);
					widget._unBlockFieldsForm($form);
				}
			});

		},

		_openModal: function(widget, $modalElem) {

			widget.modal({

				element: $modalElem,
				'class': 'wd-product-notifymewhenavailable',
				className: 'wd-product-notifymewhenavailable-modal',
				maxHeight: 650,
				minHeight: 550,
				width: 500,
				onComplete: function($modal) {

					var $form = $('form', $modal);

					//** bloqueia os dados antes de buscar informações de conta
					widget._blockFieldsForm($form);

					widget._validateForm(widget, $form);
					widget._unBlockFieldsForm($form);
				}
			});
		},

		_blockFieldsForm: function($form) {

			$("input[name='Name']", $form).attr("readonly", "readonly");
			$("input[name='Email']", $form).attr("readonly", "readonly");
			$("button", $form).attr("disabled", "disabled");
		},

		_unBlockFieldsForm: function($form) {

			$("input[name='Name']", $form).removeAttr("readonly").removeClass('error');
			$("input[name='Email']", $form).removeAttr("readonly").removeClass('error');
			$("button", $form).removeAttr("disabled");
		},

		_setDataCustomer: function(name, email) {
			$("input[name='Name']", $form).val(name);
			$("input[name='Email']", $form).val(email);
		},

		_buildForm: function(widget, $form, productID) {

			widget._loadCustomer(widget);

			if (!productID.val().length) {

				widget._blockFieldsForm($form);

				$(".error", $form).show();
				$(".error", $form).html(JSResource.ProductNotifymeWhenAvailable_Product_Error);

			} else {
				$("span.error", $form).hide();
			}
		},

		_validateForm: function(widget, $form) {
			widget.validate($form, {
				submitHandler: function(form) {
					widget._submit(form);
				},
				rules: {
					'Name': {
						required: true
					},
					'Email': {
						required: true,
						email: true
					}
				}
			});
		},

		_submit: function(form) {
			var widget = this,
				$w = this.getContext(),
				$form = $(form);

			widget.ajax({
				url: $form.attr('action'),
				data: $form.serialize(),
				type: 'post',
				dataType: 'json',
				beforeSend: function() {
					$('button', $form).attr('disabled', 'disabled');
				},
				complete: function() {
					$('.bt-notify', $form).removeAttr('disabled');
				},
				success: function(data) {

					var $msg = widget.msgError;
					if (data.IsValid)
						$msg = widget.msgSuccess;
					else
						$('.notify-form .submit').removeAtrr('disabled');

					if (widget.options.openModal) {
						widget.alert($msg, 'success', {
							className: "wd-product-notifymewhenavailable-modal"
						});
					} else {
						widget.publish("/wd/notifymewhenavailable/submitted");
					}

				}
			});

		},

		//**
		_loadCustomer: function(widget) {

			widget.getShopperTicket(function(data) {

				if (data.IsAuthenticated) {

					var name = data.Name;
					var email = data.Email;

					widget._setDataCustomer(name, email);

				} else {

					var cookieData = $.cookie('productNotify');

					if (cookieData !== null) {

						data = cookieData.split('|');

						var name = data[0];
						var email = data[1];

						widget._setDataCustomer(name, email);

					} else
						widget._setDataCustomer(null, null);
				}

			});
		}
	});

	$.extend($.wd.ProductNotifymeWhenAvailable.prototype.options, {
		openModal: true
	});

})(jQuery, window, document);

}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/product.wishlist/Scripts/wd.product.wishlist.js*/
try{(function(window, document, $, undefined) {

	var buyGridIsActive = false,
		skuList = [];

	$.widget('wd.ProductWishlist', $.wd.widget, {

		_create: function() {

			var $widget = this,
				$w = $widget.getContext(),
				baseUrl = browsingContext.Common.Urls.BaseUrl,
				$id = $w('input[name="ProductID"]').val(),
				$skuID = $w('input[name="SkuID"]'),
				$form = $w('form[name="formAddToWishlist"]');

			$widget.options.textAdd = $w('.btn-product-wishlist').attr('data-text-add');
			$widget.options.textAdded = $w('.btn-product-wishlist').attr('data-text-added');

			$(function() {

				$widget.equalHeight($w('> ul > li'));

				var skuID,
					queryString = $widget.getQueryString();

				if (queryString.length > 0) {

					skuID = queryString.s || '';

					if (skuID !== '' && $id !== skuID) {

						$widget.publish('/wd/product/variation/selected/' + $id, {
							widget: this,
							variationContent: {
								skuID: skuID
							}
						});

					}

				}

			});

			$.subscribe('/wd/product/buygrid/isactive', function() {
				buyGridIsActive = true;
			});

			$widget.subscribe('/wd/product/variation/changed/' + $id, function(e, args) {

				var variation = args.variationContent.sku;

				if (variation !== null) {

					$w().data('skuID', variation.productID);

					if (variation.isInventoryAvailable) {

						$skuID.val(variation.productID);
						$widget.element.find('.btn-product-wishlist').removeAttr('style').removeClass('must-validated');

					} else {
						$widget.element.find('.btn-buy').hide();

					}

					//$widget.checkProductHasWishList();

				} else {
					$w().data('skuID', undefined);
				}

				$w('.btn-product-wishlist-add').removeClass('success error').html($w('.btn-product-wishlist-add').data('text-add'));

			});

			$w('.btn-product-wishlist').bind('click', function() {

				var $form = $w('form[name="formAddToWishlist"]');
				var productParams = {
					ProductID: parseInt($('input[name="ProductID"]', $form).val()),
					SkuID: $w('input[name="SkuID"]').val()
				}

				if ($widget.isModelValid()){ //&& (productParams.ProductID != productParams.SkuID)) {
					$widget.add($widget);
				} 
				// else {
					// $.publish('product/selectvariation', {
						// productID: productParams.ProductID,
						// url: 'none'
					// });
				// }

				return false;

			});

			var wishlistResponses = [];

			$(document).on('wd.product.wishlist.all.added', function(event) {

				var errors = 0,
					errorsList = [];

				wishlistResponses.push(event.response);

				if (wishlistResponses.length === event.queueSize) {

					$.each(wishlistResponses, function(index, response) {

						if (response.hasOwnProperty('ServiceResponse')) {

							var data = response.ServiceResponse.Data;

							if (!data.IsValid) {

								$.each(data.Errors, function(index, value) {

									var item = '<li>' + value.Message + '</li>';

									if ($.inArray(item, errorsList) === -1) {
										errorsList.push(item);
									}

								});

								errors++;

							}

						}

					});

					if (errors > 0) {

						$widget.alert([
							'<ul>Este produto já foi adicionado!</ul>',
							'<a class="btn" href="' + baseUrl + 'painel-do-cliente/lista-de-desejo">Minhas listas</a>',

						].join(''));

					} else {

						$.colorbox.close();
						$.modal().close();

						//$w('.btn-product-wishlist-add')
						//	.addClass('success')
						//	.html('Produto adicionado à lista')
						//	.effect('highlight', {}, 1500);

						$widget.alert([
							'<ul>Produto adicionado!</ul>',
							'<a class="btn" href="' + baseUrl + 'painel-do-cliente/lista-de-desejo">Minhas listas</a>',

						].join(''));

					}

					/*if (response.ServiceResponse.Data.IsValid) {

						---

					} else {

						$w('.btn-product-wishlist-add')
							.addClass('error')
							.html(response.ServiceResponse.Data.Errors[0].Message)
							.effect('highlight', {}, 1500);

					}*/

				}

			});

			$widget.validate($form, {
				submitHandler: function(form) {

					wishlistResponses = [];

					function addProductToWishlist(sku) {

						var queueSize = $.isArray(sku) ? sku.length : 1;

						function wishlistRequest(sku) {

							$.ajax({
								type: 'POST',
								url: baseUrl + 'Profile/Wishlist/AddProductToWishlist',
								data: {
									WishlistID: parseInt($('select[name="WishlistID"]', form).val()),
									WebSiteID: parseInt($('input[name="WebSiteID"]', form).val()),
									ProductID: parseInt($('input[name="ProductID"]', form).val()),
									Quantity: parseInt($('input[name="Quantity"]', form).val()),
									SkuID: sku
								}
							}).done(function(response) {
								$.event.trigger({
									type: 'wd.product.wishlist.all.added',
									queueSize: queueSize,
									response: response
								});
							});

						}

						if ($.isArray(sku)) {

							$.each(sku, function(index, value) {
								wishlistRequest(value);
							});

						} else {
							wishlistRequest(sku);
						}

					}

					if (buyGridIsActive) {

						addProductToWishlist(skuList);

					} else {

						if ($('.browsing-grid').css('display') === 'block') {
							addProductToWishlist(parseInt($('input[name="ProductID"]', form).val()));
						} else {
							addProductToWishlist(parseInt($('input[name="SkuID"]', form).val()));
						}

					}

				},
				rules: {
					'WishlistID': {
						required: true
					},
					'Quantity': {
						required: true
					}
				}
			});

			$w('form[name="formAddToWishlist"] input[name="Quantity"]').on('keyup', function() {

				$(this).val(parseInt($(this).val()));
				var value = $(this).val();

				if (isNaN(value)) {
					$(this).val('');
				}

			});

			$(document).on('change', 'form select[name="WishlistID"]', function() {
				$.cookie('WishlistIDSelected', $(this).val());
			});

			// se tiver na querystring o parâmetro cb com o valor productWishlist.add abre modal como resultado do login
			function handleLoginModal() {

				if (app.tools.getParameterByName('cb') === 'productWishlist.add') {

					if (app.browserSupport.hasPushstate) {

						var locationPath = location.pathname,
							queryStrings = $widget.getQueryString(),
							queryStringSignal = '?';

						_.each(queryStrings, function(el) {

							if (el !== 'cb') {
								locationPath += queryStringSignal + el + '=' + queryStrings[el];
								queryStringSignal = '&';
							}

						});

						history.replaceState({}, $('title').text(), locationPath);

					}

					//$widget.add($widget);
					//$w('.btn-product-wishlist').trigger('click');

				}

			}

			// se o browsingContext estiver pronto executa a tarefa, se não aguarda o evento
			if (browsingContext.Common.ready) {
				handleLoginModal();
			} else {

				$.subscribe('/wd/browsing/context/ready', function() {
					handleLoginModal();
				});

			}

		},

		isModelValid: function() {

			var $widget = this,
				$w = $widget.getContext(),
				// $element = $($widget.element),
				$form = $w('form[name="formAddToWishlist"]'),
				$productID = $('input[name="ProductID"]', $form),
				// $skuID = $('input[name="SkuID"]', $form),
				// hasVariationSelected = ($skuID.val() !== ''),
				$button = $('.btn-product-wishlist', $widget.element),
				// $productVariationOptions = '',
				htmlError = '<span class="error">Escolha uma opção disponível</span>';

			skuList = [];

			if (buyGridIsActive) {

				var totalItems = 0;

				$('.single-variations .stockTip').each(function(index, element) {

					var value = parseInt($(element).val()),
						sku = parseInt($(element).attr('id').replace('sku-', ''));

					if (value !== 0) {

						skuList.push(sku);
						totalItems++;

					}

				});

				if (totalItems) {
					return false;

				}

				$widget.alert($widget.options.needProductVariantion);

				return true;

			} else {

				if ($button.hasClass('must-validated')) {

					var $variations = $('.wd-product-variations, .wd-product-variations-new');

					$('.wd-product-variations .options .error, .wd-product-gift .error').remove();

					if ($('.browsing-grid').css('display') === 'block') {
						$widget.add($widget);
					}

					if ($('.product-list').css('display') === 'block') {
						$widget.add($widget);
					}

					if ($('.single-page').css('display') === 'block') {

						if ($button.hasClass('has-gift')) {

							// TODO passar controle de erro através de evento para dentro do wd product gift
							htmlError = '<span class="error gift-error">' + $widget.options.giftVariationErrorText + '</span>';
							$('#content-wrapper .wd-product-gift').append(htmlError);

						}

						if ($variations.length) {
							htmlError = '<span class="error variation-error">' + $widget.options.variationErrorText + '</span>';
						}

					}

					$widget.publish('/wd/product/variation/error/' + $productID.val(), {
						errors: [{
							msg: htmlError
						}]
					});

					return false;

				}

			}

			return true;

		},

		add: function(widget) {

			var $widget = widget,
				$w = $widget.getContext(),
				$form = $w('form[name="formAddToWishlist"]'),
				baseUrl = browsingContext.Common.Urls.BaseUrl,
				$document = $(document);

			function addSingleProductToWishlist(data) {

				$('.wishlist-list').empty().html('<select name="WishlistID"></select>');
				$(data).each(function(k, v) {

					if (v.IsActive) {
						$('form select[name="WishlistID"]').append('<option value="' + v.WishlistID + '">' + v.Name + '</option>');
					}

				});
				if ($.cookie('WishlistIDSelected') !== undefined) {
					$('form select[name="WishlistID"]').val($.cookie('WishlistIDSelected'));
				}

				var dataParams = {
					WishlistID: parseInt($('select[name="WishlistID"]', $form).val()),
					WebSiteID: parseInt($('input[name="WebSiteID"]', $form).val()),
					ProductID: parseInt($('input[name="ProductID"]', $form).val()),
					Quantity: parseInt($('input[name="Quantity"]', $form).val()),
					SkuID: $w('input[name="SkuID"]').val()
				}

				$.ajax({
					type: 'POST',
					url: baseUrl + 'Profile/Wishlist/AddProductToWishlist',
					data: dataParams
				}).done(function(response) {

					$.event.trigger({
						type: 'wd.product.wishlist.all.added',
						queueSize: 1,
						response: response
					});

					if (!response.ServiceResponse.Data.Errors.length) {
						$widget.alert([
							'<ul>Produto adicionado à sua lista!</ul>',
							'<a class="btn" href="' + baseUrl + 'painel-do-cliente/lista-de-desejo">Minhas listas</a>'
						].join(''));
					}
				});

			}

			function openAddToWishlistModal(data) {

				$widget.modal({
					element: $widget.element.find('.modal'),
					height: 200,
					className: 'show-form-add-wishlist true',
					onComplete: function() {
						$('.wishlist-list').empty().html('<select name="WishlistID"></select>');
						$(data).each(function(k, v) {

							if (v.IsActive) {
								$('form select[name="WishlistID"]').append('<option value="' + v.WishlistID + '">' + v.Name + '</option>');
							}

						});

						if ($.cookie('WishlistIDSelected') !== undefined) {
							$('form select[name="WishlistID"]').val($.cookie('WishlistIDSelected'));
						}

					}

				});

			}

			function wishlistDoesNotExist() {

				app.modal({
					html: '<div><p>Você não possui nenhuma lista de desejos</p><div class="button-wrapper"><a class="btn btn-wide" href="' + browsingContext.Common.Urls.Profile.AccountWishlist.Create + '">Clique aqui para criar uma lista.</a></div></div>',
					width: 'auto',
					className: 'show-form-add-wishlist false',
					height: 210
				});

			}

			function getWishlists() {

				return $.ajax({
					url: baseUrl + 'painel-do-cliente/lista-de-desejo/listar',
					beforeSend: function() {
						$('.wishlist-list').empty().html('carregando...');
					}
				});

			}

			if (!browsingContext.Common.Shopper.IsAuthenticated) {

				if ($w().hasClass('login-in-modal')) {

					$document.bind('wdProfileLogin_failed', function() {

						$document.bind('cbox_closed', function() {
							//$widget.add($widget);
							$document.unbind('cbox_closed');
							$document.unbind('wdProfileLogin_failed');
						});

					});

					// verificar skuid selecionado e monta url de callback
					var locationPath = location.pathname,
						queryStrings = $widget.getQueryString(),
						queryStringSignal = '?';

					_.each(queryStrings, function(el) {

						if (el !== 'v' && el !== 'cb') {
							locationPath += queryStringSignal + el + '=' + queryStrings[el];
							queryStringSignal = '&';

						}

					});

					var callBackUrl = locationPath;

					callBackUrl = callBackUrl + queryStringSignal + 'cb=productWishlist.add';
					queryStringSignal = '&';

					if ($w().data('skuID')) {
						callBackUrl = callBackUrl + queryStringSignal + 'v=' + $w().data('skuID');

					}

					$widget.ajax({
						url: browsingContext.Common.Urls.Profile.Login.Index + '.partial?Url=' + callBackUrl,
						type: 'GET',
						success: function(r) {

							r = app.widgetStarter(r);

							var actionUrl = browsingContext.Common.Urls.Profile.Login.Index,
								msg = '<div class="alert alert-warning"><div class="message"><p class="wd-product-wishlist-authentication-message"><i class="icon"></i>' + $widget.options.needAuthenticationInModalMessage + '</p></div></div>',
								$content = $('<div class="wd-modal authentication-modal wd-product-wishlist-login-modal"></div>').html(msg).append(r);

							$content.find('.wd-profile-login form.js-login')
								.attr('action', actionUrl)
								.append('<input type="hidden" name="url" value="' + callBackUrl + '" /><input type="hidden" name="redirectToUrl" value="true" />');

							app.modal({
								html: $content,
								width: 'auto',
								height: 'auto',
								className: 'open-modal-wishlist'
							});

						}
					});

				} else {

					app.modal({
						html: '<div><p>' + $widget.options.needAuthenticationMessage + '</p><div class="button-wrapper"><a class="btn btn-wide" href="' + baseUrl + 'Login/?Url=' + window.location.href + '">Clique aqui para ser redirecionado.</a></div></div>',
						width: 'auto',
						height: 210,
						className: 'open-modal-wishlist'
					});

				}

			} else {

				//caso esteja logado, abre modal para selecionar lista e adicionar produto
				getWishlists().done(function(data) {

					var showFormAdd = false;

					$(data).each(function(k, v) {

						if (v.IsActive) {
							showFormAdd = true;
						}

					});

					if (showFormAdd) {
						if ($widget.options.AutoCreateWishlist) {
							addSingleProductToWishlist(data);
						} else {
							openAddToWishlistModal(data);
						}

						/*openAddToWishlistModal(data);*/
					} else {
						if ($widget.options.AutoCreateWishlist) {

							$.ajax({
								url: browsingContext.Common.Urls.BaseUrl + 'painel-do-cliente/lista-de-desejo/salvar',
								data: {
									Name: 'Lista de desejos',
									Description: 'Minha lista de desejos',
									PurchasingBehavior: 'Product',
									PrivacyType: 2,
									IsActive: true
								},
								type: 'post',
								dataType: 'json',
								success: function(data) {

									if (data.Data.IsValid) {

										getWishlists().done(function(data) {
											openAddToWishlistModal(data);
										});

									} else {
										wishlistDoesNotExist();
									}

								}
							});
						} else {
							wishlistDoesNotExist();
						}

					}
				});

			}
		},

		disableButton: function(title) {

			var $w = this.getContext();

			$w('.btn-product-wishlist').attr({
				disabled: true,
				'class': 'btn-product-wishlist btn-product-wishlist-disabled',
				title: title
			}).val(title);

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

	// options defaults
	$.extend($.wd.ProductWishlist.prototype.options, {
		giftVariationErrorText: 'Escolha uma opção disponível',
		variationErrorText: 'Escolha uma opção disponível',
		needAuthenticationInModalMessage: 'Para prosseguir você precisa estar autenticado.',
		needAuthenticationMessage: 'Você precisa estar logado para adicionar este item à lista de desejos.',
		needProductVariantion: 'Escolha uma variação do produto.',
		needProductVariantionList: 'Produto com variação!'
	});

}(window, document, jQuery));

}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/product.associations/Scripts/wd.product.associations.js*/
try{(function($, window, document, undefined) {

	var productGift = {
		has: false,
		data: null
	};

	var getItemQuantity = function(scope) {
		var $scope = $(scope);
		var _qty = 1;

		if ($scope.find('.cross-sell-product-quantity').length) {
			_qty = numeral($scope.find('.cross-sell-product-quantity span').text()).value();
		}

		return _qty;
	};

	$.widget('wd.ProductAssociations', $.wd.widget, {

		// Opções do Widget
		options: {},

		//
		_create: function() {

			var $widget = this,
				$w = $widget.getContext(),
				$baseUrl = browsingContext.Common.Urls.BaseUrl;

			$widget.subscribe('/wd/product/gift/created', function() {
				productGift.has = true;
			});

			$widget.subscribe('/wd/product/gift/selected', function(e, args) {
				if (args && _.isObject(args)) {
					productGift.data = args;
				} else {
					productGift.data = null;
				}
			});

			$w('.cross-sell').find('form').on('submit', function(e) {

				var x = 0;

				if (productGift.has) {
					if (!productGift.data ||
						$.isEmptyObject(productGift.data)
					) {

						e.preventDefault();

						$('html, body').animate({
							scrollTop: $('.wd-product-gift').offset().top
						}, 85);

						$widget.alert('Selecione um brinde', 'error', {});

						return false;
					} else {
						$(this).find('.gift-input').remove();

						var skuInput = '<input class="gift-input" type="hidden" value="' + productGift.data.skuID + '" name="Products[0].SelectedFreeItem[0].Sku">',
							productInput = '<input class="gift-input" type="hidden" value="' + productGift.data.productID + '" name="Products[0].SelectedFreeItem[0].ProductID">',
							parentInput = '<input class="gift-input" type="hidden" value="' + productGift.data.parentID + '" name="Products[0].SelectedFreeItem[0].ParentID">';

						$(this).append(skuInput + productInput + parentInput);
					}
				}

				$(this).find('.cross-sell-form-data').each(function() {
					$(':input', this).each(function() {
						$(this).removeAttr('disabled').attr('name', $(this).attr('name').replace('{0}', x));
					});
					x++;
				});

				if ($(this).find('.cross-sell-form-ready').val() === 'true') {
					$.publish('basket/add', {
						params: $(this).serialize(),
						redirectTo: $baseUrl + 'carrinho',
						urlBasket: $(this).attr('action')
					});
				} else {
					$(this).find('.cross-sell-SKUID[value=""]').each(function() {
						$(this).closest('.cross-sell-product').addClass('cross-sell-product-pending');
					});
				}
				return false;
			});

			$w('.crosselBundle .crosselBundle-rootBundle').each(function() {
				var $h = 0,
					$th = $(this).height() - 127 + ($.browser.msie ? 0 : 128);

				$('.wd-product-line', this).each(function() {
					$h = ($th > $h ? $th : $h);
				});
				$('.wd-product-line', this).height($h);
			});
			$w('.crosselBundle-toggleContainer').bind('click', function() {
				$(this).closest('.wd-product-line').toggleClass('crosselBundle-containerHidden');
			});

			$w('.crosselBundle .bundleoption').bind('change', function() {
				if ($(this).attr('type') === 'checkbox' && !$(this).is(':checked')) {
					var $parent = $(this).closest('.crosselBundle-bundleContainer'),
						$siblings = $('input[type="checkbox"]', $parent).not(this);
					if (!$siblings.filter(':checked').length) {
						$siblings.first().attr('checked', 'checked');
					}
				}

				var $additionals = [];
				$w('.bundleoption').each(function() {
					var $t = $(this),
						$tp = $t.attr('type'),
						$n = $t.attr('name'),
						$ch = $t.is(':checked'),
						$sl = $t.is('select') && $t.closest('.itemType-item-product').find('.bundleoption').filter(function() {
							return $(this).is(':checked') || $(this).attr('type') === 'hidden';
						}).length,
						$v = $t.val();

					if ($ch || $sl || $tp === 'hidden') {
						$additionals.push($v);
					}
				});
				$.publish('/product/price', {
					ProductID: $w('.crosselBundle-rootBundle').attr('data-id'),
					Additionals: $additionals
				});
			});

			$w('.crosselBundle form').on('submit', function() {

				var $form = $(this),
					$serialized = {},
					$k = 0,
					$keys = {},
					$errors = [];

				$('.bundleoption', this).each(function() {
					var $t = $(this),
						$tp = $t.attr('type'),
						$n = $t.attr('name'),
						$ch = $t.is(':checked'),
						$sl = $t.is('select'),
						$v = $t.val();

					if ($t.closest('.itemType-item-product').length)
						$sl = $sl && $t.closest('.itemType-item-product').find('.bundleoption').filter(function() {
							return $(this).is(':checked') || $(this).attr('type') === 'hidden';
						}).length;

					if (($ch || $sl || $tp === 'hidden') && !$t.hasClass('bundleoption-ignore')) {
						if (!$keys.hasOwnProperty($n) || !$keys[$n])
							$keys[$n] = ($ch || $sl || $tp === 'hidden' ? $v : null);
						//console.log($ch, $sl, $tp, $t, $v);
						$serialized['Products[0].Additionals[' + $k + '].ProductID'] = $v;
						$serialized['Products[0].Additionals[' + $k + '].IsSelected'] = true;
						$k++;
					}
				});

				$(':input:not(.bundleoption):not([type="submit"])', this).each(function() {
					if ($(this).attr('name'))
						$serialized[$(this).attr('name')] = $(this).val();
				});

				if (productGift.has) {
					if (!productGift.data ||
						$.isEmptyObject(productGift.data)) {
						$errors.push('Selecione um brinde');
					} else {
						$serialized['Products[0].SelectedFreeItem[0].Sku'] = productGift.data.skuID;
						$serialized['Products[0].SelectedFreeItem[0].ProductID'] = productGift.data.productID;
						$serialized['Products[0].SelectedFreeItem[0].ParentID'] = productGift.data.parentID;
					}
				}

				$.each($keys, function(k, v) {
					if (!v)
						$errors.push(k);
				});
				if ($errors.length) {
					//console.log($errors, $keys);
					$.each($errors, function(k, v) {
						$('.error-placeholder[data-key="' + v + '"]', $form).text('Escolha pelo menos uma opção');
					});
				} else {
					//console.log($serialized);
					$.publish('basket/add', {
						params: $serialized,
						redirectTo: '/carrinho'
					});
					$('.btn-buy', $form).hide();
					$('.loading-buy', $form).show();
				}
				return false;
			});

			/*
				VARIAÇÕES
			*/
			var disableOption = function(el) {
					var disabledText = " (Indisponível)";
					el.addClass('option-disabled').attr('disabled', 'disabled').text(el.attr('data-text') + disabledText);
				},
				enableOption = function(el) {
					el.removeClass('option-disabled').removeAttr('disabled').text(el.attr('data-text'));
				},
				crossSellFirst = $w('.cross-sell-product.first'),
				watchVariationChange = function(e, r) {
					var temp = r.variationContent.hierarchy.split('|'),
						hierarchy = [];

					//limpar hierarchy
					for (var i = 0; i < temp.length; i++) {
						if (temp[i]) {
							hierarchy.push(temp[i]);
						}
					}
					//console.debug(hierarchy);
					for (var i = 0; i < hierarchy.length; i++) {
						var metadataPath = hierarchy[i].split('.'),
							metadataSelector = '[data-metadataid="' + metadataPath[0] + '"]',
							optionSelector = '[value="' + metadataPath[1] + '"]';

						if (crossSellFirst.find('option' + metadataSelector + optionSelector).is(':enabled')) {
							crossSellFirst.find('select' + metadataSelector).val(metadataPath[1]);
							crossSellFirst.find('select' + metadataSelector).trigger('change');
						}

					}
				};

			$.subscribe('/wd/product/variation/changed/' + $w('.cross-sell-productid').val(), watchVariationChange);

			$w('.cross-sell-variations').each(function() {
				//var variations = JSON.parse($(this).attr('data-variations'));
				var variations = $.parseJSON($(this).attr('data-variations'));
				var thisProductID = $(this).closest('.wd-product-line').data('pid');
				/*
					Inicialização dos 'select' de variações
				*/
				$('select:first-child option:enabled', this).each(function() {
					var metadataID = $(this).attr('data-metadataid'),
						optionID = $(this).val(),
						selector = 'var|' + metadataID + '|' + optionID,
						doDisable = true;

					for (var variation in variations) {
						if (variations.hasOwnProperty(variation)) {
							if (!!~variation.indexOf(selector) && variations[variation].Availability === "I") {
								doDisable = false;
							}
						}
					}
					if (doDisable) {
						disableOption($(this));
					}
				});

				/*
					Comportamento dos 'select' de variações
				*/
				$('select', this).on('change', function() {
					enableOption($(this).addClass('selected')
						.nextAll('select')
						.removeClass('selected')
						.val('none')
						.find('option[value!="none"]'));

					$(this).next('select').find('option:enabled').each(function() {
						var selector = $(this).attr('data-metadataid') + '|' + $(this).val(),
							doDisable = true;

						$(this).parent().prevAll('select').each(function() {
							selector = $(this).attr('data-metadataid') + '|' + $(this).val() + '|' + selector;
						});
						selector = 'var|' + selector;

						for (var variation in variations) {
							if (variations.hasOwnProperty(variation)) {
								if (!!~variation.indexOf(selector) && variations[variation].Availability === "I") {
									doDisable = false;
								}
							}
						}
						if (doDisable) {
							disableOption($(this));
						} else {
							enableOption($(this));
						}
					});

					var crossSellProduct = $(this).closest('.cross-sell-product');

					if (!$(this).next('select').length) {

						var selector = $(this).attr('data-metadataid') + '|' + $(this).val();

						$(this).prevAll('select').each(function() {
							selector = $(this).attr('data-metadataid') + '|' + $(this).val() + '|' + selector;
						});
						selector = 'var|' + selector;

						var variationSKUID = '';

						if (variations[selector] && variations[selector].hasOwnProperty('SkuID')) {
							variationSKUID = variations[selector].SkuID;
						}

						$('.cross-sell-SKUID', crossSellProduct).val(variationSKUID);

						$(this).closest('.wd-product-line').attr("data-vid", variationSKUID);
						$(this).closest('.cross-sell-product').removeClass('cross-sell-product-pending');

						var _qty = '1';

						// Cálculo de quantidade individual deve ser sempre 1
						// var _qty = getItemQuantity($(this).closest('.wd-product-line'));

						$.publish('/product/asyncprice/' + $('.wd-product-asyncprice', crossSellProduct).attr('data-productid'), {
							ProductID: thisProductID,
							SkuID: variationSKUID + 'x' + _qty
						});
					} else {
						$('.cross-sell-SKUID', crossSellProduct).val('');

					}

					$widget._updateTotal(crossSellProduct.closest('form'));
				});
			});

			$w(".other.cross-sell-product").each(function(i, e) {
				//console.log("i e",i,e);
				$this = $(e);
				$this.find(".cross-sell-variations").find("select").each(function(i, e) {
					if ($(e).find("option").size() == 2) {
						$(e).find("option").eq(0).removeAttr("selected");
						$(e).find("option").eq(1).attr("selected", "selected");
						$(e).trigger("change");
					}
				});
			});

		},

		_updateTotal: function($form) {
			var widget = this,
				$w = widget.getContext(),
				productID = [$('.cross-sell-product:first .cross-sell-SKUID', $form).val()],
				b = browsingContext.Common.Urls.BaseUrl,
				usePriceDescription = !!widget.options.usePriceDescription,
				allSelected = true;

			$('.cross-sell-product', $form).each(function() {
				var PID = $('.cross-sell-SKUID', this).val(),
					QTT = parseInt($('.cross-sell-quantity', this).val());

				if (PID.length) {
					while (QTT--) {
						productID.push(PID);
					}
				} else {
					allSelected = false;
				}
			});

			if (allSelected) {
				$form.find('.cross-sell-form-ready').val('true');
				$form.find('.cross-sell-footer').addClass('form-ready-true').removeClass('form-ready-false');

				var $crossSells = $form.find(".cross-sell-product"),
					mainProductId,
					mainProductSkuId,
					bundles = [],
					auxCrossSellsId,
					auxCrossSellsSkuId,
					$tmpDivData,
					i2 = 0;

				$crossSells.each(function(i, el) {
					$tmpDivData = $(el).find('div').first();
					auxCrossSellsId = $tmpDivData.attr('data-pid');

					// var qty = '1';
					// if ($(el).find('.cross-sell-product-quantity').length) {
					// 	qty = numeral($(el).find('.cross-sell-product-quantity span').text()).value();
					// }
					var qty = getItemQuantity(el);

					qty = 'x' + qty + 'x';
					auxCrossSellsSkuId = $tmpDivData.attr('data-vid') || auxCrossSellsId;
					bundles[i2] = auxCrossSellsId + qty + auxCrossSellsSkuId;
					i2++;
				});

				var data = {
					ProductID: mainProductId,
					Skus: mainProductSkuId,
					Bundles: bundles.join(),
					AggregateResultItems: true,
					Template: 'wd.product.asyncprice.total.json.template'
				};

				var getFormattedPrice = function(r) {
					if (usePriceDescription && r.PriceDescription) {
						return r.PriceDescription;
					}

					var html = '';
					html += '<strong class="sale-price">';
					html += '<em class="prefix">Por</em>';
					html += '<span>' + (r.FormattedAmount || r.Amount.formatMoney(2, ',', '.')) + '</span>';
					html += '</strong>';

					return html;
				};

				$.ajax({
					url: browsingContext.Common.Urls.BaseUrl + 'widget/product_asyncprice',
					data: data,
					dataType: 'json',
					type: 'GET',
					success: function(response) {
						var html = '<span class="price">';
						html += '<div class="priceContainer">';
						//html += '<strong class="sale-price">';
						//html += '<em class="prefix">Por</em>';
						//html += '<span>' + response.FormattedAmount + '</span>';
						//html += '</strong>';

						html += getFormattedPrice(response);
						html += '</div>';
						html += '</span>';
						$form.find(".total").find(".asyncprice-area").html(html);
					},
					error: function(err) {
						console.log(err);
					}
				});
			} else {
				$form.find('.cross-sell-form-ready').val('false');
				$form.find('.cross-sell-footer').addClass('form-ready-false').removeClass('form-ready-true');
			}
		}
	});
})(jQuery, window, document);

}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/product.reviews/Scripts/wd.product.reviews.js*/
try{//
// Widget de criação de novo review
// Esse widget tem responsabilidade de mostrar o link para novo review e abrir a modal para o form
//
// Publish:
//

;
$.widget('wd.ProductReviews', $.wd.widget, {

	_create: function() {

		var widget = this;
		var $w = this.getContext();
		var listOptions = ($('.wd-list-reviews-itens').length ? $.parseJSON($('.wd-list-reviews-itens').attr('data-options')) : {});
		var isList = listOptions.isList;
		var bcCommon = browsingContext.Common;

		// Refatorar para não precisar de vars globais
		window.ReviewCount = listOptions.ReviewCount || 0;
		window.PageSize = listOptions.PageSize || 3;
		window.PageIndex = listOptions.PageIndex || 0;
		window.data_paginate = listOptions.data_paginate;
		window.TextPagination = listOptions.TextPagination;
		window.productId = listOptions.productId || browsingContext.Page.Product.ProductID;
		window.showMail = listOptions.showMail || false;

		/* removido pois onera o banco */
		/*
		if (isList && bcCommon.CacheSettings.CacheStrategy === 'Cached' && $w().hasClass('wd-product-reviews-list')) {
			widget._lazyReload();
		}
		*/

		widget.element.find('.review-create').click(function(e) {
			e.preventDefault();

			var groupProductConfig = bcCommon.Config.Platform.Product;
			if (groupProductConfig.EnableReviewOnlyForBuyers || groupProductConfig.EnableUniqueReview) {
				widget._checkReviewPermission();
				return;
			}

			widget.publish('/product/review/create', {
				widget: widget.element
			});

			return;
		});

		$.subscribe('productReview/reloadCaptcha', function() {
			var $reload = $('.wd-product-reviews .reload-captcha');
			var $captcha = $reload.parents('.captcha');
			var $image = $captcha.find('img[id^="review-catptchaimg-"]');
			var fullsrc = $image.attr('data-src');
			var basesrc = ~fullsrc.indexOf('?') ? fullsrc.slice(0, fullsrc.indexOf('?')) : fullsrc;
			var date = new Date();
			var random = Math.floor(Math.random() * date.getTime());
			var src = basesrc + '?_=' + random;
			var newImage = $image.clone();
			newImage.attr('src', src + 2);
			newImage.attr('data-src', fullsrc);
			newImage.on('load', function() {
				$captcha.removeClass('loading');
			});
			$captcha.addClass('loading');
			$image.after(newImage).remove();
		});

		//$('body').on('click', '.wd-product-reviews  .reload-captcha', function() {
		$('.reload-captcha', widget.element).click(function() {
			var $obj = $('.wd-product-reviews .captcha-box img');
			var width = $obj.width();
			var height = $obj.height();
			var id = $obj.attr('id');
			var datasrc = $obj.attr('data-src');
			var src = datasrc + '?_=' + Math.floor(Math.random() * (999999 - 2 + 1)) + 2;
			$obj.remove();
			img = new Image();
			img.src = src;
			img.width = width;
			img.height = height;
			$(img).attr('id', id).attr('data-src', datasrc).appendTo('.wd-product-reviews .captcha-box');
		});

		$(widget.element).delegate('.btn-thumbs-up', 'click', function(elem) {
			if (bcCommon.Shopper.IsAuthenticated) {
				var reviewId = $(this).data('review-id');
				var otherButton = $('.btn-thumbs-down[data-review-id="' + reviewId + '"]');
				widget._saveProductReview(this, otherButton, reviewId, 1);
			} else {
				widget._showModalForUnauthenticatedUser();
			}
		});

		$(widget.element).delegate('.btn-thumbs-down', 'click', function(elem) {
			if (browsingContext.Common.Shopper.IsAuthenticated) {
				var reviewId = $(this).data('review-id');
				var otherButton = $('.btn-thumbs-up[data-review-id="' + reviewId + '"]');
				widget._saveProductReview(this, otherButton, reviewId, 2);
			} else {
				widget._showModalForUnauthenticatedUser();
			}
		});

		// verifica se ReviewCount é maior que pagesize, se sim cria paginação
		if (isList == true) {
			widget.paginate(widget);
			widget.element.on('click', '.wd-review-paginate a', function() {
				widget.changePage(this, widget)
			});
		};

		widget.subscribe('/product/review/info', function(e, args) {
			e.preventDefault();
			var $contentModal = $('.wd-product-reviews-info');
			$contentModal.find('.product-reviews-info-content').html(args.message);

			widget.modal({
				element: $($contentModal.get(0)).find('div.wd-widget'),
				'class': 'modal-wd-product-info',
				className: 'modal-wd-product-info',
				width: 'auto',
				height: 'auto'
			});
		});

		//
		// Escuta qualquer evento que solicite abrir o form de review
		//
		widget.subscribe('/product/review/create', function(e, args) {
			e.preventDefault();
			var $contentModal = $('.wd-product-reviews-create', widget.element);

			///////// hack para pegar altura do elemento com display none
			var prevStyle = $contentModal.attr('style');
			$contentModal.css({
				position: 'absolute',
				visibility: 'hidden',
				display: 'block'
			});
			var modalHeight = $contentModal.height();
			$contentModal.attr("style", prevStyle ? prevStyle : "");
			///////// end hack

			if ($contentModal.length) {
				var $image = $('img[id^="review-catptchaimg-"]', widget.element);
				$image.attr('src', $image.attr('data-src'));

				widget.modal({
					element: $contentModal,
					'class': 'modal-wd-product-reviews',
					className: 'modal-wd-product-reviews',
					width: $w(".modalWidth").val(),
					height: modalHeight ? modalHeight : 'auto',
					onComplete: function($modal) {
						var $form = $modal.find('form');
						widget.validate($form, {
							errorPlacement: $.wd.ProductReviews.prototype.options.validate.errorFlyout,
							submitHandler: function(form) {
								$(form).find("button:submit").attr("disabled", true);
								widget._submit(form);
								return false;
							}
						});

						var idComplete = $("[name='Title']").attr('id');
						var getLastPart = idComplete.split('-');
						var id = getLastPart[getLastPart.length - 1];

						$.ajax({
							type: 'POST',
							url: 'Login/GetDataUser/',
							data: '',
							async: false,
							success: function(data) {
								if (data.logged) {
									//$("input#review-name-" + id).attr('disabled', 'disabled');
									//$("input#review-email-" + id).attr('disabled', 'disabled');

									$("input#review-name-" + id).val(data.nameUser);
									$("input#review-email-" + id).val(data.emailUser);
								}
							}
						});

						$('.rating label', $modal).hover(widget.overRating, widget.outRating).click(widget.setRating);

						$('.button-wrapper', widget.element).click(function(e) {
							e.preventDefault();
							$form = widget.element.find('form');
							widget._submit($form);
						});

						$(".slider").find(".range-value").val(0).css("left", "0%")
						$(".slider").each(function(i, el) {
							var steps = $(el).data("steps");
							$(".slider").slider({
								value: 0,
								min: 0,
								max: 100,
								step: steps,
								slide: function(event, ui) {
									$(event.target).attr("data-range", ui.value);
									$(event.target).closest(".sliderWrapper").find(".range-value").val(ui.value).css("left", ui.value + "%");
								}
							});
						})
					}
				});
			}

		});

		//Zendesk 5392 URL para abrir a modal de reviews.
		if (window.location.search.indexOf('openAvailabilityModal') >= 1) {
			$(".review-create").first().click();
		}

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
	},

	changePage: function(elem, widget) {
		var $w = widget.getContext();
		var $elem = elem ? $(elem) : null;

		//var $wId = '#'+elem.delegateTarget.id;
		//var $load = $($wId +' .wd-product-reviews-list .load');
		var $load = $w('.load');

		data_paginate = $elem ? $(elem).attr('data-paginate') : 0;
		//PageSize = PageSize*data_paginate;

		//var NewPageSize = PageSize*data_paginate;
		//var NewPageIndex = NewPageSize-PageSize;

		//remove .page-selected de todos e seta apenas no cara certo
		//$($wId +' .wd-review-paginate .page-selected').removeClass('page-selected');
		$w(' .wd-review-paginate .page-selected').removeClass('page-selected');

		if ($elem) {
			$elem.addClass('page-selected');
		}

		$load.show();

		$.ajax({
			type: 'POST',
			//url: 'widget/product_reviews?ProductID='+productId+'&PageIndex='+data_paginate+'&PageSize='+PageSize,
			url: browsingContext.Common.Urls.BaseUrl + 'widget/product_reviews?ProductID=' + productId + '&PageIndex=' + data_paginate + '&PageSize=' + PageSize + '&Template=wd.product.reviews.paginate.template',
			success: function(data) {
				$load.hide();
				// $($wId +' .wd-list-reviews-itens .wd-review-item').remove();
				// $($wId +' .wd-list-reviews-itens').prepend(data);
				$w('.wd-list-reviews-itens').html(data);
			}
		});
	},

	paginate: function($context) {
		var totalPages = Math.ceil(ReviewCount / PageSize);
		//arredonda pra cima
		totalPages = Math.round(totalPages);
		var selected = '',
			paginate = '';

		if (totalPages >= 1) {
			paginate = '<span>' + TextPagination + '</span><ul>';
			for (var i = 1; i <= totalPages; i++) {
				selected = '';
				if (data_paginate == (i - 1)) {
					selected = 'class="page-selected dont-animate"';
				}
				paginate += '<li><a ' + selected + ' href="javascript:void(0)" class="dont-animate" data-paginate="' + (i - 1) + '">' + i + '</a></li>';
			};
			paginate += '</ul>';
		}

		//imprime na tela
		//$('.wd-review-paginate').append(paginate);
		$context.element.find('.wd-review-paginate').append(paginate);
	},

	setRating: function() {
		$(this).siblings().find(':checked').removeAttr('checked');
		$('input[type=radio]', this).attr('checked', 'checked');
		$(this).parent().attr('class', 'rating').addClass('selected-' + $(this).attr('class'));
	},

	overRating: function() {
		$(this).parent().addClass($(this).attr('class'));
	},

	outRating: function() {
		$(this).parent().removeClass($(this).attr('class'));
	},

	_showModalForUnauthenticatedUser: function() {
		var baseUrl = browsingContext.Common.Urls.BaseUrl;
		app.modal({
			html: '<div><p>Você precisa estar autenticado</p><div class="button-wrapper"><a class="btn btn-wide" href="' + baseUrl + 'Login/?Url=' + window.location.href + '">Clique aqui para ser redirecionado.</a></div></div>',
			width: 'auto',
			height: 210,
			className: 'open-modal-review'
		});
	},

	_saveProductReview: function(buttonVoted, otherButton, reviewId, reaction) {
		var widget = this;
		widget._toggleLoadingFeedback(reviewId);

		var saveProductReviewUrl = browsingContext.Common.Urls.BaseUrl + "shopping/review/AddProductReviewReaction";
		$.ajax({
			type: "POST",
			url: saveProductReviewUrl,
			data: {
				reviewID: reviewId,
				productID: browsingContext.Page.Product.ProductID,
				reaction: reaction
			},
			success: function(data) {
				if (data.IsValid) {
					widget._showSuccessMessageReview(reviewId);

					widget._disableButton(buttonVoted);
					widget._disableButton(otherButton);
					widget._addVotedClass(buttonVoted);

					widget._incrementButtonVotes(buttonVoted);

					var customerVote = $('.wd-review-thumb-signal[data-review-id="' + 1 + '"]');

					if (customerVote.data('customer-vote') != null) {
						widget._decrementButtonVotes(otherButton);
					}

					customerVote.data('customer-vote', 3);
				}

				widget._toggleLoadingFeedback(reviewId);
			},
			error: function(data) {
				widget._toggleLoadingFeedback(reviewId);
				widget._hideSuccessMessageReview(reviewId);
			}
		});
	},

	_toggleLoadingFeedback: function(reviewId) {
		var loading = $('.loading-review[data-review-id="' + reviewId + '"]');
		if (loading.is(':visible')) {
			loading.hide(0);
		} else {
			loading.show(0);
		}

		$('.btn-thumbs-up[data-review-id="' + reviewId + '"],' + '.btn-thumbs-down[data-review-id="' + reviewId + '"]').each(function() {
			if ($(this).is(':visible')) {
				$(this).hide(0);
			} else {
				$(this).show(0);
			}
		});
	},

	_showSuccessMessageReview: function(reviewId) {
		$('.success-message-review[data-review-id="' + reviewId + '"]').show(0);
	},

	_hideSuccessMessageReview: function(reviewId) {
		$('.success-message-review[data-review-id="' + reviewId + '"]').hide(0);
	},

	_enableButton: function(button) {
		$(button).prop('disabled', false);
	},

	_disableButton: function(button) {
		$(button).prop('disabled', true);
	},

	_addVotedClass: function(e) {
		$(e).addClass('voted');
	},

	_incrementButtonVotes: function(button) {
		var currentValue = $(button).data('votes');
		var newValue = currentValue + 1;
		$(button).data('votes', newValue);
		$(button).html($(button).html().replace(currentValue, newValue));
	},

	_decrementButtonVotes: function(button) {
		var currentValue = $(button).data('votes');
		var newValue = currentValue == 0 ? 0 : currentValue - 1;
		$(button).data('votes', newValue);
		$(button).html($(button).html().replace(currentValue, newValue));
	},

	_submit: function(form) {
		var widget = this;
		var $form = $(form);
		widget.ajax({
			type: 'POST',
			dataType: 'json',
			url: $form.attr('action'),
			data: $form.serialize(),
			success: function(data) {
				if (data.IsValid)
					widget._handleSuccess(data);
				else
					widget._handleError(data);
			},
			error: function(e) {
				//alert(e);
			},
			complete: function() {
				$(form).find("button:submit").attr("disabled", false);
			}

		});
	},

	_handleSuccess: function(response) {
		var widget = this;
		widget.alert(widget.options.messages.success, 'success', {
			'class': 'wd-product-reviews-create-response',
			className: 'wd-product-reviews-create-response-modal'
		});

		$(".wd-product-reviews  .reload-captcha").trigger("click");
	},

	_handleError: function(response) {
		var widget = this,
			isCaptcha = false,
			txtResponse = widget.options.messages.error;
		if (response.Errors.length) {
			var errors = response.Errors;
			if (errors[0].Key == 'CaptchaText') {
				isCaptcha = true;
				txtResponse = errors[0].ErrorMessage;
			}
		}
		widget.alert(txtResponse, 'error', {
			'class': 'wd-product-reviews-create-response',
			className: 'wd-product-reviews-create-response-modal',
			onClose: function() {
				if (isCaptcha) {
					$('input[name="CaptchaText"]').addClass('error');
				}
				widget.publish('/product/review/create', {
					widget: widget.element
				});
			}
		});
	},

	_lazyReload: function() {
		var $window = $(window);
		var widget = this;
		var $w = this.getContext();

		function $checkScroll() {
			var screenBottom = $window.scrollTop() + $window.height() + 100;
			var $this = $w();
			if ($this.offset().top < screenBottom) {
				$window.unbind('scroll.ProductReview');
				widget.changePage(null, widget);
			}

		};

		$window.bind('scroll.ProductReview', _.throttle($checkScroll, 280))
			.trigger('scroll');
	}
});

// Defaults
$.extend($.wd.ProductReviews.prototype.options, {
	messages: {
		success: "Seu review foi enviado com sucesso!",
		error: "Ocorreram erros no envio de seu review!"
	}
});

// Validate defaults
$.extend($.wd.ProductReviews.prototype.options.validate, {
	rules: {
		Name: {
			required: true
		},
		Email: {
			required: true,
			email: true
		},
		Title: {
			required: true
		},
		ReviewBody: {
			required: true
		}
	}
});

}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/marketing.newsletter/Scripts/wd.marketing.newsletter.js*/
try{//
// Widget de newsletter
// Esse widget tem responsabilidade de mostrar a caixinha de newsletter e fazer o cadastro
//
// Publish:
//
;
(function($, window, document, undefined) {

	$.widget('wd.MarketingNewsletter', $.wd.widget, {

		_create: function() {
			var widget = this;
			var form = $(widget.element).find("form")[0];
			widget.validate(form, {
				submitHandler: function() {
					widget._submit(form);
					return false;
				},
				ignore: ":hidden"
			});
		},

		_publishSendEvent: function(form) {
			var formObj = {
				name: form.find('name="Name"'),
				email: form.find('name="Email"'),
			};

			this.publish()
		},

		_submit: function(form) {
			form = $(form);
			var widget = this,
				$w = widget.getContext(),
				btnName = "";

			widget.ajax({
				url: baseUrl + 'shopping/newsletter.json',
				type: 'post',
				data: form.serialize(),
				dataType: 'json',
				beforeSend: function() {
					$.publish('wd/MarketingNewsletter/Submit/BeforeSend', {
						form: form
					});
					btnName = form.find('button').attr('disabled', 'disabled').text();
					form
						.find('button').attr('disabled', 'disabled').text("Aguarde")
						.end().find('.loading').show();

				},
				success: function(data) {
					var response = data.Response;

					if (response && response.IsValid) {
						widget._handleSuccess(response);
					} else {
						widget._handleError(response);
					}
				},
				complete: function() {
					$.publish("wd/MarketingNewsletter/Submit/Complete", {});
					$w('.loading').hide();
					form.find('button').removeAttr('disabled').text(btnName);
					btnName = "";
				}
			});

			return false;
		},

		_handleSuccess: function(response) {
			var widget = this,
				$w = this.getContext();
			$w(':input').val('');
			$w('button').removeAttr('disabled');
			$w('.form-wrapper').hide();
			$w('form').append('<div class="message">' + widget.options.messages.subscribeSuccess + '</div>');
		},

		_handleError: function(response) {
			var widget = this,
				$w = this.getContext();
			$w('button').removeAttr('disabled');
			widget.alert(response.Errors[0].ErrorMessage, 'error', {
				className: "wd-marketing-newsletter-modal"
			});
		}

	});

	// Defaults
	$.extend($.wd.MarketingNewsletter.prototype.options, {
		messages: {
			subscribeSuccess: 'Parabéns! Seu cadastro na newsletter foi realizado com sucesso'
		}
	});

	// Validate

	$.extend($.wd.MarketingNewsletter.prototype.options.validate, {
		errorPlacement: $.wd.MarketingNewsletter.prototype.options.validate.errorFlyout,
		rules: {
			Name: {
				required: true
			},
			Email: {
				required: true,
				email: true
			}
		}
	});

})(jQuery, window, document);

}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/google.tag.manager.newversion.v2/Scripts/wd.google.tag.manager.newversion.v2.js*/
try{var pageStep;
var listBasket = [];
listBasket = browsingContext.Common.Basket.Items;


var GTM = {
	pageView: function() {
		var pageType	= (location.hash || '').replace('#',''),
			pageCategory = '';
		
		switch(pageType){
			case 'signin':
				pageCategory = 'signin';
				pageStep = 1;
				break;
			case 'signup':
				pageCategory = 'signup' ;
				pageStep = 1;
				break;
			case 'delivery':
				pageCategory = 'delivery';
				pageStep = 2;
				break;
			case 'payment':
				pageCategory = 'payment';
				pageStep = 3;
				break;
			case 'confirmation' :
				pageCategory = 'confirmation';
				pageStep = 4;
				break;
		}
		
		if(pageCategory.length){
			 
			if (pageCategory == "confirmation") {
				
				dataLayer.push({
					'pageCategory': pageCategory,
					'visitorType': 'high-value',
					'event': 'checkoutOption',
					'ecommerce':{
						'checkout_option': {
							'actionField': {'step': pageStep}
						}
					}
				});
				
			} else if (pageCategory == "signin") {
				
				dataLayer.push({
					'pageCategory': pageCategory,
					'visitorType': 'high-value',
					'event': 'checkout',
					'ecommerce': {
						'checkout': {
							'actionField': {'step': pageStep},
							'products': GTM.getBasketItems()
						}
					}
				});
				
			} else {
				
				dataLayer.push({
					'pageCategory': pageCategory,
					'visitorType': 'high-value',
					'event': 'checkout',
					'ecommerce':{
						'currencyCode': 'BRL',
						'checkout': {
							'actionField': {'step': pageStep},
							'products': GTM.getBasketItems()
						}
					}
				});
				
			}
		}
	},
	getBasketItems: function() {
		var items = [];
		if (browsingContext.Common.Basket.Items.length) {
			$.each(browsingContext.Common.Basket.Items, function(k, i) {
				items.push({
					'id': i.ProductID,
					'sku': i.SKU,
					'name': app.tools.htmlDecode(i.Name),
					'price': i.RetailPrice,
					'category': app.tools.htmlDecode(i.CategoryName),
					'brand': i.BrandName,
					'variant': '',
					'quantity': i.Quantity
				});
			});
		}
		return items;
	},
	getProduct: function() {
		return {
			'id': _dataGTM.id,
			'name': app.tools.htmlDecode(_dataGTM.name),
			'sku': app.tools.htmlDecode(_dataGTM.sku),
			'price': _dataGTM.price,
			'category': app.tools.htmlDecode(_dataGTM.category),
			'brand': _dataGTM.brand
		};
	},
	getProducts: function(listType) {
		var items = [];
		var itemCount = 1;
		console.info( ' grid prod  '+ gridProducts);
		if (gridProducts.length) {
			$.each(gridProducts, function(k, i) {
				items.push({
					'id': i.ProductID,
					'sku': i.SKU,
					'name': app.tools.htmlDecode(i.Name),
					'price': i.RetailPrice,
					'category': app.tools.htmlDecode(i.LeafCategoryName),
					'brand': i.BrandName,
					'variant': '',
					'list': listType,
					'position': itemCount
				});
				itemCount++;
			});
		}
		return items;
	},
	insertScript: function(code) {
		(function(w, d, s, l, i) {
			w[l] = w[l] || [];
			w[l].push({
				'gtm.start': new Date().getTime(),
				event: 'gtm.js'
			});
			var f = d.getElementsByTagName(s)[0]
			, j = d.createElement(s)
			, dl = l != 'dataLayer' ? '&l=' + l : '';
			j.async = true;
			j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
			f.parentNode.insertBefore(j, f);
		})(window, document, 'script', 'dataLayer', code);
	}
};
; (function($, window, document, undefined) {
	$.widget('wd.GoogleTagManagerNewVersionV2',  $.wd.widget, {
		// Create
		_create: function () {
			var $widget = this,
				$w = $widget.getContext(),
				codes = $w().data('codes').replace(';', ',').split(',');
			
			var bodyClass = $('body').attr('class'),
				pageType,
				pageCategory,
				listType;
			
			// home
			if (!!~bodyClass.indexOf('HomeRoute')) {
				pageCategory = 'home';
				listType = 'Página inicial';
			}
			
			// produto
			else if (!!~bodyClass.indexOf('context-product')) {
				pageCategory = 'product';
				listType = 'Detalhe do produto';
			}
			
			// categoria
			else if (!!~bodyClass.indexOf('context-category')) {
				pageCategory = 'category';
				listType = 'Categoria';
			}
			
			// busca
			else if (!!~bodyClass.indexOf('context-search')) {
				pageCategory = 'category';
				listType = 'Página de Pesquisa';
			}
			
			// carrinho
			else if (!!~bodyClass.indexOf('BasketIndexRoute')) {
				pageCategory = 'cart';
				listType = 'Carrinho';
			}
			
			// checkout
			else if (!!~bodyClass.indexOf('EasyCheckoutStep')) {
				pageCategory = 'checkout';
				listType = 'Checkout';
			}
			
			dataLayer = [{
				'pageCategory': pageCategory,
				'visitorType': 'high-value',
				'ecommerce': {
					'currencyCode': 'BRL'
				}
			}];
			
			if (pageCategory == "product") {
				dataLayer.push({
					'event': 'productDetail',
					'ecommerce': {
						'detail': {
							'actionField': {
								'list': listType
							},
							'products': [GTM.getProduct()]
						}
					}
				});
			} else if (pageCategory == "category") {
				
				var items = GTM.getProducts(listType);
				dataLayer.push({
					'ecommerce': {
						'impressions': items
					}
				});
				
			} else if (pageCategory == "cart") {
				dataLayer.push({
					'event': 'addToCart',
					'ecommerce': {
						'add': {
							'products': [GTM.getBasketItems()]
						}
					}
				});
				
				$(document).ajaxComplete(function( event, xhr, settings ) {
					if(settings.url == "/carrinho/alterar-quantidade") {
						if ( $(event.delegateTarget.defaultView.$input.context).hasClass('js-qty-more') ) {
							var items = GTM.getBasketItems();
							dataLayer.push({
								'event': 'addToCart',
								'ecommerce': {
									'add': {
										'products': items
									}
								}
							});
						}
					}
					if(settings.url == "/carrinho/remover-produto") {
						
						var item = settings.data;				
						var id = parseInt(item.replace('BasketItemID=', ''));	
						var product = _.where(listBasket, { BasketItemID: id });
						console.info(' -- ');
						console.info(id);
						console.info(product);
						console.info(' -- ');

						setTimeout(function(){
					
							dataLayer.push({
								'event': 'removeFromCart',
								'ecommerce': {
									'remove': {
										'products': [{
											'id': product[0].SkuID,
											'name': app.tools.htmlDecode(product[0].Name),
											'sku': app.tools.htmlDecode(product[0].SKU),
											'price': product[0].RetailPrice,
											'category': app.tools.htmlDecode(product[0].CategoryName),
											'brand': product[0].BrandName,
											'variant': '',
											'quantity': product[0].Quantity
										}]
									}
								}
							});
							listBasket = browsingContext.Common.Basket.Items;
						}, 1);
						
					}
				});
							
				
				
				/*$('.wd-checkout-basket-grid .item .js-remove').on('click', function() {
					var item = $(this).closest('tr'),
						id = parseInt($(item).attr('id').replace('basket-item-', ''));
					
					var product = _.first(_.where(browsingContext.Common.Basket.Items, { BasketItemID: id }));
					
					dataLayer.push({
						'event': 'removeFromCart',
						'ecommerce': {
							'remove': {
								'products': [{
									'id': product.ProductID,
									'name': app.tools.htmlDecode(product.Name),
									'sku': app.tools.htmlDecode(product.SKU),
									'price': product.RetailPrice,
									'category': app.tools.htmlDecode(product.CategoryName),
									'brand': product.BrandName,
									'variant': '',
									'quantity': product.Quantity
								}]
							}
						}
					});
				});	*/			
				
			} else if (pageCategory == "checkout") {
				var basket = EasyCheckout.ModelData.Basket;
					
				window.onload = function(){
				
					GTM.pageView();
					$(window).on('hashchange',GTM.pageView);
				};
				
				
				
				
				ko.postbox.subscribe('checkout/setDelivery', function(args){
					if(args && args.hasOwnProperty('deliveryOption')){
						/*dataLayer.push({
							'event': 'checkout',
							'ecommerce': {
								'checkout': {
									'actionField': {'step': pageStep, 'option': args.deliveryOption.Name},
									'products': GTM.getBasketItems()
								}
							}
						});*/
						
						$(document).ajaxComplete(function( event, xhr, settings ) {
					
							if(settings.url.indexOf("/widget/easy_checkout?Template=wd.easy.checkout.data.template") > -1 ) {

								/*
								console.info('----frete-00---');
								console.info(settings);
								console.info(xhr);
								console.info(settings);
								console.info('---F-frete-00---');
								*/

								dataLayer.push({
									'event': 'checkoutOption',
									'ecommerce': {
										'checkout_option': {
											'actionField': {'step': pageStep, 'option': EasyCheckout.ModelData.Basket.SelectedDeliveryOption.Name}
										}
									}
								});

							} else {
								/*console.info('----frete-01---');
								console.info(settings);
								console.info(xhr);
								console.info(settings);
								console.info('---F-frete-01---');
								*/
							}
						});
						
						dataLayer.push({
							'event': 'checkoutOption',
							'ecommerce': {
								'checkout_option': {
									'actionField': {'step': pageStep, 'option': args.deliveryOption.Name}
								}
							}
						});
					}
				});
				
				ko.postbox.subscribe('checkout/payment/setType', function(args){
					if(args && args.hasOwnProperty('paymentMethod')){
						/*dataLayer.push({
							'event': 'checkout',
							'ecommerce': {
								'checkout': {
									'actionField': {'step': pageStep, 'option': args.paymentMethod.Name},
									'products': GTM.getBasketItems()
								}
							}
						});*/
						dataLayer.push({
							'event': 'checkoutOption',
							'ecommerce': {
								'checkout_option': {
									'actionField': {'step': pageStep, 'option': args.paymentMethod.Name}
								}
							}
						});
					}
				});
				
				ko.postbox.subscribe('checkout/data/update',function(args){
					if(args && args.hasOwnProperty('Basket')){
						basket.DeliveryAmount = args.Basket.DeliveryAmount;
						basket.Total = args.Basket.Total;
					}
				});
				
				ko.postbox.subscribe('checkout/payment/submit',function(args){
					if(args && args.hasOwnProperty('Response')){
						var response = args.Response;
						if(response.IsValid){
							var cupom;
							if(basket.Coupons.length){
								cupom = basket.Coupons[0].Code;
							}
							
							$.ajax({
								url: '/checkout/confirmacao.json'
							}).done(function(resp) {
								
								var discountTotal = 0;
								/*if (resp.Order.PaymentTaxAmountType == 'Decrease') {
									discountTotal = parseFloat(resp.Order.PaymentTaxAmount) + parseFloat(resp.Order.DiscountAmount);
								} else {
									discountTotal = parseFloat(resp.Order.DiscountAmount);
								}*/
								
								dataLayer.push({
									'event': 'purchase',
									'ecommerce': {
										'purchase': {
											'actionField': {
												'id': response.Custom['PlaceOrder.OrderNumber'],
												'revenue': (basket.Total || parseFloat(0)).toFixed(2),
												'tax':0,
												'shipping': (basket.DeliveryAmount || parseFloat(0)).toFixed(2),
												'coupon': cupom,
												'transactionDiscount': (discountTotal || parseFloat(0)).toFixed(2)
											},
											'products': GTM.getBasketItems()
										}
									}
								});								
								
								dataLayer.push({
									'transactionId': response.Custom['PlaceOrder.OrderNumber'],
									'transactionAffiliation': browsingContext.Common.Config.General.Store.Name,
									'transactionTotal': (basket.Total || parseFloat(0)).toFixed(2),
									'transactionTax': 0,
									'transactionShipping': (basket.DeliveryAmount || parseFloat(0)).toFixed(2),
									'transactionProducts': GTM.getBasketItems(),
									'transactionDiscount': (discountTotal || parseFloat(0)).toFixed(2)
								});
								
								/*dataLayer.push({
									'event': 'purchase',
									'ecommerce': {
										'purchase': {
											'actionField': {
												'id': response.Custom['PlaceOrder.OrderNumber'],
												'revenue': (basket.Total || parseFloat(0)).toFixed(2),
												'tax':0,
												'shipping': (basket.DeliveryAmount || parseFloat(0)).toFixed(2),
												'coupon': cupom,
												'transactionDiscount': (discountTotal || parseFloat(0)).toFixed(2)
											},
											'products': GTM.getBasketItems()
										}
									},
									'transactionId': response.Custom['PlaceOrder.OrderNumber'],
									'transactionAffiliation': browsingContext.Common.Config.General.Store.Name,
									'transactionTotal': (basket.Total || parseFloat(0)).toFixed(2),
									'transactionTax': 0,
									'transactionShipping': (basket.DeliveryAmount || parseFloat(0)).toFixed(2),
									'transactionProducts': GTM.getBasketItems(),
									'transactionDiscount': (discountTotal || parseFloat(0)).toFixed(2)
								});		*/
								
							

							});
							
						}
					}
				});
			} 
			
			window.onpageready(function(){
				if (codes.length) {
					codes.forEach(function(code) {
						GTM.insertScript(code);
					});
				}
			});
		}	
	});

	//options defaults
	$.extend($.wd.GoogleTagManager.prototype.options, {

	});
})(jQuery, window, document);
}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/metadata.knockout/Scripts/wd.metadata.knockout.js*/
try{ko.validation.init({
	registerExtenders: true,
	messagesOnModified: true,
	insertMessages: true,
	parseInputAttributes: true,
	allowHtmlMessages: true,
	messageTemplate: 'customMessageTemplate'
}, true);

ko.validation.makeBindingHandlerValidatable('textInput');
ko.validation.makeBindingHandlerValidatable("value");

ko.validation.rules.cep = {
	validator: function(val) {
		return /^[0-9]{5}-[0-9]{3}$/.test(val);
	},
	message: 'CEP inválido.'
};

// Menssagem padrão para validações de campos obrigatórios
var messageRequired = function(title) {
	return "Campo " + title + " é obrigatório.";
};

ko.validation.rules.cpf = {
	validator: function(cpf) {
		cpf = cpf.replace(/[^0-9]/gi, '');
		while (cpf.length < 11) cpf = '0' + cpf;
		var expReg = /^0+$|^1+$|^2+$|^3+$|^4+$|^5+$|^6+$|^7+$|^8+$|^9+$/;
		var a = [];
		var b = 0;
		var c = 11;
		for (i = 0; i < 11; i++) {
			a[i] = cpf.charAt(i);
			if (i < 9) b += (a[i] * --c);
		}
		if ((x = b % 11) < 2) {
			a[9] = 0;
		} else {
			a[9] = 11 - x;
		}
		b = 0;
		c = 11;
		for (y = 0; y < 10; y++) b += (a[y] * c--);
		if ((x = b % 11) < 2) {
			a[10] = 0;
		} else {
			a[10] = 11 - x;
		}
		return ((cpf.charAt(9) == a[9]) && (cpf.charAt(10) == a[10]) && !cpf.match(expReg));
	},
	message: 'CPF inválido.'
};

ko.validation.rules.cnpj = {
	validator: function (cnpj) {
		var b = [6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2];
		cnpj = cnpj.replace(/[^\d]/g, '');
		console.log('t1');
		var r = /^(0{14}|1{14}|2{14}|3{14}|4{14}|5{14}|6{14}|7{14}|8{14}|9{14})$/;
		if (!cnpj || cnpj.length !== 14 || r.test(cnpj)) {
			return false;
		}
		cnpj = cnpj.split('');

		for (var i = 0, n = 0; i < 12; i++) {
			n += cnpj[i] * b[i + 1];
		}
		n = 11 - n % 11;
		n = n >= 10 ? 0 : n;
		if (parseInt(cnpj[12]) !== n) {
			return false;
		}

		for (i = 0, n = 0; i <= 12; i++) {
			n += cnpj[i] * b[i];
		}
		n = 11 - n % 11;
		n = n >= 10 ? 0 : n;
		if (parseInt(cnpj[13]) !== n) {
			return false;
		}
		return true;
	},
	message: 'CNPJ inválido.'
};

ko.validation.rules['phone-complete'] = {
	validator: function(num, params) {
		var mask = params.field.mask.match(/\d/g);
		if (!num)
			return false;

		if (num.length === 0)
			params.field.disableSuccess(true);
		else
			params.field.disableSuccess(false);
		num = num.match(/\d/g);
		return num && mask && num.length === mask.length || !num;
	},
	message: 'Verifique se o número está completo.'
};

ko.validation.rules['phone-complete-2'] = {
	validator: function(num, params) {
		var mask = params.field.mask.match(/\d/g);
		if (num.length === 0) {
			params.field.disableSuccess(true);
			return true;
		}

		params.field.disableSuccess(false);
		num = num.match(/\d/g);
		return num && mask && num.length === mask.length || !num;

	},
	message: 'Verifique se o número está completo.'
};

ko.validation.registerExtenders();

/* ---- Begin integration of Underscore template engine with Knockout. Could go in a separate file of course. ---- */
ko.underscoreTemplateEngine = function() {};
ko.underscoreTemplateEngine.prototype = ko.utils.extend(new ko.templateEngine(), {
	renderTemplateSource: function(templateSource, bindingContext, options) {
		// Precompile and cache the templates for efficiency
		var precompiled = templateSource.data('precompiled');
		if (!precompiled) {
			precompiled = _.template("<% with($data) { %> " + templateSource.text() + " <% } %>");
			templateSource.data('precompiled', precompiled);
		}
		// Run the template and parse its output into an array of DOM elements
		var renderedMarkup = precompiled(bindingContext).replace(/\s+/g, " ");
		return ko.utils.parseHtmlFragment(renderedMarkup);
	},
	createJavaScriptEvaluatorBlock: function(script) {
		return "<%= " + script + " %>";
	}
});

ko.setTemplateEngine(new ko.underscoreTemplateEngine());
/* ---- End integration of Underscore template engine with Knockout ---- */

var MetadataKo = function() {
	var self = this;
	self.data = {};
	self.validations = [];
	self.prefix = ko.observable('');

	self.init = function(fields, data, prefix, rules, onlyif) {
		prefix = prefix || '';
		self.prefix = prefix;
		self.data = data;
		var i = 0;
		self.fieldsIndex = {};
		self.fields = _.chain(fields).map(function(metadata) {
			// if (!metadata.Name || data[metadata.Name] || !metadata.IsStoreVisible) {
			if (!metadata.Name || !metadata.IsStoreVisible) {
				return false;
			}
			var field = _({
				BindType: metadata.BindType,
				name: metadata.Name,
				alias: metadata.Name.toLowerCase().replace(/\W/gi, '-'),
				label: metadata.DisplayName || '',
				mask: metadata.InputMask || '',
				entity: false,
				maxLength: metadata.MaxLength || false,
				required: metadata.IsRequired || false,
				type: metadata.InputType || '',
				hint: metadata.TemplateHint || '',
				localized: false,
				attr: {},
				options: ko.toJS(metadata.Options) || [],
				disabled: false,
				templateName: 'template-field-' + metadata.InputType.toLowerCase()
			}).extend(rules ? rules(metadata) : {});

			field.css = function(css) {
				var lista = css.slice(0) || [];
				if (field.entity)
					lista.push(field.entity);
				if (field.alias)
					lista.push(field.alias);
				return lista.join(' ');
			};

			if (!ko.isObservable(data[metadata.Name])) {
				data[metadata.Name] = ko.observable('');
			} else {
				field.localized = true;
			}
			var observable = data[metadata.Name];
			field.value = observable;

			var validation = {
				validation: {
					validator: function(v) {
						return true;
					}
				}
			};

			if (metadata.IsRequired) {
				validation = {
					required: {
						onlyIf: onlyif && onlyif(metadata),
						message: messageRequired(metadata.DisplayName)
					}
				};
			} else {
				observable.disableSuccess = true;
			}

			if (metadata.InputType === 'Phone') {
				validation['phone-complete'] = {
					field: observable
				};
				observable.mask = '';
				observable.disableSuccess = ko.observable(false);
			}

			if (field.maxLength > 0 && field.type !== 'Number') {
				validation.maxLength = {
					params: field.maxLength,
					message: "Preencha este campo com no máximo {0} caracteres"
				};
			}
			if (field.type == "Email") {
				validation.email = {
					message: 'Email inválido.'
				};
			}

			if (self.validations && self.validations[metadata.Name]) {
				_(validation).extend(self.validations[metadata.Name]);
			}
			observable.extend(validation);

			if ($("script#" + field.templateName).length === 0) {
				field.templateName = 'template-field-text';
			}

			if (metadata.BindType === "System") {
				field.attr = {
					EntityMetadataID: false,
					Name: false,
					Value: {
						name: [prefix, metadata.Name].join(''),
						id: [prefix.replace(/\[.*\]|\W/gi, ''), metadata.Name].join('_'),
						value: metadata.Value,
						maxlength: field.maxLength,
						placeholder: field.hint
					}
				};
			} else if (metadata.BindType === "Extended") {
				field.attr = {
					EntityMetadataID: {
						name: [prefix, 'ExtendedProperties[].EntityMetadataID'].join(''),
						id: [prefix.replace(/\[.*\]|\W/gi, ''), "ExtendedProperties", "EntityMetadataID", metadata.Name].join('_'),
						value: metadata.EntityMetadataID
					},
					Name: {
						name: [prefix, 'ExtendedProperties[].Name'].join(''),
						id: [prefix.replace(/\[.*\]|\W/gi, ''), "ExtendedProperties", "Name", metadata.Name].join('_'),
						value: metadata.Name
					},
					Value: {
						name: [prefix, 'ExtendedProperties[].Value'].join(''),
						id: [prefix.replace(/\[.*\]|\W/gi, ''), "ExtendedProperties", "Value", metadata.Name].join('_'),
						value: metadata.Value,
						maxlength: field.maxLength
					}
				};
			}
			self.fieldsIndex[metadata.Name] = i;
			i++;
			return field;
		}).compact().value();
	};

};

MetadataKo.prototype.sortify = function(form, prefix) {
	var self = this;
	form = form || 'form';
	prefix = prefix || '';
	var fields = $(form).find(["input[name^='", prefix, "ExtendedProperties[]']"].join(''));
	var i = 0;
	_(fields).map(function(field) {
		field = $(field);
		var attrName = field.attr('name');
		attrName = attrName.replace(/\[\]/, '[' + i + ']');
		field.attr('name', attrName);
		if (/Value$/.test(attrName)) {
			i++;
		}
		return field;
	});
};

MetadataKo.prototype.getAttr = function(name, input) {
	var self = this;
	input = input || 'Value';
	if (self.fields[self.fieldsIndex[name]] && self.fields[self.fieldsIndex[name]].attr) {
		return self.fields[self.fieldsIndex[name]].attr[input];
	}
};
MetadataKo.prototype.getLabel = function(name) {
	var self = this;
	return (self.fields[self.fieldsIndex[name]] || {}).label;
};

MetadataKo.prototype.find = function(match) {
	var self = this;
	var regex = match instanceof RegExp ? match : RegExp(match);
	return _(self.fields).find(function(field, id) {
		return regex.test(ko.toJSON(field));
	});
};

MetadataKo.prototype.localizedFields = function(names) {
	var self = this;
	names = typeof names === 'object' ? names : [names];
	var fields = [];
	_(names).each(function(name) {
		var field = _(self.fields).find(function(f) {
			var regex = name instanceof RegExp ? name : false;
			var localized = regex ? regex.test(f.name + f.label) : f.name === name;
			f.localized = f.localized || localized;
			return localized;
		});
		if (field) {
			fields.push(field);
		}
		return field;
	});
	return fields;
};

MetadataKo.prototype.remainderFields = function() {
	return _(this.fields).where({
		localized: false
	});
};

ko.components.register('metadata_ko', {
	template: {
		element: 'metadata_ko'
	},
	viewModel: function(params) {
		var self = this;
		self.css = [];
		_(self).extend(params);
		_(self.css).union(self.css);
	},
	synchronous: true
});

$(document.body)
	.on('focus', '.validation.error input', function() {
		var self = $(this);
		var validation = self.parents('.validation');
		if (validation) {
			$('.validation').removeClass('showerror');
			validation.addClass('showerror onfocus');
		}
	}).on('blur', '.validation.error input', function() {
		var self = $(this);
		var validation = self.parents('.validation');
		if (validation)
			validation.removeClass('showerror onfocus');
	});

}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/basket.sendemail/Scripts/wd.basket.sendemail.js*/
try{;
(function($, window, document, undefined) {
	$.widget('wd.BasketSendemail', $.wd.widget, {

		// Create
		_create: function() {
			var $widget = this,
				$w = $widget.getContext();

			$w().hide();

			$form = $w('.frm-send-basket');

			$w('select[name="TemplateID"]').width($w('[name="BasketUrl"]').outerWidth());

			$widget.validate($form, {
				submitHandler: function(form) {
					var data = $form.serialize(),
						fnOpenModal = function(message, type) {
							var messageHtml = '<div class="alert alert-' + type + '"><div class="message" style="text-align:center;">' + message + '</div></div>';
							app.modal({
								html: messageHtml,
								width: 430,
								height: 180,
								className: "modal-basket-send-email",
								onClosed: function() {

								},
								onComplete: function(err) {}
							});
						};

					$.ajax({
						url: browsingContext.Common.Urls.BaseUrl + 'Shopping/OrderCandidate/SendBasket',
						type: 'POST',
						dataType: 'json',
						cache: false,
						data: data,
						beforeSend: function () {
							$('button.btn-send', $form).html('aguarde...').attr('disabled', true);
						},
						success: function (response) {
							fnOpenModal('E-mail enviado com sucesso', 'success');
						},
						error: function (response) {
							fnOpenModal(response, 'error');
						},
						complete: function () {
							$('button.btn-send', $form).html('Enviar').removeAttr('disabled');
						}
					});
				},
				rules: {
					'Email': {
						required: true,
						email: true
					}
				}
			});

			$w('button.open-modal').click(function() {
				$widget.modal({
					element: $w('.modal-send-basket'),
					width: 500,
					className: 'modal-send-basket'
				});
			});

			// faz o append o botão na barra do impersonation
			if ($('.top-bar-admin').length) {
				$w('button.open-modal').clone(true).prependTo($('.top-bar-admin div:eq(1)'));
				$w('button.open-modal').remove();
			}

			if (browsingContext.Common.ready) {
				$('input[name="CustomerID"]', $form).val(browsingContext.Common.Shopper.CustomerID);

			} else {
				$.subscribe('/wd/browsing/context/ready', function() {
					$('input[name="CustomerID"]', $form).val(browsingContext.Common.Shopper.CustomerID);
				});
			}
		}
	});

	//options defaults
	$.extend($.wd.BasketSendemail.prototype.options, {});

})(jQuery, window, document);

}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/system.page.analytics/Scripts/wd.system.page.analytics.js*/
try{;(function($, window, document, undefined) {

	$.widget('wd.PageAnalytics', $.wd.widget, {

		_create: function() {
			var widget = this,
				$w = this.getContext();

			var serializedData = $("#SerializedPageAnalytics").val(),
				baseUrl = $w('input[name="widget-base-url"]').val();
			if(baseUrl != undefined){ 
				window.onpageready(function(){
					$.ajax({
						url: baseUrl + 'Analytics/AnalyticsPage/SaveAjaxPageData',
						data: {
							analyticsData: serializedData
						},
						async: true,
						type: 'POST',
						success: function(data) {}
					});
				});
			}
		}
	});

	// Defaults
	$.extend($.wd.PageAnalytics.prototype.options, {});


})(jQuery, window, document);
}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
/*File:~/Custom/Content/Widgets/collect.tracking.code.exacttarget/Scripts/wd.collect.tracking.code.exacttarget.js*/
try{
}catch(e){var se=window.SE || [];se.push(e);window.SE=se; };
