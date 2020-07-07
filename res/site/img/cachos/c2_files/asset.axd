/*File:~/custom/content/themes/Salon2020DESK/Styles/bootstrap.min.css*/
/*!
 * Bootstrap v3.3.7 (http://getbootstrap.com)
 * Copyright 2011-2016 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 */
/*! normalize.css v3.0.3 | MIT License | github.com/necolas/normalize.css */
html {
  font-family: sans-serif;
  -webkit-text-size-adjust: 100%;
      -ms-text-size-adjust: 100%;
}
body {
  margin: 0;
}
article,
aside,
details,
figcaption,
figure,
footer,
header,
hgroup,
main,
menu,
nav,
section,
summary {
  display: block;
}
audio,
canvas,
progress,
video {
  display: inline-block;
  vertical-align: baseline;
}
audio:not([controls]) {
  display: none;
  height: 0;
}
[hidden],
template {
  display: none;
}
a {
  background-color: transparent;
}
a:active,
a:hover {
  outline: 0;
}
abbr[title] {
  border-bottom: 1px dotted;
}
b,
strong {
  font-weight: bold;
}
dfn {
  font-style: italic;
}
h1 {
  margin: .67em 0;
  font-size: 2em;
}
mark {
  color: #000;
  background: #ff0;
}
small {
  font-size: 80%;
}
sub,
sup {
  position: relative;
  font-size: 75%;
  line-height: 0;
  vertical-align: baseline;
}
sup {
  top: -.5em;
}
sub {
  bottom: -.25em;
}
img {
  border: 0;
}
svg:not(:root) {
  overflow: hidden;
}
figure {
  margin: 1em 40px;
}
hr {
  height: 0;
  -webkit-box-sizing: content-box;
     -moz-box-sizing: content-box;
          box-sizing: content-box;
}
pre {
  overflow: auto;
}
code,
kbd,
pre,
samp {
  font-family: monospace, monospace;
  font-size: 1em;
}
button,
input,
optgroup,
select,
textarea {
  margin: 0;
  font: inherit;
  color: inherit;
}
button {
  overflow: visible;
}
button,
select {
  text-transform: none;
}
button,
html input[type="button"],
input[type="reset"],
input[type="submit"] {
  -webkit-appearance: button;
  cursor: pointer;
}
button[disabled],
html input[disabled] {
  cursor: default;
}
button::-moz-focus-inner,
input::-moz-focus-inner {
  padding: 0;
  border: 0;
}
input {
  line-height: normal;
}
input[type="checkbox"],
input[type="radio"] {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
  padding: 0;
}
input[type="number"]::-webkit-inner-spin-button,
input[type="number"]::-webkit-outer-spin-button {
  height: auto;
}
input[type="search"] {
  -webkit-box-sizing: content-box;
     -moz-box-sizing: content-box;
          box-sizing: content-box;
  -webkit-appearance: textfield;
}
input[type="search"]::-webkit-search-cancel-button,
input[type="search"]::-webkit-search-decoration {
  -webkit-appearance: none;
}
fieldset {
  padding: .35em .625em .75em;
  margin: 0 2px;
  border: 1px solid #c0c0c0;
}
legend {
  padding: 0;
  border: 0;
}
textarea {
  overflow: auto;
}
optgroup {
  font-weight: bold;
}
table {
  border-spacing: 0;
  border-collapse: collapse;
}
td,
th {
  padding: 0;
}
/*! Source: https://github.com/h5bp/html5-boilerplate/blob/master/src/css/main.css */
@media print {
  *,
  *:before,
  *:after {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    -webkit-box-shadow: none !important;
            box-shadow: none !important;
  }
  a,
  a:visited {
    text-decoration: underline;
  }
  a[href]:after {
    content: " (" attr(href) ")";
  }
  abbr[title]:after {
    content: " (" attr(title) ")";
  }
  a[href^="#"]:after,
  a[href^="javascript:"]:after {
    content: "";
  }
  pre,
  blockquote {
    border: 1px solid #999;

    page-break-inside: avoid;
  }
  thead {
    display: table-header-group;
  }
  tr,
  img {
    page-break-inside: avoid;
  }
  img {
    max-width: 100% !important;
  }
  p,
  h2,
  h3 {
    orphans: 3;
    widows: 3;
  }
  h2,
  h3 {
    page-break-after: avoid;
  }
  .navbar {
    display: none;
  }
  .btn > .caret,
  .dropup > .btn > .caret {
    border-top-color: #000 !important;
  }
  .label {
    border: 1px solid #000;
  }
  .table {
    border-collapse: collapse !important;
  }
  .table td,
  .table th {
    background-color: #fff !important;
  }
  .table-bordered th,
  .table-bordered td {
    border: 1px solid #ddd !important;
  }
}
@font-face {
  font-family: 'Glyphicons Halflings';

  src: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/fonts/glyphicons-halflings-regular.eot');
  src: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/fonts/glyphicons-halflings-regular.eot?#iefix') format('embedded-opentype'), url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/fonts/glyphicons-halflings-regular.woff2') format('woff2'), url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/fonts/glyphicons-halflings-regular.woff') format('woff'), url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/fonts/glyphicons-halflings-regular.ttf') format('truetype'), url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/fonts/glyphicons-halflings-regular.svg#glyphicons_halflingsregular') format('svg');
}
.glyphicon {
  position: relative;
  top: 1px;
  display: inline-block;
  font-family: 'Glyphicons Halflings';
  font-style: normal;
  font-weight: normal;
  line-height: 1;

  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
.glyphicon-asterisk:before {
  content: "\002a";
}
.glyphicon-plus:before {
  content: "\002b";
}
.glyphicon-euro:before,
.glyphicon-eur:before {
  content: "\20ac";
}
.glyphicon-minus:before {
  content: "\2212";
}
.glyphicon-cloud:before {
  content: "\2601";
}
.glyphicon-envelope:before {
  content: "\2709";
}
.glyphicon-pencil:before {
  content: "\270f";
}
.glyphicon-glass:before {
  content: "\e001";
}
.glyphicon-music:before {
  content: "\e002";
}
.glyphicon-search:before {
  content: "\e003";
}
.glyphicon-heart:before {
  content: "\e005";
}
.glyphicon-star:before {
  content: "\e006";
}
.glyphicon-star-empty:before {
  content: "\e007";
}
.glyphicon-user:before {
  content: "\e008";
}
.glyphicon-film:before {
  content: "\e009";
}
.glyphicon-th-large:before {
  content: "\e010";
}
.glyphicon-th:before {
  content: "\e011";
}
.glyphicon-th-list:before {
  content: "\e012";
}
.glyphicon-ok:before {
  content: "\e013";
}
.glyphicon-remove:before {
  content: "\e014";
}
.glyphicon-zoom-in:before {
  content: "\e015";
}
.glyphicon-zoom-out:before {
  content: "\e016";
}
.glyphicon-off:before {
  content: "\e017";
}
.glyphicon-signal:before {
  content: "\e018";
}
.glyphicon-cog:before {
  content: "\e019";
}
.glyphicon-trash:before {
  content: "\e020";
}
.glyphicon-home:before {
  content: "\e021";
}
.glyphicon-file:before {
  content: "\e022";
}
.glyphicon-time:before {
  content: "\e023";
}
.glyphicon-road:before {
  content: "\e024";
}
.glyphicon-download-alt:before {
  content: "\e025";
}
.glyphicon-download:before {
  content: "\e026";
}
.glyphicon-upload:before {
  content: "\e027";
}
.glyphicon-inbox:before {
  content: "\e028";
}
.glyphicon-play-circle:before {
  content: "\e029";
}
.glyphicon-repeat:before {
  content: "\e030";
}
.glyphicon-refresh:before {
  content: "\e031";
}
.glyphicon-list-alt:before {
  content: "\e032";
}
.glyphicon-lock:before {
  content: "\e033";
}
.glyphicon-flag:before {
  content: "\e034";
}
.glyphicon-headphones:before {
  content: "\e035";
}
.glyphicon-volume-off:before {
  content: "\e036";
}
.glyphicon-volume-down:before {
  content: "\e037";
}
.glyphicon-volume-up:before {
  content: "\e038";
}
.glyphicon-qrcode:before {
  content: "\e039";
}
.glyphicon-barcode:before {
  content: "\e040";
}
.glyphicon-tag:before {
  content: "\e041";
}
.glyphicon-tags:before {
  content: "\e042";
}
.glyphicon-book:before {
  content: "\e043";
}
.glyphicon-bookmark:before {
  content: "\e044";
}
.glyphicon-print:before {
  content: "\e045";
}
.glyphicon-camera:before {
  content: "\e046";
}
.glyphicon-font:before {
  content: "\e047";
}
.glyphicon-bold:before {
  content: "\e048";
}
.glyphicon-italic:before {
  content: "\e049";
}
.glyphicon-text-height:before {
  content: "\e050";
}
.glyphicon-text-width:before {
  content: "\e051";
}
.glyphicon-align-left:before {
  content: "\e052";
}
.glyphicon-align-center:before {
  content: "\e053";
}
.glyphicon-align-right:before {
  content: "\e054";
}
.glyphicon-align-justify:before {
  content: "\e055";
}
.glyphicon-list:before {
  content: "\e056";
}
.glyphicon-indent-left:before {
  content: "\e057";
}
.glyphicon-indent-right:before {
  content: "\e058";
}
.glyphicon-facetime-video:before {
  content: "\e059";
}
.glyphicon-picture:before {
  content: "\e060";
}
.glyphicon-map-marker:before {
  content: "\e062";
}
.glyphicon-adjust:before {
  content: "\e063";
}
.glyphicon-tint:before {
  content: "\e064";
}
.glyphicon-edit:before {
  content: "\e065";
}
.glyphicon-share:before {
  content: "\e066";
}
.glyphicon-check:before {
  content: "\e067";
}
.glyphicon-move:before {
  content: "\e068";
}
.glyphicon-step-backward:before {
  content: "\e069";
}
.glyphicon-fast-backward:before {
  content: "\e070";
}
.glyphicon-backward:before {
  content: "\e071";
}
.glyphicon-play:before {
  content: "\e072";
}
.glyphicon-pause:before {
  content: "\e073";
}
.glyphicon-stop:before {
  content: "\e074";
}
.glyphicon-forward:before {
  content: "\e075";
}
.glyphicon-fast-forward:before {
  content: "\e076";
}
.glyphicon-step-forward:before {
  content: "\e077";
}
.glyphicon-eject:before {
  content: "\e078";
}
.glyphicon-chevron-left:before {
  content: "\e079";
}
.glyphicon-chevron-right:before {
  content: "\e080";
}
.glyphicon-plus-sign:before {
  content: "\e081";
}
.glyphicon-minus-sign:before {
  content: "\e082";
}
.glyphicon-remove-sign:before {
  content: "\e083";
}
.glyphicon-ok-sign:before {
  content: "\e084";
}
.glyphicon-question-sign:before {
  content: "\e085";
}
.glyphicon-info-sign:before {
  content: "\e086";
}
.glyphicon-screenshot:before {
  content: "\e087";
}
.glyphicon-remove-circle:before {
  content: "\e088";
}
.glyphicon-ok-circle:before {
  content: "\e089";
}
.glyphicon-ban-circle:before {
  content: "\e090";
}
.glyphicon-arrow-left:before {
  content: "\e091";
}
.glyphicon-arrow-right:before {
  content: "\e092";
}
.glyphicon-arrow-up:before {
  content: "\e093";
}
.glyphicon-arrow-down:before {
  content: "\e094";
}
.glyphicon-share-alt:before {
  content: "\e095";
}
.glyphicon-resize-full:before {
  content: "\e096";
}
.glyphicon-resize-small:before {
  content: "\e097";
}
.glyphicon-exclamation-sign:before {
  content: "\e101";
}
.glyphicon-gift:before {
  content: "\e102";
}
.glyphicon-leaf:before {
  content: "\e103";
}
.glyphicon-fire:before {
  content: "\e104";
}
.glyphicon-eye-open:before {
  content: "\e105";
}
.glyphicon-eye-close:before {
  content: "\e106";
}
.glyphicon-warning-sign:before {
  content: "\e107";
}
.glyphicon-plane:before {
  content: "\e108";
}
.glyphicon-calendar:before {
  content: "\e109";
}
.glyphicon-random:before {
  content: "\e110";
}
.glyphicon-comment:before {
  content: "\e111";
}
.glyphicon-magnet:before {
  content: "\e112";
}
.glyphicon-chevron-up:before {
  content: "\e113";
}
.glyphicon-chevron-down:before {
  content: "\e114";
}
.glyphicon-retweet:before {
  content: "\e115";
}
.glyphicon-shopping-cart:before {
  content: "\e116";
}
.glyphicon-folder-close:before {
  content: "\e117";
}
.glyphicon-folder-open:before {
  content: "\e118";
}
.glyphicon-resize-vertical:before {
  content: "\e119";
}
.glyphicon-resize-horizontal:before {
  content: "\e120";
}
.glyphicon-hdd:before {
  content: "\e121";
}
.glyphicon-bullhorn:before {
  content: "\e122";
}
.glyphicon-bell:before {
  content: "\e123";
}
.glyphicon-certificate:before {
  content: "\e124";
}
.glyphicon-thumbs-up:before {
  content: "\e125";
}
.glyphicon-thumbs-down:before {
  content: "\e126";
}
.glyphicon-hand-right:before {
  content: "\e127";
}
.glyphicon-hand-left:before {
  content: "\e128";
}
.glyphicon-hand-up:before {
  content: "\e129";
}
.glyphicon-hand-down:before {
  content: "\e130";
}
.glyphicon-circle-arrow-right:before {
  content: "\e131";
}
.glyphicon-circle-arrow-left:before {
  content: "\e132";
}
.glyphicon-circle-arrow-up:before {
  content: "\e133";
}
.glyphicon-circle-arrow-down:before {
  content: "\e134";
}
.glyphicon-globe:before {
  content: "\e135";
}
.glyphicon-wrench:before {
  content: "\e136";
}
.glyphicon-tasks:before {
  content: "\e137";
}
.glyphicon-filter:before {
  content: "\e138";
}
.glyphicon-briefcase:before {
  content: "\e139";
}
.glyphicon-fullscreen:before {
  content: "\e140";
}
.glyphicon-dashboard:before {
  content: "\e141";
}
.glyphicon-paperclip:before {
  content: "\e142";
}
.glyphicon-heart-empty:before {
  content: "\e143";
}
.glyphicon-link:before {
  content: "\e144";
}
.glyphicon-phone:before {
  content: "\e145";
}
.glyphicon-pushpin:before {
  content: "\e146";
}
.glyphicon-usd:before {
  content: "\e148";
}
.glyphicon-gbp:before {
  content: "\e149";
}
.glyphicon-sort:before {
  content: "\e150";
}
.glyphicon-sort-by-alphabet:before {
  content: "\e151";
}
.glyphicon-sort-by-alphabet-alt:before {
  content: "\e152";
}
.glyphicon-sort-by-order:before {
  content: "\e153";
}
.glyphicon-sort-by-order-alt:before {
  content: "\e154";
}
.glyphicon-sort-by-attributes:before {
  content: "\e155";
}
.glyphicon-sort-by-attributes-alt:before {
  content: "\e156";
}
.glyphicon-unchecked:before {
  content: "\e157";
}
.glyphicon-expand:before {
  content: "\e158";
}
.glyphicon-collapse-down:before {
  content: "\e159";
}
.glyphicon-collapse-up:before {
  content: "\e160";
}
.glyphicon-log-in:before {
  content: "\e161";
}
.glyphicon-flash:before {
  content: "\e162";
}
.glyphicon-log-out:before {
  content: "\e163";
}
.glyphicon-new-window:before {
  content: "\e164";
}
.glyphicon-record:before {
  content: "\e165";
}
.glyphicon-save:before {
  content: "\e166";
}
.glyphicon-open:before {
  content: "\e167";
}
.glyphicon-saved:before {
  content: "\e168";
}
.glyphicon-import:before {
  content: "\e169";
}
.glyphicon-export:before {
  content: "\e170";
}
.glyphicon-send:before {
  content: "\e171";
}
.glyphicon-floppy-disk:before {
  content: "\e172";
}
.glyphicon-floppy-saved:before {
  content: "\e173";
}
.glyphicon-floppy-remove:before {
  content: "\e174";
}
.glyphicon-floppy-save:before {
  content: "\e175";
}
.glyphicon-floppy-open:before {
  content: "\e176";
}
.glyphicon-credit-card:before {
  content: "\e177";
}
.glyphicon-transfer:before {
  content: "\e178";
}
.glyphicon-cutlery:before {
  content: "\e179";
}
.glyphicon-header:before {
  content: "\e180";
}
.glyphicon-compressed:before {
  content: "\e181";
}
.glyphicon-earphone:before {
  content: "\e182";
}
.glyphicon-phone-alt:before {
  content: "\e183";
}
.glyphicon-tower:before {
  content: "\e184";
}
.glyphicon-stats:before {
  content: "\e185";
}
.glyphicon-sd-video:before {
  content: "\e186";
}
.glyphicon-hd-video:before {
  content: "\e187";
}
.glyphicon-subtitles:before {
  content: "\e188";
}
.glyphicon-sound-stereo:before {
  content: "\e189";
}
.glyphicon-sound-dolby:before {
  content: "\e190";
}
.glyphicon-sound-5-1:before {
  content: "\e191";
}
.glyphicon-sound-6-1:before {
  content: "\e192";
}
.glyphicon-sound-7-1:before {
  content: "\e193";
}
.glyphicon-copyright-mark:before {
  content: "\e194";
}
.glyphicon-registration-mark:before {
  content: "\e195";
}
.glyphicon-cloud-download:before {
  content: "\e197";
}
.glyphicon-cloud-upload:before {
  content: "\e198";
}
.glyphicon-tree-conifer:before {
  content: "\e199";
}
.glyphicon-tree-deciduous:before {
  content: "\e200";
}
.glyphicon-cd:before {
  content: "\e201";
}
.glyphicon-save-file:before {
  content: "\e202";
}
.glyphicon-open-file:before {
  content: "\e203";
}
.glyphicon-level-up:before {
  content: "\e204";
}
.glyphicon-copy:before {
  content: "\e205";
}
.glyphicon-paste:before {
  content: "\e206";
}
.glyphicon-alert:before {
  content: "\e209";
}
.glyphicon-equalizer:before {
  content: "\e210";
}
.glyphicon-king:before {
  content: "\e211";
}
.glyphicon-queen:before {
  content: "\e212";
}
.glyphicon-pawn:before {
  content: "\e213";
}
.glyphicon-bishop:before {
  content: "\e214";
}
.glyphicon-knight:before {
  content: "\e215";
}
.glyphicon-baby-formula:before {
  content: "\e216";
}
.glyphicon-tent:before {
  content: "\26fa";
}
.glyphicon-blackboard:before {
  content: "\e218";
}
.glyphicon-bed:before {
  content: "\e219";
}
.glyphicon-apple:before {
  content: "\f8ff";
}
.glyphicon-erase:before {
  content: "\e221";
}
.glyphicon-hourglass:before {
  content: "\231b";
}
.glyphicon-lamp:before {
  content: "\e223";
}
.glyphicon-duplicate:before {
  content: "\e224";
}
.glyphicon-piggy-bank:before {
  content: "\e225";
}
.glyphicon-scissors:before {
  content: "\e226";
}
.glyphicon-bitcoin:before {
  content: "\e227";
}
.glyphicon-btc:before {
  content: "\e227";
}
.glyphicon-xbt:before {
  content: "\e227";
}
.glyphicon-yen:before {
  content: "\00a5";
}
.glyphicon-jpy:before {
  content: "\00a5";
}
.glyphicon-ruble:before {
  content: "\20bd";
}
.glyphicon-rub:before {
  content: "\20bd";
}
.glyphicon-scale:before {
  content: "\e230";
}
.glyphicon-ice-lolly:before {
  content: "\e231";
}
.glyphicon-ice-lolly-tasted:before {
  content: "\e232";
}
.glyphicon-education:before {
  content: "\e233";
}
.glyphicon-option-horizontal:before {
  content: "\e234";
}
.glyphicon-option-vertical:before {
  content: "\e235";
}
.glyphicon-menu-hamburger:before {
  content: "\e236";
}
.glyphicon-modal-window:before {
  content: "\e237";
}
.glyphicon-oil:before {
  content: "\e238";
}
.glyphicon-grain:before {
  content: "\e239";
}
.glyphicon-sunglasses:before {
  content: "\e240";
}
.glyphicon-text-size:before {
  content: "\e241";
}
.glyphicon-text-color:before {
  content: "\e242";
}
.glyphicon-text-background:before {
  content: "\e243";
}
.glyphicon-object-align-top:before {
  content: "\e244";
}
.glyphicon-object-align-bottom:before {
  content: "\e245";
}
.glyphicon-object-align-horizontal:before {
  content: "\e246";
}
.glyphicon-object-align-left:before {
  content: "\e247";
}
.glyphicon-object-align-vertical:before {
  content: "\e248";
}
.glyphicon-object-align-right:before {
  content: "\e249";
}
.glyphicon-triangle-right:before {
  content: "\e250";
}
.glyphicon-triangle-left:before {
  content: "\e251";
}
.glyphicon-triangle-bottom:before {
  content: "\e252";
}
.glyphicon-triangle-top:before {
  content: "\e253";
}
.glyphicon-console:before {
  content: "\e254";
}
.glyphicon-superscript:before {
  content: "\e255";
}
.glyphicon-subscript:before {
  content: "\e256";
}
.glyphicon-menu-left:before {
  content: "\e257";
}
.glyphicon-menu-right:before {
  content: "\e258";
}
.glyphicon-menu-down:before {
  content: "\e259";
}
.glyphicon-menu-up:before {
  content: "\e260";
}
* {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}
*:before,
*:after {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}
html {
  font-size: 10px;

  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
body {
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 14px;
  line-height: 1.42857143;
  color: #333;
  background-color: #fff;
}
input,
button,
select,
textarea {
  font-family: inherit;
  font-size: inherit;
  line-height: inherit;
}
a {
  color: #337ab7;
  text-decoration: none;
}
a:hover,
a:focus {
  color: #23527c;
  text-decoration: underline;
}
a:focus {
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
figure {
  margin: 0;
}
img {
  vertical-align: middle;
}
.img-responsive,
.thumbnail > img,
.thumbnail a > img,
.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  display: block;
  max-width: 100%;
  height: auto;
}
.img-rounded {
  border-radius: 6px;
}
.img-thumbnail {
  display: inline-block;
  max-width: 100%;
  height: auto;
  padding: 4px;
  line-height: 1.42857143;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 4px;
  -webkit-transition: all .2s ease-in-out;
       -o-transition: all .2s ease-in-out;
          transition: all .2s ease-in-out;
}
.img-circle {
  border-radius: 50%;
}
hr {
  margin-top: 20px;
  margin-bottom: 20px;
  border: 0;
  border-top: 1px solid #eee;
}
.sr-only {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
}
.sr-only-focusable:active,
.sr-only-focusable:focus {
  position: static;
  width: auto;
  height: auto;
  margin: 0;
  overflow: visible;
  clip: auto;
}
[role="button"] {
  cursor: pointer;
}
h1,
h2,
h3,
h4,
h5,
h6,
.h1,
.h2,
.h3,
.h4,
.h5,
.h6 {
  font-family: inherit;
  font-weight: 500;
  line-height: 1.1;
  color: inherit;
}
h1 small,
h2 small,
h3 small,
h4 small,
h5 small,
h6 small,
.h1 small,
.h2 small,
.h3 small,
.h4 small,
.h5 small,
.h6 small,
h1 .small,
h2 .small,
h3 .small,
h4 .small,
h5 .small,
h6 .small,
.h1 .small,
.h2 .small,
.h3 .small,
.h4 .small,
.h5 .small,
.h6 .small {
  font-weight: normal;
  line-height: 1;
  color: #777;
}
h1,
.h1,
h2,
.h2,
h3,
.h3 {
  margin-top: 20px;
  margin-bottom: 10px;
}
h1 small,
.h1 small,
h2 small,
.h2 small,
h3 small,
.h3 small,
h1 .small,
.h1 .small,
h2 .small,
.h2 .small,
h3 .small,
.h3 .small {
  font-size: 65%;
}
h4,
.h4,
h5,
.h5,
h6,
.h6 {
  margin-top: 10px;
  margin-bottom: 10px;
}
h4 small,
.h4 small,
h5 small,
.h5 small,
h6 small,
.h6 small,
h4 .small,
.h4 .small,
h5 .small,
.h5 .small,
h6 .small,
.h6 .small {
  font-size: 75%;
}
h1,
.h1 {
  font-size: 36px;
}
h2,
.h2 {
  font-size: 30px;
}
h3,
.h3 {
  font-size: 24px;
}
h4,
.h4 {
  font-size: 18px;
}
h5,
.h5 {
  font-size: 14px;
}
h6,
.h6 {
  font-size: 12px;
}
p {
  margin: 0 0 10px;
}
.lead {
  margin-bottom: 20px;
  font-size: 16px;
  font-weight: 300;
  line-height: 1.4;
}
@media (min-width: 768px) {
  .lead {
    font-size: 21px;
  }
}
small,
.small {
  font-size: 85%;
}
mark,
.mark {
  padding: .2em;
  background-color: #fcf8e3;
}
.text-left {
  text-align: left;
}
.text-right {
  text-align: right;
}
.text-center {
  text-align: center;
}
.text-justify {
  text-align: justify;
}
.text-nowrap {
  white-space: nowrap;
}
.text-lowercase {
  text-transform: lowercase;
}
.text-uppercase {
  text-transform: uppercase;
}
.text-capitalize {
  text-transform: capitalize;
}
.text-muted {
  color: #777;
}
.text-primary {
  color: #337ab7;
}
a.text-primary:hover,
a.text-primary:focus {
  color: #286090;
}
.text-success {
  color: #3c763d;
}
a.text-success:hover,
a.text-success:focus {
  color: #2b542c;
}
.text-info {
  color: #31708f;
}
a.text-info:hover,
a.text-info:focus {
  color: #245269;
}
.text-warning {
  color: #8a6d3b;
}
a.text-warning:hover,
a.text-warning:focus {
  color: #66512c;
}
.text-danger {
  color: #a94442;
}
a.text-danger:hover,
a.text-danger:focus {
  color: #843534;
}
.bg-primary {
  color: #fff;
  background-color: #337ab7;
}
a.bg-primary:hover,
a.bg-primary:focus {
  background-color: #286090;
}
.bg-success {
  background-color: #dff0d8;
}
a.bg-success:hover,
a.bg-success:focus {
  background-color: #c1e2b3;
}
.bg-info {
  background-color: #d9edf7;
}
a.bg-info:hover,
a.bg-info:focus {
  background-color: #afd9ee;
}
.bg-warning {
  background-color: #fcf8e3;
}
a.bg-warning:hover,
a.bg-warning:focus {
  background-color: #f7ecb5;
}
.bg-danger {
  background-color: #f2dede;
}
a.bg-danger:hover,
a.bg-danger:focus {
  background-color: #e4b9b9;
}
.page-header {
  padding-bottom: 9px;
  margin: 40px 0 20px;
  border-bottom: 1px solid #eee;
}
ul,
ol {
  margin-top: 0;
  margin-bottom: 10px;
}
ul ul,
ol ul,
ul ol,
ol ol {
  margin-bottom: 0;
}
.list-unstyled {
  padding-left: 0;
  list-style: none;
}
.list-inline {
  padding-left: 0;
  margin-left: -5px;
  list-style: none;
}
.list-inline > li {
  display: inline-block;
  padding-right: 5px;
  padding-left: 5px;
}
dl {
  margin-top: 0;
  margin-bottom: 20px;
}
dt,
dd {
  line-height: 1.42857143;
}
dt {
  font-weight: bold;
}
dd {
  margin-left: 0;
}
@media (min-width: 768px) {
  .dl-horizontal dt {
    float: left;
    width: 160px;
    overflow: hidden;
    clear: left;
    text-align: right;
    text-overflow: ellipsis;
    white-space: nowrap;
  }
  .dl-horizontal dd {
    margin-left: 180px;
  }
}
abbr[title],
abbr[data-original-title] {
  cursor: help;
  border-bottom: 1px dotted #777;
}
.initialism {
  font-size: 90%;
  text-transform: uppercase;
}
blockquote {
  padding: 10px 20px;
  margin: 0 0 20px;
  font-size: 17.5px;
  border-left: 5px solid #eee;
}
blockquote p:last-child,
blockquote ul:last-child,
blockquote ol:last-child {
  margin-bottom: 0;
}
blockquote footer,
blockquote small,
blockquote .small {
  display: block;
  font-size: 80%;
  line-height: 1.42857143;
  color: #777;
}
blockquote footer:before,
blockquote small:before,
blockquote .small:before {
  content: '\2014 \00A0';
}
.blockquote-reverse,
blockquote.pull-right {
  padding-right: 15px;
  padding-left: 0;
  text-align: right;
  border-right: 5px solid #eee;
  border-left: 0;
}
.blockquote-reverse footer:before,
blockquote.pull-right footer:before,
.blockquote-reverse small:before,
blockquote.pull-right small:before,
.blockquote-reverse .small:before,
blockquote.pull-right .small:before {
  content: '';
}
.blockquote-reverse footer:after,
blockquote.pull-right footer:after,
.blockquote-reverse small:after,
blockquote.pull-right small:after,
.blockquote-reverse .small:after,
blockquote.pull-right .small:after {
  content: '\00A0 \2014';
}
address {
  margin-bottom: 20px;
  font-style: normal;
  line-height: 1.42857143;
}
code,
kbd,
pre,
samp {
  font-family: Menlo, Monaco, Consolas, "Courier New", monospace;
}
code {
  padding: 2px 4px;
  font-size: 90%;
  color: #c7254e;
  background-color: #f9f2f4;
  border-radius: 4px;
}
kbd {
  padding: 2px 4px;
  font-size: 90%;
  color: #fff;
  background-color: #333;
  border-radius: 3px;
  -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .25);
          box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .25);
}
kbd kbd {
  padding: 0;
  font-size: 100%;
  font-weight: bold;
  -webkit-box-shadow: none;
          box-shadow: none;
}
pre {
  display: block;
  padding: 9.5px;
  margin: 0 0 10px;
  font-size: 13px;
  line-height: 1.42857143;
  color: #333;
  word-break: break-all;
  word-wrap: break-word;
  background-color: #f5f5f5;
  border: 1px solid #ccc;
  border-radius: 4px;
}
pre code {
  padding: 0;
  font-size: inherit;
  color: inherit;
  white-space: pre-wrap;
  background-color: transparent;
  border-radius: 0;
}
.pre-scrollable {
  max-height: 340px;
  overflow-y: scroll;
}
.container {
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
}
@media (min-width: 768px) {
  .container {
    width: 750px;
  }
}
@media (min-width: 992px) {
  .container {
    width: 970px;
  }
}
@media (min-width: 1200px) {
  .container {
    width: 1230px;
  }
}
.container-fluid {
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
}
.row {
  margin-right: -15px;
  margin-left: -15px;
}
.col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
  position: relative;
  min-height: 1px;
  padding-right: 15px;
  padding-left: 15px;
}
.col-xs-1, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9, .col-xs-10, .col-xs-11, .col-xs-12 {
  float: left;
}
.col-xs-12 {
  width: 100%;
}
.col-xs-11 {
  width: 91.66666667%;
}
.col-xs-10 {
  width: 83.33333333%;
}
.col-xs-9 {
  width: 75%;
}
.col-xs-8 {
  width: 66.66666667%;
}
.col-xs-7 {
  width: 58.33333333%;
}
.col-xs-6 {
  width: 50%;
}
.col-xs-5 {
  width: 41.66666667%;
}
.col-xs-4 {
  width: 33.33333333%;
}
.col-xs-3 {
  width: 25%;
}
.col-xs-2 {
  width: 16.66666667%;
}
.col-xs-1 {
  width: 8.33333333%;
}
.col-xs-pull-12 {
  right: 100%;
}
.col-xs-pull-11 {
  right: 91.66666667%;
}
.col-xs-pull-10 {
  right: 83.33333333%;
}
.col-xs-pull-9 {
  right: 75%;
}
.col-xs-pull-8 {
  right: 66.66666667%;
}
.col-xs-pull-7 {
  right: 58.33333333%;
}
.col-xs-pull-6 {
  right: 50%;
}
.col-xs-pull-5 {
  right: 41.66666667%;
}
.col-xs-pull-4 {
  right: 33.33333333%;
}
.col-xs-pull-3 {
  right: 25%;
}
.col-xs-pull-2 {
  right: 16.66666667%;
}
.col-xs-pull-1 {
  right: 8.33333333%;
}
.col-xs-pull-0 {
  right: auto;
}
.col-xs-push-12 {
  left: 100%;
}
.col-xs-push-11 {
  left: 91.66666667%;
}
.col-xs-push-10 {
  left: 83.33333333%;
}
.col-xs-push-9 {
  left: 75%;
}
.col-xs-push-8 {
  left: 66.66666667%;
}
.col-xs-push-7 {
  left: 58.33333333%;
}
.col-xs-push-6 {
  left: 50%;
}
.col-xs-push-5 {
  left: 41.66666667%;
}
.col-xs-push-4 {
  left: 33.33333333%;
}
.col-xs-push-3 {
  left: 25%;
}
.col-xs-push-2 {
  left: 16.66666667%;
}
.col-xs-push-1 {
  left: 8.33333333%;
}
.col-xs-push-0 {
  left: auto;
}
.col-xs-offset-12 {
  margin-left: 100%;
}
.col-xs-offset-11 {
  margin-left: 91.66666667%;
}
.col-xs-offset-10 {
  margin-left: 83.33333333%;
}
.col-xs-offset-9 {
  margin-left: 75%;
}
.col-xs-offset-8 {
  margin-left: 66.66666667%;
}
.col-xs-offset-7 {
  margin-left: 58.33333333%;
}
.col-xs-offset-6 {
  margin-left: 50%;
}
.col-xs-offset-5 {
  margin-left: 41.66666667%;
}
.col-xs-offset-4 {
  margin-left: 33.33333333%;
}
.col-xs-offset-3 {
  margin-left: 25%;
}
.col-xs-offset-2 {
  margin-left: 16.66666667%;
}
.col-xs-offset-1 {
  margin-left: 8.33333333%;
}
.col-xs-offset-0 {
  margin-left: 0;
}
@media (min-width: 768px) {
  .col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12 {
    float: left;
  }
  .col-sm-12 {
    width: 100%;
  }
  .col-sm-11 {
    width: 91.66666667%;
  }
  .col-sm-10 {
    width: 83.33333333%;
  }
  .col-sm-9 {
    width: 75%;
  }
  .col-sm-8 {
    width: 66.66666667%;
  }
  .col-sm-7 {
    width: 58.33333333%;
  }
  .col-sm-6 {
    width: 50%;
  }
  .col-sm-5 {
    width: 41.66666667%;
  }
  .col-sm-4 {
    width: 33.33333333%;
  }
  .col-sm-3 {
    width: 25%;
  }
  .col-sm-2 {
    width: 16.66666667%;
  }
  .col-sm-1 {
    width: 8.33333333%;
  }
  .col-sm-pull-12 {
    right: 100%;
  }
  .col-sm-pull-11 {
    right: 91.66666667%;
  }
  .col-sm-pull-10 {
    right: 83.33333333%;
  }
  .col-sm-pull-9 {
    right: 75%;
  }
  .col-sm-pull-8 {
    right: 66.66666667%;
  }
  .col-sm-pull-7 {
    right: 58.33333333%;
  }
  .col-sm-pull-6 {
    right: 50%;
  }
  .col-sm-pull-5 {
    right: 41.66666667%;
  }
  .col-sm-pull-4 {
    right: 33.33333333%;
  }
  .col-sm-pull-3 {
    right: 25%;
  }
  .col-sm-pull-2 {
    right: 16.66666667%;
  }
  .col-sm-pull-1 {
    right: 8.33333333%;
  }
  .col-sm-pull-0 {
    right: auto;
  }
  .col-sm-push-12 {
    left: 100%;
  }
  .col-sm-push-11 {
    left: 91.66666667%;
  }
  .col-sm-push-10 {
    left: 83.33333333%;
  }
  .col-sm-push-9 {
    left: 75%;
  }
  .col-sm-push-8 {
    left: 66.66666667%;
  }
  .col-sm-push-7 {
    left: 58.33333333%;
  }
  .col-sm-push-6 {
    left: 50%;
  }
  .col-sm-push-5 {
    left: 41.66666667%;
  }
  .col-sm-push-4 {
    left: 33.33333333%;
  }
  .col-sm-push-3 {
    left: 25%;
  }
  .col-sm-push-2 {
    left: 16.66666667%;
  }
  .col-sm-push-1 {
    left: 8.33333333%;
  }
  .col-sm-push-0 {
    left: auto;
  }
  .col-sm-offset-12 {
    margin-left: 100%;
  }
  .col-sm-offset-11 {
    margin-left: 91.66666667%;
  }
  .col-sm-offset-10 {
    margin-left: 83.33333333%;
  }
  .col-sm-offset-9 {
    margin-left: 75%;
  }
  .col-sm-offset-8 {
    margin-left: 66.66666667%;
  }
  .col-sm-offset-7 {
    margin-left: 58.33333333%;
  }
  .col-sm-offset-6 {
    margin-left: 50%;
  }
  .col-sm-offset-5 {
    margin-left: 41.66666667%;
  }
  .col-sm-offset-4 {
    margin-left: 33.33333333%;
  }
  .col-sm-offset-3 {
    margin-left: 25%;
  }
  .col-sm-offset-2 {
    margin-left: 16.66666667%;
  }
  .col-sm-offset-1 {
    margin-left: 8.33333333%;
  }
  .col-sm-offset-0 {
    margin-left: 0;
  }
}
@media (min-width: 992px) {
  .col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12 {
    float: left;
  }
  .col-md-12 {
    width: 100%;
  }
  .col-md-11 {
    width: 91.66666667%;
  }
  .col-md-10 {
    width: 83.33333333%;
  }
  .col-md-9 {
    width: 75%;
  }
  .col-md-8 {
    width: 66.66666667%;
  }
  .col-md-7 {
    width: 58.33333333%;
  }
  .col-md-6 {
    width: 50%;
  }
  .col-md-5 {
    width: 41.66666667%;
  }
  .col-md-4 {
    width: 33.33333333%;
  }
  .col-md-3 {
    width: 25%;
  }
  .col-md-zelo {
	width: 20%;
  }
  .col-md-2 {
    width: 16.66666667%;
  }
  .col-md-1 {
    width: 8.33333333%;
  }
  .col-md-pull-12 {
    right: 100%;
  }
  .col-md-pull-11 {
    right: 91.66666667%;
  }
  .col-md-pull-10 {
    right: 83.33333333%;
  }
  .col-md-pull-9 {
    right: 75%;
  }
  .col-md-pull-8 {
    right: 66.66666667%;
  }
  .col-md-pull-7 {
    right: 58.33333333%;
  }
  .col-md-pull-6 {
    right: 50%;
  }
  .col-md-pull-5 {
    right: 41.66666667%;
  }
  .col-md-pull-4 {
    right: 33.33333333%;
  }
  .col-md-pull-3 {
    right: 25%;
  }
  .col-md-pull-2 {
    right: 16.66666667%;
  }
  .col-md-pull-1 {
    right: 8.33333333%;
  }
  .col-md-pull-0 {
    right: auto;
  }
  .col-md-push-12 {
    left: 100%;
  }
  .col-md-push-11 {
    left: 91.66666667%;
  }
  .col-md-push-10 {
    left: 83.33333333%;
  }
  .col-md-push-9 {
    left: 75%;
  }
  .col-md-push-8 {
    left: 66.66666667%;
  }
  .col-md-push-7 {
    left: 58.33333333%;
  }
  .col-md-push-6 {
    left: 50%;
  }
  .col-md-push-5 {
    left: 41.66666667%;
  }
  .col-md-push-4 {
    left: 33.33333333%;
  }
  .col-md-push-3 {
    left: 25%;
  }
  .col-md-push-2 {
    left: 16.66666667%;
  }
  .col-md-push-1 {
    left: 8.33333333%;
  }
  .col-md-push-0 {
    left: auto;
  }
  .col-md-offset-12 {
    margin-left: 100%;
  }
  .col-md-offset-11 {
    margin-left: 91.66666667%;
  }
  .col-md-offset-10 {
    margin-left: 83.33333333%;
  }
  .col-md-offset-9 {
    margin-left: 75%;
  }
  .col-md-offset-8 {
    margin-left: 66.66666667%;
  }
  .col-md-offset-7 {
    margin-left: 58.33333333%;
  }
  .col-md-offset-6 {
    margin-left: 50%;
  }
  .col-md-offset-5 {
    margin-left: 41.66666667%;
  }
  .col-md-offset-4 {
    margin-left: 33.33333333%;
  }
  .col-md-offset-3 {
    margin-left: 25%;
  }
  .col-md-offset-2 {
    margin-left: 16.66666667%;
  }
  .col-md-offset-1 {
    margin-left: 8.33333333%;
  }
  .col-md-offset-0 {
    margin-left: 0;
  }
}
@media (min-width: 1200px) {
  .col-lg-1, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-10, .col-lg-11, .col-lg-12 {
    float: left;
  }
  .col-lg-12 {
    width: 100%;
  }
  .col-lg-11 {
    width: 91.66666667%;
  }
  .col-lg-10 {
    width: 83.33333333%;
  }
  .col-lg-9 {
    width: 75%;
  }
  .col-lg-8 {
    width: 66.66666667%;
  }
  .col-lg-7 {
    width: 58.33333333%;
  }
  .col-lg-6 {
    width: 50%;
  }
  .col-lg-5 {
    width: 41.66666667%;
  }
  .col-lg-4 {
    width: 33.33333333%;
  }
  .col-lg-3 {
    width: 25%;
  }
  .col-lg-2 {
    width: 16.66666667%;
  }
  .col-lg-1 {
    width: 8.33333333%;
  }
  .col-lg-pull-12 {
    right: 100%;
  }
  .col-lg-pull-11 {
    right: 91.66666667%;
  }
  .col-lg-pull-10 {
    right: 83.33333333%;
  }
  .col-lg-pull-9 {
    right: 75%;
  }
  .col-lg-pull-8 {
    right: 66.66666667%;
  }
  .col-lg-pull-7 {
    right: 58.33333333%;
  }
  .col-lg-pull-6 {
    right: 50%;
  }
  .col-lg-pull-5 {
    right: 41.66666667%;
  }
  .col-lg-pull-4 {
    right: 33.33333333%;
  }
  .col-lg-pull-3 {
    right: 25%;
  }
  .col-lg-pull-2 {
    right: 16.66666667%;
  }
  .col-lg-pull-1 {
    right: 8.33333333%;
  }
  .col-lg-pull-0 {
    right: auto;
  }
  .col-lg-push-12 {
    left: 100%;
  }
  .col-lg-push-11 {
    left: 91.66666667%;
  }
  .col-lg-push-10 {
    left: 83.33333333%;
  }
  .col-lg-push-9 {
    left: 75%;
  }
  .col-lg-push-8 {
    left: 66.66666667%;
  }
  .col-lg-push-7 {
    left: 58.33333333%;
  }
  .col-lg-push-6 {
    left: 50%;
  }
  .col-lg-push-5 {
    left: 41.66666667%;
  }
  .col-lg-push-4 {
    left: 33.33333333%;
  }
  .col-lg-push-3 {
    left: 25%;
  }
  .col-lg-push-2 {
    left: 16.66666667%;
  }
  .col-lg-push-1 {
    left: 8.33333333%;
  }
  .col-lg-push-0 {
    left: auto;
  }
  .col-lg-offset-12 {
    margin-left: 100%;
  }
  .col-lg-offset-11 {
    margin-left: 91.66666667%;
  }
  .col-lg-offset-10 {
    margin-left: 83.33333333%;
  }
  .col-lg-offset-9 {
    margin-left: 75%;
  }
  .col-lg-offset-8 {
    margin-left: 66.66666667%;
  }
  .col-lg-offset-7 {
    margin-left: 58.33333333%;
  }
  .col-lg-offset-6 {
    margin-left: 50%;
  }
  .col-lg-offset-5 {
    margin-left: 41.66666667%;
  }
  .col-lg-offset-4 {
    margin-left: 33.33333333%;
  }
  .col-lg-offset-3 {
    margin-left: 25%;
  }
  .col-lg-offset-2 {
    margin-left: 16.66666667%;
  }
  .col-lg-offset-1 {
    margin-left: 8.33333333%;
  }
  .col-lg-offset-0 {
    margin-left: 0;
  }
}
table {
  background-color: transparent;
}
caption {
  padding-top: 8px;
  padding-bottom: 8px;
  color: #777;
  text-align: left;
}
th {
  text-align: left;
}
.table {
  width: 100%;
  max-width: 100%;
  margin-bottom: 20px;
}
.table > thead > tr > th,
.table > tbody > tr > th,
.table > tfoot > tr > th,
.table > thead > tr > td,
.table > tbody > tr > td,
.table > tfoot > tr > td {
  padding: 8px;
  line-height: 1.42857143;
  vertical-align: top;
  border-top: 1px solid #ddd;
}
.table > thead > tr > th {
  vertical-align: bottom;
  border-bottom: 2px solid #ddd;
}
.table > caption + thead > tr:first-child > th,
.table > colgroup + thead > tr:first-child > th,
.table > thead:first-child > tr:first-child > th,
.table > caption + thead > tr:first-child > td,
.table > colgroup + thead > tr:first-child > td,
.table > thead:first-child > tr:first-child > td {
  border-top: 0;
}
.table > tbody + tbody {
  border-top: 2px solid #ddd;
}
.table .table {
  background-color: #fff;
}
.table-condensed > thead > tr > th,
.table-condensed > tbody > tr > th,
.table-condensed > tfoot > tr > th,
.table-condensed > thead > tr > td,
.table-condensed > tbody > tr > td,
.table-condensed > tfoot > tr > td {
  padding: 5px;
}
.table-bordered {
  border: 1px solid #ddd;
}
.table-bordered > thead > tr > th,
.table-bordered > tbody > tr > th,
.table-bordered > tfoot > tr > th,
.table-bordered > thead > tr > td,
.table-bordered > tbody > tr > td,
.table-bordered > tfoot > tr > td {
  border: 1px solid #ddd;
}
.table-bordered > thead > tr > th,
.table-bordered > thead > tr > td {
  border-bottom-width: 2px;
}
.table-striped > tbody > tr:nth-of-type(odd) {
  background-color: #f9f9f9;
}
.table-hover > tbody > tr:hover {
  background-color: #f5f5f5;
}
table col[class*="col-"] {
  position: static;
  display: table-column;
  float: none;
}
table td[class*="col-"],
table th[class*="col-"] {
  position: static;
  display: table-cell;
  float: none;
}
.table > thead > tr > td.active,
.table > tbody > tr > td.active,
.table > tfoot > tr > td.active,
.table > thead > tr > th.active,
.table > tbody > tr > th.active,
.table > tfoot > tr > th.active,
.table > thead > tr.active > td,
.table > tbody > tr.active > td,
.table > tfoot > tr.active > td,
.table > thead > tr.active > th,
.table > tbody > tr.active > th,
.table > tfoot > tr.active > th {
  background-color: #f5f5f5;
}
.table-hover > tbody > tr > td.active:hover,
.table-hover > tbody > tr > th.active:hover,
.table-hover > tbody > tr.active:hover > td,
.table-hover > tbody > tr:hover > .active,
.table-hover > tbody > tr.active:hover > th {
  background-color: #e8e8e8;
}
.table > thead > tr > td.success,
.table > tbody > tr > td.success,
.table > tfoot > tr > td.success,
.table > thead > tr > th.success,
.table > tbody > tr > th.success,
.table > tfoot > tr > th.success,
.table > thead > tr.success > td,
.table > tbody > tr.success > td,
.table > tfoot > tr.success > td,
.table > thead > tr.success > th,
.table > tbody > tr.success > th,
.table > tfoot > tr.success > th {
  background-color: #dff0d8;
}
.table-hover > tbody > tr > td.success:hover,
.table-hover > tbody > tr > th.success:hover,
.table-hover > tbody > tr.success:hover > td,
.table-hover > tbody > tr:hover > .success,
.table-hover > tbody > tr.success:hover > th {
  background-color: #d0e9c6;
}
.table > thead > tr > td.info,
.table > tbody > tr > td.info,
.table > tfoot > tr > td.info,
.table > thead > tr > th.info,
.table > tbody > tr > th.info,
.table > tfoot > tr > th.info,
.table > thead > tr.info > td,
.table > tbody > tr.info > td,
.table > tfoot > tr.info > td,
.table > thead > tr.info > th,
.table > tbody > tr.info > th,
.table > tfoot > tr.info > th {
  background-color: #d9edf7;
}
.table-hover > tbody > tr > td.info:hover,
.table-hover > tbody > tr > th.info:hover,
.table-hover > tbody > tr.info:hover > td,
.table-hover > tbody > tr:hover > .info,
.table-hover > tbody > tr.info:hover > th {
  background-color: #c4e3f3;
}
.table > thead > tr > td.warning,
.table > tbody > tr > td.warning,
.table > tfoot > tr > td.warning,
.table > thead > tr > th.warning,
.table > tbody > tr > th.warning,
.table > tfoot > tr > th.warning,
.table > thead > tr.warning > td,
.table > tbody > tr.warning > td,
.table > tfoot > tr.warning > td,
.table > thead > tr.warning > th,
.table > tbody > tr.warning > th,
.table > tfoot > tr.warning > th {
  background-color: #fcf8e3;
}
.table-hover > tbody > tr > td.warning:hover,
.table-hover > tbody > tr > th.warning:hover,
.table-hover > tbody > tr.warning:hover > td,
.table-hover > tbody > tr:hover > .warning,
.table-hover > tbody > tr.warning:hover > th {
  background-color: #faf2cc;
}
.table > thead > tr > td.danger,
.table > tbody > tr > td.danger,
.table > tfoot > tr > td.danger,
.table > thead > tr > th.danger,
.table > tbody > tr > th.danger,
.table > tfoot > tr > th.danger,
.table > thead > tr.danger > td,
.table > tbody > tr.danger > td,
.table > tfoot > tr.danger > td,
.table > thead > tr.danger > th,
.table > tbody > tr.danger > th,
.table > tfoot > tr.danger > th {
  background-color: #f2dede;
}
.table-hover > tbody > tr > td.danger:hover,
.table-hover > tbody > tr > th.danger:hover,
.table-hover > tbody > tr.danger:hover > td,
.table-hover > tbody > tr:hover > .danger,
.table-hover > tbody > tr.danger:hover > th {
  background-color: #ebcccc;
}
.table-responsive {
  min-height: .01%;
  overflow-x: auto;
}
@media screen and (max-width: 767px) {
  .table-responsive {
    width: 100%;
    margin-bottom: 15px;
    overflow-y: hidden;
    -ms-overflow-style: -ms-autohiding-scrollbar;
    border: 1px solid #ddd;
  }
  .table-responsive > .table {
    margin-bottom: 0;
  }
  .table-responsive > .table > thead > tr > th,
  .table-responsive > .table > tbody > tr > th,
  .table-responsive > .table > tfoot > tr > th,
  .table-responsive > .table > thead > tr > td,
  .table-responsive > .table > tbody > tr > td,
  .table-responsive > .table > tfoot > tr > td {
    white-space: nowrap;
  }
  .table-responsive > .table-bordered {
    border: 0;
  }
  .table-responsive > .table-bordered > thead > tr > th:first-child,
  .table-responsive > .table-bordered > tbody > tr > th:first-child,
  .table-responsive > .table-bordered > tfoot > tr > th:first-child,
  .table-responsive > .table-bordered > thead > tr > td:first-child,
  .table-responsive > .table-bordered > tbody > tr > td:first-child,
  .table-responsive > .table-bordered > tfoot > tr > td:first-child {
    border-left: 0;
  }
  .table-responsive > .table-bordered > thead > tr > th:last-child,
  .table-responsive > .table-bordered > tbody > tr > th:last-child,
  .table-responsive > .table-bordered > tfoot > tr > th:last-child,
  .table-responsive > .table-bordered > thead > tr > td:last-child,
  .table-responsive > .table-bordered > tbody > tr > td:last-child,
  .table-responsive > .table-bordered > tfoot > tr > td:last-child {
    border-right: 0;
  }
  .table-responsive > .table-bordered > tbody > tr:last-child > th,
  .table-responsive > .table-bordered > tfoot > tr:last-child > th,
  .table-responsive > .table-bordered > tbody > tr:last-child > td,
  .table-responsive > .table-bordered > tfoot > tr:last-child > td {
    border-bottom: 0;
  }
}
fieldset {
  min-width: 0;
  padding: 0;
  margin: 0;
  border: 0;
}
legend {
  display: block;
  width: 100%;
  padding: 0;
  margin-bottom: 20px;
  font-size: 21px;
  line-height: inherit;
  color: #333;
  border: 0;
  border-bottom: 1px solid #e5e5e5;
}
label {
  display: inline-block;
  max-width: 100%;
  margin-bottom: 5px;
  font-weight: bold;
}
input[type="search"] {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}
input[type="radio"],
input[type="checkbox"] {
  margin: 4px 0 0;
  margin-top: 1px \9;
  line-height: normal;
}
input[type="file"] {
  display: block;
}
input[type="range"] {
  display: block;
  width: 100%;
}
select[multiple],
select[size] {
  height: auto;
}
input[type="file"]:focus,
input[type="radio"]:focus,
input[type="checkbox"]:focus {
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
output {
  display: block;
  padding-top: 7px;
  font-size: 14px;
  line-height: 1.42857143;
  color: #555;
}
.form-control {
  display: block;
  width: 100%;
  height: 34px;
  padding: 6px 12px;
  font-size: 14px;
  line-height: 1.42857143;
  color: #555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
  -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
       -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
          transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
.form-control:focus {
  border-color: #66afe9;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, .6);
          box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, .6);
}
.form-control::-moz-placeholder {
  color: #999;
  opacity: 1;
}
.form-control:-ms-input-placeholder {
  color: #999;
}
.form-control::-webkit-input-placeholder {
  color: #999;
}
.form-control::-ms-expand {
  background-color: transparent;
  border: 0;
}
.form-control[disabled],
.form-control[readonly],
fieldset[disabled] .form-control {
  background-color: #eee;
  opacity: 1;
}
.form-control[disabled],
fieldset[disabled] .form-control {
  cursor: not-allowed;
}
textarea.form-control {
  height: auto;
}
input[type="search"] {
  -webkit-appearance: none;
}
@media screen and (-webkit-min-device-pixel-ratio: 0) {
  input[type="date"].form-control,
  input[type="time"].form-control,
  input[type="datetime-local"].form-control,
  input[type="month"].form-control {
    line-height: 34px;
  }
  input[type="date"].input-sm,
  input[type="time"].input-sm,
  input[type="datetime-local"].input-sm,
  input[type="month"].input-sm,
  .input-group-sm input[type="date"],
  .input-group-sm input[type="time"],
  .input-group-sm input[type="datetime-local"],
  .input-group-sm input[type="month"] {
    line-height: 30px;
  }
  input[type="date"].input-lg,
  input[type="time"].input-lg,
  input[type="datetime-local"].input-lg,
  input[type="month"].input-lg,
  .input-group-lg input[type="date"],
  .input-group-lg input[type="time"],
  .input-group-lg input[type="datetime-local"],
  .input-group-lg input[type="month"] {
    line-height: 46px;
  }
}
.form-group {
  margin-bottom: 15px;
}
.radio,
.checkbox {
  position: relative;
  display: block;
  margin-top: 10px;
  margin-bottom: 10px;
}
.radio label,
.checkbox label {
  min-height: 20px;
  padding-left: 20px;
  margin-bottom: 0;
  font-weight: normal;
  cursor: pointer;
}
.radio input[type="radio"],
.radio-inline input[type="radio"],
.checkbox input[type="checkbox"],
.checkbox-inline input[type="checkbox"] {
  position: absolute;
  margin-top: 4px \9;
  margin-left: -20px;
}
.radio + .radio,
.checkbox + .checkbox {
  margin-top: -5px;
}
.radio-inline,
.checkbox-inline {
  position: relative;
  display: inline-block;
  padding-left: 20px;
  margin-bottom: 0;
  font-weight: normal;
  vertical-align: middle;
  cursor: pointer;
}
.radio-inline + .radio-inline,
.checkbox-inline + .checkbox-inline {
  margin-top: 0;
  margin-left: 10px;
}
input[type="radio"][disabled],
input[type="checkbox"][disabled],
input[type="radio"].disabled,
input[type="checkbox"].disabled,
fieldset[disabled] input[type="radio"],
fieldset[disabled] input[type="checkbox"] {
  cursor: not-allowed;
}
.radio-inline.disabled,
.checkbox-inline.disabled,
fieldset[disabled] .radio-inline,
fieldset[disabled] .checkbox-inline {
  cursor: not-allowed;
}
.radio.disabled label,
.checkbox.disabled label,
fieldset[disabled] .radio label,
fieldset[disabled] .checkbox label {
  cursor: not-allowed;
}
.form-control-static {
  min-height: 34px;
  padding-top: 7px;
  padding-bottom: 7px;
  margin-bottom: 0;
}
.form-control-static.input-lg,
.form-control-static.input-sm {
  padding-right: 0;
  padding-left: 0;
}
.input-sm {
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 3px;
}
select.input-sm {
  height: 30px;
  line-height: 30px;
}
textarea.input-sm,
select[multiple].input-sm {
  height: auto;
}
.form-group-sm .form-control {
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 3px;
}
.form-group-sm select.form-control {
  height: 30px;
  line-height: 30px;
}
.form-group-sm textarea.form-control,
.form-group-sm select[multiple].form-control {
  height: auto;
}
.form-group-sm .form-control-static {
  height: 30px;
  min-height: 32px;
  padding: 6px 10px;
  font-size: 12px;
  line-height: 1.5;
}
.input-lg {
  height: 46px;
  padding: 10px 16px;
  font-size: 18px;
  line-height: 1.3333333;
  border-radius: 6px;
}
select.input-lg {
  height: 46px;
  line-height: 46px;
}
textarea.input-lg,
select[multiple].input-lg {
  height: auto;
}
.form-group-lg .form-control {
  height: 46px;
  padding: 10px 16px;
  font-size: 18px;
  line-height: 1.3333333;
  border-radius: 6px;
}
.form-group-lg select.form-control {
  height: 46px;
  line-height: 46px;
}
.form-group-lg textarea.form-control,
.form-group-lg select[multiple].form-control {
  height: auto;
}
.form-group-lg .form-control-static {
  height: 46px;
  min-height: 38px;
  padding: 11px 16px;
  font-size: 18px;
  line-height: 1.3333333;
}
.has-feedback {
  position: relative;
}
.has-feedback .form-control {
  padding-right: 42.5px;
}
.form-control-feedback {
  position: absolute;
  top: 0;
  right: 0;
  z-index: 2;
  display: block;
  width: 34px;
  height: 34px;
  line-height: 34px;
  text-align: center;
  pointer-events: none;
}
.input-lg + .form-control-feedback,
.input-group-lg + .form-control-feedback,
.form-group-lg .form-control + .form-control-feedback {
  width: 46px;
  height: 46px;
  line-height: 46px;
}
.input-sm + .form-control-feedback,
.input-group-sm + .form-control-feedback,
.form-group-sm .form-control + .form-control-feedback {
  width: 30px;
  height: 30px;
  line-height: 30px;
}
.has-success .help-block,
.has-success .control-label,
.has-success .radio,
.has-success .checkbox,
.has-success .radio-inline,
.has-success .checkbox-inline,
.has-success.radio label,
.has-success.checkbox label,
.has-success.radio-inline label,
.has-success.checkbox-inline label {
  color: #3c763d;
}
.has-success .form-control {
  border-color: #3c763d;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
}
.has-success .form-control:focus {
  border-color: #2b542c;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #67b168;
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #67b168;
}
.has-success .input-group-addon {
  color: #3c763d;
  background-color: #dff0d8;
  border-color: #3c763d;
}
.has-success .form-control-feedback {
  color: #3c763d;
}
.has-warning .help-block,
.has-warning .control-label,
.has-warning .radio,
.has-warning .checkbox,
.has-warning .radio-inline,
.has-warning .checkbox-inline,
.has-warning.radio label,
.has-warning.checkbox label,
.has-warning.radio-inline label,
.has-warning.checkbox-inline label {
  color: #8a6d3b;
}
.has-warning .form-control {
  border-color: #8a6d3b;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
}
.has-warning .form-control:focus {
  border-color: #66512c;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #c0a16b;
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #c0a16b;
}
.has-warning .input-group-addon {
  color: #8a6d3b;
  background-color: #fcf8e3;
  border-color: #8a6d3b;
}
.has-warning .form-control-feedback {
  color: #8a6d3b;
}
.has-error .help-block,
.has-error .control-label,
.has-error .radio,
.has-error .checkbox,
.has-error .radio-inline,
.has-error .checkbox-inline,
.has-error.radio label,
.has-error.checkbox label,
.has-error.radio-inline label,
.has-error.checkbox-inline label {
  color: #a94442;
}
.has-error .form-control {
  border-color: #a94442;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
}
.has-error .form-control:focus {
  border-color: #843534;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #ce8483;
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #ce8483;
}
.has-error .input-group-addon {
  color: #a94442;
  background-color: #f2dede;
  border-color: #a94442;
}
.has-error .form-control-feedback {
  color: #a94442;
}
.has-feedback label ~ .form-control-feedback {
  top: 25px;
}
.has-feedback label.sr-only ~ .form-control-feedback {
  top: 0;
}
.help-block {
  display: block;
  margin-top: 5px;
  margin-bottom: 10px;
  color: #737373;
}
@media (min-width: 768px) {
  .form-inline .form-group {
    display: inline-block;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .form-control {
    display: inline-block;
    width: auto;
    vertical-align: middle;
  }
  .form-inline .form-control-static {
    display: inline-block;
  }
  .form-inline .input-group {
    display: inline-table;
    vertical-align: middle;
  }
  .form-inline .input-group .input-group-addon,
  .form-inline .input-group .input-group-btn,
  .form-inline .input-group .form-control {
    width: auto;
  }
  .form-inline .input-group > .form-control {
    width: 100%;
  }
  .form-inline .control-label {
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .radio,
  .form-inline .checkbox {
    display: inline-block;
    margin-top: 0;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .radio label,
  .form-inline .checkbox label {
    padding-left: 0;
  }
  .form-inline .radio input[type="radio"],
  .form-inline .checkbox input[type="checkbox"] {
    position: relative;
    margin-left: 0;
  }
  .form-inline .has-feedback .form-control-feedback {
    top: 0;
  }
}
.form-horizontal .radio,
.form-horizontal .checkbox,
.form-horizontal .radio-inline,
.form-horizontal .checkbox-inline {
  padding-top: 7px;
  margin-top: 0;
  margin-bottom: 0;
}
.form-horizontal .radio,
.form-horizontal .checkbox {
  min-height: 27px;
}
.form-horizontal .form-group {
  margin-right: -15px;
  margin-left: -15px;
}
@media (min-width: 768px) {
  .form-horizontal .control-label {
    padding-top: 7px;
    margin-bottom: 0;
    text-align: right;
  }
}
.form-horizontal .has-feedback .form-control-feedback {
  right: 15px;
}
@media (min-width: 768px) {
  .form-horizontal .form-group-lg .control-label {
    padding-top: 11px;
    font-size: 18px;
  }
}
@media (min-width: 768px) {
  .form-horizontal .form-group-sm .control-label {
    padding-top: 6px;
    font-size: 12px;
  }
}
.btn {
  display: inline-block;
  padding: 6px 12px;
  margin-bottom: 0;
  font-size: 14px;
  font-weight: normal;
  line-height: 1.42857143;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  -ms-touch-action: manipulation;
      touch-action: manipulation;
  cursor: pointer;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  background-image: none;
  border: 1px solid transparent;
  border-radius: 4px;
}
.btn:focus,
.btn:active:focus,
.btn.active:focus,
.btn.focus,
.btn:active.focus,
.btn.active.focus {
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
.btn:hover,
.btn:focus,
.btn.focus {
  color: #333;
  text-decoration: none;
}
.btn:active,
.btn.active {
  background-image: none;
  outline: 0;
  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, .125);
          box-shadow: inset 0 3px 5px rgba(0, 0, 0, .125);
}
.btn.disabled,
.btn[disabled],
fieldset[disabled] .btn {
  cursor: not-allowed;
  filter: alpha(opacity=65);
  -webkit-box-shadow: none;
          box-shadow: none;
  opacity: .65;
}
a.btn.disabled,
fieldset[disabled] a.btn {
  pointer-events: none;
}
.btn-default {
  color: #333;
  background-color: #fff;
  border-color: #ccc;
}
.btn-default:focus,
.btn-default.focus {
  color: #333;
  background-color: #e6e6e6;
  border-color: #8c8c8c;
}
.btn-default:hover {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.btn-default:active,
.btn-default.active,
.open > .dropdown-toggle.btn-default {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.btn-default:active:hover,
.btn-default.active:hover,
.open > .dropdown-toggle.btn-default:hover,
.btn-default:active:focus,
.btn-default.active:focus,
.open > .dropdown-toggle.btn-default:focus,
.btn-default:active.focus,
.btn-default.active.focus,
.open > .dropdown-toggle.btn-default.focus {
  color: #333;
  background-color: #d4d4d4;
  border-color: #8c8c8c;
}
.btn-default:active,
.btn-default.active,
.open > .dropdown-toggle.btn-default {
  background-image: none;
}
.btn-default.disabled:hover,
.btn-default[disabled]:hover,
fieldset[disabled] .btn-default:hover,
.btn-default.disabled:focus,
.btn-default[disabled]:focus,
fieldset[disabled] .btn-default:focus,
.btn-default.disabled.focus,
.btn-default[disabled].focus,
fieldset[disabled] .btn-default.focus {
  background-color: #fff;
  border-color: #ccc;
}
.btn-default .badge {
  color: #fff;
  background-color: #333;
}
.btn-primary {
  color: #fff;
  background-color: #337ab7;
  border-color: #2e6da4;
}
.btn-primary:focus,
.btn-primary.focus {
  color: #fff;
  background-color: #286090;
  border-color: #122b40;
}
.btn-primary:hover {
  color: #fff;
  background-color: #286090;
  border-color: #204d74;
}
.btn-primary:active,
.btn-primary.active,
.open > .dropdown-toggle.btn-primary {
  color: #fff;
  background-color: #286090;
  border-color: #204d74;
}
.btn-primary:active:hover,
.btn-primary.active:hover,
.open > .dropdown-toggle.btn-primary:hover,
.btn-primary:active:focus,
.btn-primary.active:focus,
.open > .dropdown-toggle.btn-primary:focus,
.btn-primary:active.focus,
.btn-primary.active.focus,
.open > .dropdown-toggle.btn-primary.focus {
  color: #fff;
  background-color: #204d74;
  border-color: #122b40;
}
.btn-primary:active,
.btn-primary.active,
.open > .dropdown-toggle.btn-primary {
  background-image: none;
}
.btn-primary.disabled:hover,
.btn-primary[disabled]:hover,
fieldset[disabled] .btn-primary:hover,
.btn-primary.disabled:focus,
.btn-primary[disabled]:focus,
fieldset[disabled] .btn-primary:focus,
.btn-primary.disabled.focus,
.btn-primary[disabled].focus,
fieldset[disabled] .btn-primary.focus {
  background-color: #337ab7;
  border-color: #2e6da4;
}
.btn-primary .badge {
  color: #337ab7;
  background-color: #fff;
}
.btn-success {
  color: #fff;
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.btn-success:focus,
.btn-success.focus {
  color: #fff;
  background-color: #449d44;
  border-color: #255625;
}
.btn-success:hover {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.btn-success:active,
.btn-success.active,
.open > .dropdown-toggle.btn-success {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.btn-success:active:hover,
.btn-success.active:hover,
.open > .dropdown-toggle.btn-success:hover,
.btn-success:active:focus,
.btn-success.active:focus,
.open > .dropdown-toggle.btn-success:focus,
.btn-success:active.focus,
.btn-success.active.focus,
.open > .dropdown-toggle.btn-success.focus {
  color: #fff;
  background-color: #398439;
  border-color: #255625;
}
.btn-success:active,
.btn-success.active,
.open > .dropdown-toggle.btn-success {
  background-image: none;
}
.btn-success.disabled:hover,
.btn-success[disabled]:hover,
fieldset[disabled] .btn-success:hover,
.btn-success.disabled:focus,
.btn-success[disabled]:focus,
fieldset[disabled] .btn-success:focus,
.btn-success.disabled.focus,
.btn-success[disabled].focus,
fieldset[disabled] .btn-success.focus {
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.btn-success .badge {
  color: #5cb85c;
  background-color: #fff;
}
.btn-info {
  color: #fff;
  background-color: #5bc0de;
  border-color: #46b8da;
}
.btn-info:focus,
.btn-info.focus {
  color: #fff;
  background-color: #31b0d5;
  border-color: #1b6d85;
}
.btn-info:hover {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.btn-info:active,
.btn-info.active,
.open > .dropdown-toggle.btn-info {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.btn-info:active:hover,
.btn-info.active:hover,
.open > .dropdown-toggle.btn-info:hover,
.btn-info:active:focus,
.btn-info.active:focus,
.open > .dropdown-toggle.btn-info:focus,
.btn-info:active.focus,
.btn-info.active.focus,
.open > .dropdown-toggle.btn-info.focus {
  color: #fff;
  background-color: #269abc;
  border-color: #1b6d85;
}
.btn-info:active,
.btn-info.active,
.open > .dropdown-toggle.btn-info {
  background-image: none;
}
.btn-info.disabled:hover,
.btn-info[disabled]:hover,
fieldset[disabled] .btn-info:hover,
.btn-info.disabled:focus,
.btn-info[disabled]:focus,
fieldset[disabled] .btn-info:focus,
.btn-info.disabled.focus,
.btn-info[disabled].focus,
fieldset[disabled] .btn-info.focus {
  background-color: #5bc0de;
  border-color: #46b8da;
}
.btn-info .badge {
  color: #5bc0de;
  background-color: #fff;
}
.btn-warning {
  color: #fff;
  background-color: #f0ad4e;
  border-color: #eea236;
}
.btn-warning:focus,
.btn-warning.focus {
  color: #fff;
  background-color: #ec971f;
  border-color: #985f0d;
}
.btn-warning:hover {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.btn-warning:active,
.btn-warning.active,
.open > .dropdown-toggle.btn-warning {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.btn-warning:active:hover,
.btn-warning.active:hover,
.open > .dropdown-toggle.btn-warning:hover,
.btn-warning:active:focus,
.btn-warning.active:focus,
.open > .dropdown-toggle.btn-warning:focus,
.btn-warning:active.focus,
.btn-warning.active.focus,
.open > .dropdown-toggle.btn-warning.focus {
  color: #fff;
  background-color: #d58512;
  border-color: #985f0d;
}
.btn-warning:active,
.btn-warning.active,
.open > .dropdown-toggle.btn-warning {
  background-image: none;
}
.btn-warning.disabled:hover,
.btn-warning[disabled]:hover,
fieldset[disabled] .btn-warning:hover,
.btn-warning.disabled:focus,
.btn-warning[disabled]:focus,
fieldset[disabled] .btn-warning:focus,
.btn-warning.disabled.focus,
.btn-warning[disabled].focus,
fieldset[disabled] .btn-warning.focus {
  background-color: #f0ad4e;
  border-color: #eea236;
}
.btn-warning .badge {
  color: #f0ad4e;
  background-color: #fff;
}
.btn-danger {
  color: #fff;
  background-color: #d9534f;
  border-color: #d43f3a;
}
.btn-danger:focus,
.btn-danger.focus {
  color: #fff;
  background-color: #c9302c;
  border-color: #761c19;
}
.btn-danger:hover {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.btn-danger:active,
.btn-danger.active,
.open > .dropdown-toggle.btn-danger {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.btn-danger:active:hover,
.btn-danger.active:hover,
.open > .dropdown-toggle.btn-danger:hover,
.btn-danger:active:focus,
.btn-danger.active:focus,
.open > .dropdown-toggle.btn-danger:focus,
.btn-danger:active.focus,
.btn-danger.active.focus,
.open > .dropdown-toggle.btn-danger.focus {
  color: #fff;
  background-color: #ac2925;
  border-color: #761c19;
}
.btn-danger:active,
.btn-danger.active,
.open > .dropdown-toggle.btn-danger {
  background-image: none;
}
.btn-danger.disabled:hover,
.btn-danger[disabled]:hover,
fieldset[disabled] .btn-danger:hover,
.btn-danger.disabled:focus,
.btn-danger[disabled]:focus,
fieldset[disabled] .btn-danger:focus,
.btn-danger.disabled.focus,
.btn-danger[disabled].focus,
fieldset[disabled] .btn-danger.focus {
  background-color: #d9534f;
  border-color: #d43f3a;
}
.btn-danger .badge {
  color: #d9534f;
  background-color: #fff;
}
.btn-link {
  font-weight: normal;
  color: #337ab7;
  border-radius: 0;
}
.btn-link,
.btn-link:active,
.btn-link.active,
.btn-link[disabled],
fieldset[disabled] .btn-link {
  background-color: transparent;
  -webkit-box-shadow: none;
          box-shadow: none;
}
.btn-link,
.btn-link:hover,
.btn-link:focus,
.btn-link:active {
  border-color: transparent;
}
.btn-link:hover,
.btn-link:focus {
  color: #23527c;
  text-decoration: underline;
  background-color: transparent;
}
.btn-link[disabled]:hover,
fieldset[disabled] .btn-link:hover,
.btn-link[disabled]:focus,
fieldset[disabled] .btn-link:focus {
  color: #777;
  text-decoration: none;
}
.btn-lg,
.btn-group-lg > .btn {
  padding: 10px 16px;
  font-size: 18px;
  line-height: 1.3333333;
  border-radius: 6px;
}
.btn-sm,
.btn-group-sm > .btn {
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 3px;
}
.btn-xs,
.btn-group-xs > .btn {
  padding: 1px 5px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 3px;
}
.btn-block {
  display: block;
  width: 100%;
}
.btn-block + .btn-block {
  margin-top: 5px;
}
input[type="submit"].btn-block,
input[type="reset"].btn-block,
input[type="button"].btn-block {
  width: 100%;
}
.fade {
  opacity: 0;
  -webkit-transition: opacity .15s linear;
       -o-transition: opacity .15s linear;
          transition: opacity .15s linear;
}
.fade.in {
  opacity: 1;
}
.collapse {
  display: none;
}
.collapse.in {
  display: block;
}
tr.collapse.in {
  display: table-row;
}
tbody.collapse.in {
  display: table-row-group;
}
.collapsing {
  position: relative;
  height: 0;
  overflow: hidden;
  -webkit-transition-timing-function: ease;
       -o-transition-timing-function: ease;
          transition-timing-function: ease;
  -webkit-transition-duration: .35s;
       -o-transition-duration: .35s;
          transition-duration: .35s;
  -webkit-transition-property: height, visibility;
       -o-transition-property: height, visibility;
          transition-property: height, visibility;
}
.caret {
  display: inline-block;
  width: 0;
  height: 0;
  margin-left: 2px;
  vertical-align: middle;
  border-top: 4px dashed;
  border-top: 4px solid \9;
  border-right: 4px solid transparent;
  border-left: 4px solid transparent;
}
.dropup,
.dropdown {
  position: relative;
}
.dropdown-toggle:focus {
  outline: 0;
}
.dropdown-menu {
  position: absolute;
  top: 100%;
  left: 0;
  z-index: 1000;
  display: none;
  float: left;
  min-width: 160px;
  padding: 5px 0;
  margin: 2px 0 0;
  font-size: 14px;
  text-align: left;
  list-style: none;
  background-color: #fff;
  -webkit-background-clip: padding-box;
          background-clip: padding-box;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, .15);
  border-radius: 4px;
  -webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
          box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
}
.dropdown-menu.pull-right {
  right: 0;
  left: auto;
}
.dropdown-menu .divider {
  height: 1px;
  margin: 9px 0;
  overflow: hidden;
  background-color: #e5e5e5;
}
.dropdown-menu > li > a {
  display: block;
  padding: 3px 20px;
  clear: both;
  font-weight: normal;
  line-height: 1.42857143;
  color: #333;
  white-space: nowrap;
}
.dropdown-menu > li > a:hover,
.dropdown-menu > li > a:focus {
  color: #262626;
  text-decoration: none;
  background-color: #f5f5f5;
}
.dropdown-menu > .active > a,
.dropdown-menu > .active > a:hover,
.dropdown-menu > .active > a:focus {
  color: #fff;
  text-decoration: none;
  background-color: #337ab7;
  outline: 0;
}
.dropdown-menu > .disabled > a,
.dropdown-menu > .disabled > a:hover,
.dropdown-menu > .disabled > a:focus {
  color: #777;
}
.dropdown-menu > .disabled > a:hover,
.dropdown-menu > .disabled > a:focus {
  text-decoration: none;
  cursor: not-allowed;
  background-color: transparent;
  background-image: none;
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
}
.open > .dropdown-menu {
  display: block;
}
.open > a {
  outline: 0;
}
.dropdown-menu-right {
  right: 0;
  left: auto;
}
.dropdown-menu-left {
  right: auto;
  left: 0;
}
.dropdown-header {
  display: block;
  padding: 3px 20px;
  font-size: 12px;
  line-height: 1.42857143;
  color: #777;
  white-space: nowrap;
}
.dropdown-backdrop {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 990;
}
.pull-right > .dropdown-menu {
  right: 0;
  left: auto;
}
.dropup .caret,
.navbar-fixed-bottom .dropdown .caret {
  content: "";
  border-top: 0;
  border-bottom: 4px dashed;
  border-bottom: 4px solid \9;
}
.dropup .dropdown-menu,
.navbar-fixed-bottom .dropdown .dropdown-menu {
  top: auto;
  bottom: 100%;
  margin-bottom: 2px;
}
@media (min-width: 768px) {
  .navbar-right .dropdown-menu {
    right: 0;
    left: auto;
  }
  .navbar-right .dropdown-menu-left {
    right: auto;
    left: 0;
  }
}
.btn-group,
.btn-group-vertical {
  position: relative;
  display: inline-block;
  vertical-align: middle;
}
.btn-group > .btn,
.btn-group-vertical > .btn {
  position: relative;
  float: left;
}
.btn-group > .btn:hover,
.btn-group-vertical > .btn:hover,
.btn-group > .btn:focus,
.btn-group-vertical > .btn:focus,
.btn-group > .btn:active,
.btn-group-vertical > .btn:active,
.btn-group > .btn.active,
.btn-group-vertical > .btn.active {
  z-index: 2;
}
.btn-group .btn + .btn,
.btn-group .btn + .btn-group,
.btn-group .btn-group + .btn,
.btn-group .btn-group + .btn-group {
  margin-left: -1px;
}
.btn-toolbar {
  margin-left: -5px;
}
.btn-toolbar .btn,
.btn-toolbar .btn-group,
.btn-toolbar .input-group {
  float: left;
}
.btn-toolbar > .btn,
.btn-toolbar > .btn-group,
.btn-toolbar > .input-group {
  margin-left: 5px;
}
.btn-group > .btn:not(:first-child):not(:last-child):not(.dropdown-toggle) {
  border-radius: 0;
}
.btn-group > .btn:first-child {
  margin-left: 0;
}
.btn-group > .btn:first-child:not(:last-child):not(.dropdown-toggle) {
  border-top-right-radius: 0;
  border-bottom-right-radius: 0;
}
.btn-group > .btn:last-child:not(:first-child),
.btn-group > .dropdown-toggle:not(:first-child) {
  border-top-left-radius: 0;
  border-bottom-left-radius: 0;
}
.btn-group > .btn-group {
  float: left;
}
.btn-group > .btn-group:not(:first-child):not(:last-child) > .btn {
  border-radius: 0;
}
.btn-group > .btn-group:first-child:not(:last-child) > .btn:last-child,
.btn-group > .btn-group:first-child:not(:last-child) > .dropdown-toggle {
  border-top-right-radius: 0;
  border-bottom-right-radius: 0;
}
.btn-group > .btn-group:last-child:not(:first-child) > .btn:first-child {
  border-top-left-radius: 0;
  border-bottom-left-radius: 0;
}
.btn-group .dropdown-toggle:active,
.btn-group.open .dropdown-toggle {
  outline: 0;
}
.btn-group > .btn + .dropdown-toggle {
  padding-right: 8px;
  padding-left: 8px;
}
.btn-group > .btn-lg + .dropdown-toggle {
  padding-right: 12px;
  padding-left: 12px;
}
.btn-group.open .dropdown-toggle {
  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, .125);
          box-shadow: inset 0 3px 5px rgba(0, 0, 0, .125);
}
.btn-group.open .dropdown-toggle.btn-link {
  -webkit-box-shadow: none;
          box-shadow: none;
}
.btn .caret {
  margin-left: 0;
}
.btn-lg .caret {
  border-width: 5px 5px 0;
  border-bottom-width: 0;
}
.dropup .btn-lg .caret {
  border-width: 0 5px 5px;
}
.btn-group-vertical > .btn,
.btn-group-vertical > .btn-group,
.btn-group-vertical > .btn-group > .btn {
  display: block;
  float: none;
  width: 100%;
  max-width: 100%;
}
.btn-group-vertical > .btn-group > .btn {
  float: none;
}
.btn-group-vertical > .btn + .btn,
.btn-group-vertical > .btn + .btn-group,
.btn-group-vertical > .btn-group + .btn,
.btn-group-vertical > .btn-group + .btn-group {
  margin-top: -1px;
  margin-left: 0;
}
.btn-group-vertical > .btn:not(:first-child):not(:last-child) {
  border-radius: 0;
}
.btn-group-vertical > .btn:first-child:not(:last-child) {
  border-top-left-radius: 4px;
  border-top-right-radius: 4px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.btn-group-vertical > .btn:last-child:not(:first-child) {
  border-top-left-radius: 0;
  border-top-right-radius: 0;
  border-bottom-right-radius: 4px;
  border-bottom-left-radius: 4px;
}
.btn-group-vertical > .btn-group:not(:first-child):not(:last-child) > .btn {
  border-radius: 0;
}
.btn-group-vertical > .btn-group:first-child:not(:last-child) > .btn:last-child,
.btn-group-vertical > .btn-group:first-child:not(:last-child) > .dropdown-toggle {
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.btn-group-vertical > .btn-group:last-child:not(:first-child) > .btn:first-child {
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
.btn-group-justified {
  display: table;
  width: 100%;
  table-layout: fixed;
  border-collapse: separate;
}
.btn-group-justified > .btn,
.btn-group-justified > .btn-group {
  display: table-cell;
  float: none;
  width: 1%;
}
.btn-group-justified > .btn-group .btn {
  width: 100%;
}
.btn-group-justified > .btn-group .dropdown-menu {
  left: auto;
}
[data-toggle="buttons"] > .btn input[type="radio"],
[data-toggle="buttons"] > .btn-group > .btn input[type="radio"],
[data-toggle="buttons"] > .btn input[type="checkbox"],
[data-toggle="buttons"] > .btn-group > .btn input[type="checkbox"] {
  position: absolute;
  clip: rect(0, 0, 0, 0);
  pointer-events: none;
}
.input-group {
  position: relative;
  display: table;
  border-collapse: separate;
}
.input-group[class*="col-"] {
  float: none;
  padding-right: 0;
  padding-left: 0;
}
.input-group .form-control {
  position: relative;
  z-index: 2;
  float: left;
  width: 100%;
  margin-bottom: 0;
}
.input-group .form-control:focus {
  z-index: 3;
}
.input-group-lg > .form-control,
.input-group-lg > .input-group-addon,
.input-group-lg > .input-group-btn > .btn {
  height: 46px;
  padding: 10px 16px;
  font-size: 18px;
  line-height: 1.3333333;
  border-radius: 6px;
}
select.input-group-lg > .form-control,
select.input-group-lg > .input-group-addon,
select.input-group-lg > .input-group-btn > .btn {
  height: 46px;
  line-height: 46px;
}
textarea.input-group-lg > .form-control,
textarea.input-group-lg > .input-group-addon,
textarea.input-group-lg > .input-group-btn > .btn,
select[multiple].input-group-lg > .form-control,
select[multiple].input-group-lg > .input-group-addon,
select[multiple].input-group-lg > .input-group-btn > .btn {
  height: auto;
}
.input-group-sm > .form-control,
.input-group-sm > .input-group-addon,
.input-group-sm > .input-group-btn > .btn {
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 3px;
}
select.input-group-sm > .form-control,
select.input-group-sm > .input-group-addon,
select.input-group-sm > .input-group-btn > .btn {
  height: 30px;
  line-height: 30px;
}
textarea.input-group-sm > .form-control,
textarea.input-group-sm > .input-group-addon,
textarea.input-group-sm > .input-group-btn > .btn,
select[multiple].input-group-sm > .form-control,
select[multiple].input-group-sm > .input-group-addon,
select[multiple].input-group-sm > .input-group-btn > .btn {
  height: auto;
}
.input-group-addon,
.input-group-btn,
.input-group .form-control {
  display: table-cell;
}
.input-group-addon:not(:first-child):not(:last-child),
.input-group-btn:not(:first-child):not(:last-child),
.input-group .form-control:not(:first-child):not(:last-child) {
  border-radius: 0;
}
.input-group-addon,
.input-group-btn {
  width: 1%;
  white-space: nowrap;
  vertical-align: middle;
}
.input-group-addon {
  padding: 6px 12px;
  font-size: 14px;
  font-weight: normal;
  line-height: 1;
  color: #555;
  text-align: center;
  background-color: #eee;
  border: 1px solid #ccc;
  border-radius: 4px;
}
.input-group-addon.input-sm {
  padding: 5px 10px;
  font-size: 12px;
  border-radius: 3px;
}
.input-group-addon.input-lg {
  padding: 10px 16px;
  font-size: 18px;
  border-radius: 6px;
}
.input-group-addon input[type="radio"],
.input-group-addon input[type="checkbox"] {
  margin-top: 0;
}
.input-group .form-control:first-child,
.input-group-addon:first-child,
.input-group-btn:first-child > .btn,
.input-group-btn:first-child > .btn-group > .btn,
.input-group-btn:first-child > .dropdown-toggle,
.input-group-btn:last-child > .btn:not(:last-child):not(.dropdown-toggle),
.input-group-btn:last-child > .btn-group:not(:last-child) > .btn {
  border-top-right-radius: 0;
  border-bottom-right-radius: 0;
}
.input-group-addon:first-child {
  border-right: 0;
}
.input-group .form-control:last-child,
.input-group-addon:last-child,
.input-group-btn:last-child > .btn,
.input-group-btn:last-child > .btn-group > .btn,
.input-group-btn:last-child > .dropdown-toggle,
.input-group-btn:first-child > .btn:not(:first-child),
.input-group-btn:first-child > .btn-group:not(:first-child) > .btn {
  border-top-left-radius: 0;
  border-bottom-left-radius: 0;
}
.input-group-addon:last-child {
  border-left: 0;
}
.input-group-btn {
  position: relative;
  font-size: 0;
  white-space: nowrap;
}
.input-group-btn > .btn {
  position: relative;
}
.input-group-btn > .btn + .btn {
  margin-left: -1px;
}
.input-group-btn > .btn:hover,
.input-group-btn > .btn:focus,
.input-group-btn > .btn:active {
  z-index: 2;
}
.input-group-btn:first-child > .btn,
.input-group-btn:first-child > .btn-group {
  margin-right: -1px;
}
.input-group-btn:last-child > .btn,
.input-group-btn:last-child > .btn-group {
  z-index: 2;
  margin-left: -1px;
}
.nav {
  padding-left: 0;
  margin-bottom: 0;
  list-style: none;
}
.nav > li {
  position: relative;
  display: block;
}
.nav > li > a {
  position: relative;
  display: block;
  padding: 10px 15px;
}
.nav > li > a:hover,
.nav > li > a:focus {
  text-decoration: none;
  background-color: #eee;
}
.nav > li.disabled > a {
  color: #777;
}
.nav > li.disabled > a:hover,
.nav > li.disabled > a:focus {
  color: #777;
  text-decoration: none;
  cursor: not-allowed;
  background-color: transparent;
}
.nav .open > a,
.nav .open > a:hover,
.nav .open > a:focus {
  background-color: #eee;
  border-color: #337ab7;
}
.nav .nav-divider {
  height: 1px;
  margin: 9px 0;
  overflow: hidden;
  background-color: #e5e5e5;
}
.nav > li > a > img {
  max-width: none;
}
.nav-tabs {
  border-bottom: 1px solid #ddd;
}
.nav-tabs > li {
  float: left;
  margin-bottom: -1px;
}
.nav-tabs > li > a {
  margin-right: 2px;
  line-height: 1.42857143;
  border: 1px solid transparent;
  border-radius: 4px 4px 0 0;
}
.nav-tabs > li > a:hover {
  border-color: #eee #eee #ddd;
}
.nav-tabs > li.active > a,
.nav-tabs > li.active > a:hover,
.nav-tabs > li.active > a:focus {
  color: #555;
  cursor: default;
  background-color: #fff;
  border: 1px solid #ddd;
  border-bottom-color: transparent;
}
.nav-tabs.nav-justified {
  width: 100%;
  border-bottom: 0;
}
.nav-tabs.nav-justified > li {
  float: none;
}
.nav-tabs.nav-justified > li > a {
  margin-bottom: 5px;
  text-align: center;
}
.nav-tabs.nav-justified > .dropdown .dropdown-menu {
  top: auto;
  left: auto;
}
@media (min-width: 768px) {
  .nav-tabs.nav-justified > li {
    display: table-cell;
    width: 1%;
  }
  .nav-tabs.nav-justified > li > a {
    margin-bottom: 0;
  }
}
.nav-tabs.nav-justified > li > a {
  margin-right: 0;
  border-radius: 4px;
}
.nav-tabs.nav-justified > .active > a,
.nav-tabs.nav-justified > .active > a:hover,
.nav-tabs.nav-justified > .active > a:focus {
  border: 1px solid #ddd;
}
@media (min-width: 768px) {
  .nav-tabs.nav-justified > li > a {
    border-bottom: 1px solid #ddd;
    border-radius: 4px 4px 0 0;
  }
  .nav-tabs.nav-justified > .active > a,
  .nav-tabs.nav-justified > .active > a:hover,
  .nav-tabs.nav-justified > .active > a:focus {
    border-bottom-color: #fff;
  }
}
.nav-pills > li {
  float: left;
}
.nav-pills > li > a {
  border-radius: 4px;
}
.nav-pills > li + li {
  margin-left: 2px;
}
.nav-pills > li.active > a,
.nav-pills > li.active > a:hover,
.nav-pills > li.active > a:focus {
  color: #fff;
  background-color: #337ab7;
}
.nav-stacked > li {
  float: none;
}
.nav-stacked > li + li {
  margin-top: 2px;
  margin-left: 0;
}
.nav-justified {
  width: 100%;
}
.nav-justified > li {
  float: none;
}
.nav-justified > li > a {
  margin-bottom: 5px;
  text-align: center;
}
.nav-justified > .dropdown .dropdown-menu {
  top: auto;
  left: auto;
}
@media (min-width: 768px) {
  .nav-justified > li {
    display: table-cell;
    width: 1%;
  }
  .nav-justified > li > a {
    margin-bottom: 0;
  }
}
.nav-tabs-justified {
  border-bottom: 0;
}
.nav-tabs-justified > li > a {
  margin-right: 0;
  border-radius: 4px;
}
.nav-tabs-justified > .active > a,
.nav-tabs-justified > .active > a:hover,
.nav-tabs-justified > .active > a:focus {
  border: 1px solid #ddd;
}
@media (min-width: 768px) {
  .nav-tabs-justified > li > a {
    border-bottom: 1px solid #ddd;
    border-radius: 4px 4px 0 0;
  }
  .nav-tabs-justified > .active > a,
  .nav-tabs-justified > .active > a:hover,
  .nav-tabs-justified > .active > a:focus {
    border-bottom-color: #fff;
  }
}
.tab-content > .tab-pane {
  display: none;
}
.tab-content > .active {
  display: block;
}
.nav-tabs .dropdown-menu {
  margin-top: -1px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
.navbar {
  position: relative;
  min-height: 50px;
  margin-bottom: 20px;
  border: 1px solid transparent;
}
@media (min-width: 768px) {
  .navbar {
    border-radius: 4px;
  }
}
@media (min-width: 768px) {
  .navbar-header {
    float: left;
  }
}
.navbar-collapse {
  padding-right: 15px;
  padding-left: 15px;
  overflow-x: visible;
  -webkit-overflow-scrolling: touch;
  border-top: 1px solid transparent;
  -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, .1);
          box-shadow: inset 0 1px 0 rgba(255, 255, 255, .1);
}
.navbar-collapse.in {
  overflow-y: auto;
}
@media (min-width: 768px) {
  .navbar-collapse {
    width: auto;
    border-top: 0;
    -webkit-box-shadow: none;
            box-shadow: none;
  }
  .navbar-collapse.collapse {
    display: block !important;
    height: auto !important;
    padding-bottom: 0;
    overflow: visible !important;
  }
  .navbar-collapse.in {
    overflow-y: visible;
  }
  .navbar-fixed-top .navbar-collapse,
  .navbar-static-top .navbar-collapse,
  .navbar-fixed-bottom .navbar-collapse {
    padding-right: 0;
    padding-left: 0;
  }
}
.navbar-fixed-top .navbar-collapse,
.navbar-fixed-bottom .navbar-collapse {
  max-height: 340px;
}
@media (max-device-width: 480px) and (orientation: landscape) {
  .navbar-fixed-top .navbar-collapse,
  .navbar-fixed-bottom .navbar-collapse {
    max-height: 200px;
  }
}
.container > .navbar-header,
.container-fluid > .navbar-header,
.container > .navbar-collapse,
.container-fluid > .navbar-collapse {
  margin-right: -15px;
  margin-left: -15px;
}
@media (min-width: 768px) {
  .container > .navbar-header,
  .container-fluid > .navbar-header,
  .container > .navbar-collapse,
  .container-fluid > .navbar-collapse {
    margin-right: 0;
    margin-left: 0;
  }
}
.navbar-static-top {
  z-index: 1000;
  border-width: 0 0 1px;
}
@media (min-width: 768px) {
  .navbar-static-top {
    border-radius: 0;
  }
}
.navbar-fixed-top,
.navbar-fixed-bottom {
  position: fixed;
  right: 0;
  left: 0;
  z-index: 1030;
}
@media (min-width: 768px) {
  .navbar-fixed-top,
  .navbar-fixed-bottom {
    border-radius: 0;
  }
}
.navbar-fixed-top {
  top: 0;
  border-width: 0 0 1px;
}
.navbar-fixed-bottom {
  bottom: 0;
  margin-bottom: 0;
  border-width: 1px 0 0;
}
.navbar-brand {
  float: left;
  height: 50px;
  padding: 15px 15px;
  font-size: 18px;
  line-height: 20px;
}
.navbar-brand:hover,
.navbar-brand:focus {
  text-decoration: none;
}
.navbar-brand > img {
  display: block;
}
@media (min-width: 768px) {
  .navbar > .container .navbar-brand,
  .navbar > .container-fluid .navbar-brand {
    margin-left: -15px;
  }
}
.navbar-toggle {
  position: relative;
  float: right;
  padding: 9px 10px;
  margin-top: 8px;
  margin-right: 15px;
  margin-bottom: 8px;
  background-color: transparent;
  background-image: none;
  border: 1px solid transparent;
  border-radius: 4px;
}
.navbar-toggle:focus {
  outline: 0;
}
.navbar-toggle .icon-bar {
  display: block;
  width: 22px;
  height: 2px;
  border-radius: 1px;
}
.navbar-toggle .icon-bar + .icon-bar {
  margin-top: 4px;
}
@media (min-width: 768px) {
  .navbar-toggle {
    display: none;
  }
}
.navbar-nav {
  margin: 7.5px -15px;
}
.navbar-nav > li > a {
  padding-top: 10px;
  padding-bottom: 10px;
  line-height: 20px;
}
@media (max-width: 767px) {
  .navbar-nav .open .dropdown-menu {
    position: static;
    float: none;
    width: auto;
    margin-top: 0;
    background-color: transparent;
    border: 0;
    -webkit-box-shadow: none;
            box-shadow: none;
  }
  .navbar-nav .open .dropdown-menu > li > a,
  .navbar-nav .open .dropdown-menu .dropdown-header {
    padding: 5px 15px 5px 25px;
  }
  .navbar-nav .open .dropdown-menu > li > a {
    line-height: 20px;
  }
  .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-nav .open .dropdown-menu > li > a:focus {
    background-image: none;
  }
}
@media (min-width: 768px) {
  .navbar-nav {
    float: left;
    margin: 0;
  }
  .navbar-nav > li {
    float: left;
  }
  .navbar-nav > li > a {
    padding-top: 15px;
    padding-bottom: 15px;
  }
}
.navbar-form {
  padding: 10px 15px;
  margin-top: 8px;
  margin-right: -15px;
  margin-bottom: 8px;
  margin-left: -15px;
  border-top: 1px solid transparent;
  border-bottom: 1px solid transparent;
  -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, .1), 0 1px 0 rgba(255, 255, 255, .1);
          box-shadow: inset 0 1px 0 rgba(255, 255, 255, .1), 0 1px 0 rgba(255, 255, 255, .1);
}
@media (min-width: 768px) {
  .navbar-form .form-group {
    display: inline-block;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .form-control {
    display: inline-block;
    width: auto;
    vertical-align: middle;
  }
  .navbar-form .form-control-static {
    display: inline-block;
  }
  .navbar-form .input-group {
    display: inline-table;
    vertical-align: middle;
  }
  .navbar-form .input-group .input-group-addon,
  .navbar-form .input-group .input-group-btn,
  .navbar-form .input-group .form-control {
    width: auto;
  }
  .navbar-form .input-group > .form-control {
    width: 100%;
  }
  .navbar-form .control-label {
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .radio,
  .navbar-form .checkbox {
    display: inline-block;
    margin-top: 0;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .radio label,
  .navbar-form .checkbox label {
    padding-left: 0;
  }
  .navbar-form .radio input[type="radio"],
  .navbar-form .checkbox input[type="checkbox"] {
    position: relative;
    margin-left: 0;
  }
  .navbar-form .has-feedback .form-control-feedback {
    top: 0;
  }
}
@media (max-width: 767px) {
  .navbar-form .form-group {
    margin-bottom: 5px;
  }
  .navbar-form .form-group:last-child {
    margin-bottom: 0;
  }
}
@media (min-width: 768px) {
  .navbar-form {
    width: auto;
    padding-top: 0;
    padding-bottom: 0;
    margin-right: 0;
    margin-left: 0;
    border: 0;
    -webkit-box-shadow: none;
            box-shadow: none;
  }
}
.navbar-nav > li > .dropdown-menu {
  margin-top: 0;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
.navbar-fixed-bottom .navbar-nav > li > .dropdown-menu {
  margin-bottom: 0;
  border-top-left-radius: 4px;
  border-top-right-radius: 4px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.navbar-btn {
  margin-top: 8px;
  margin-bottom: 8px;
}
.navbar-btn.btn-sm {
  margin-top: 10px;
  margin-bottom: 10px;
}
.navbar-btn.btn-xs {
  margin-top: 14px;
  margin-bottom: 14px;
}
.navbar-text {
  margin-top: 15px;
  margin-bottom: 15px;
}
@media (min-width: 768px) {
  .navbar-text {
    float: left;
    margin-right: 15px;
    margin-left: 15px;
  }
}
@media (min-width: 768px) {
  .navbar-left {
    float: left !important;
  }
  .navbar-right {
    float: right !important;
    margin-right: -15px;
  }
  .navbar-right ~ .navbar-right {
    margin-right: 0;
  }
}
.navbar-default {
  background-color: #f8f8f8;
  border-color: #e7e7e7;
}
.navbar-default .navbar-brand {
  color: #777;
}
.navbar-default .navbar-brand:hover,
.navbar-default .navbar-brand:focus {
  color: #5e5e5e;
  background-color: transparent;
}
.navbar-default .navbar-text {
  color: #777;
}
.navbar-default .navbar-nav > li > a {
  color: #777;
}
.navbar-default .navbar-nav > li > a:hover,
.navbar-default .navbar-nav > li > a:focus {
  color: #333;
  background-color: transparent;
}
.navbar-default .navbar-nav > .active > a,
.navbar-default .navbar-nav > .active > a:hover,
.navbar-default .navbar-nav > .active > a:focus {
  color: #555;
  background-color: #e7e7e7;
}
.navbar-default .navbar-nav > .disabled > a,
.navbar-default .navbar-nav > .disabled > a:hover,
.navbar-default .navbar-nav > .disabled > a:focus {
  color: #ccc;
  background-color: transparent;
}
.navbar-default .navbar-toggle {
  border-color: #ddd;
}
.navbar-default .navbar-toggle:hover,
.navbar-default .navbar-toggle:focus {
  background-color: #ddd;
}
.navbar-default .navbar-toggle .icon-bar {
  background-color: #888;
}
.navbar-default .navbar-collapse,
.navbar-default .navbar-form {
  border-color: #e7e7e7;
}
.navbar-default .navbar-nav > .open > a,
.navbar-default .navbar-nav > .open > a:hover,
.navbar-default .navbar-nav > .open > a:focus {
  color: #555;
  background-color: #e7e7e7;
}
@media (max-width: 767px) {
  .navbar-default .navbar-nav .open .dropdown-menu > li > a {
    color: #777;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > li > a:focus {
    color: #333;
    background-color: transparent;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a,
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a:focus {
    color: #555;
    background-color: #e7e7e7;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a,
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a:focus {
    color: #ccc;
    background-color: transparent;
  }
}
.navbar-default .navbar-link {
  color: #777;
}
.navbar-default .navbar-link:hover {
  color: #333;
}
.navbar-default .btn-link {
  color: #777;
}
.navbar-default .btn-link:hover,
.navbar-default .btn-link:focus {
  color: #333;
}
.navbar-default .btn-link[disabled]:hover,
fieldset[disabled] .navbar-default .btn-link:hover,
.navbar-default .btn-link[disabled]:focus,
fieldset[disabled] .navbar-default .btn-link:focus {
  color: #ccc;
}
.navbar-inverse {
  background-color: #222;
  border-color: #080808;
}
.navbar-inverse .navbar-brand {
  color: #9d9d9d;
}
.navbar-inverse .navbar-brand:hover,
.navbar-inverse .navbar-brand:focus {
  color: #fff;
  background-color: transparent;
}
.navbar-inverse .navbar-text {
  color: #9d9d9d;
}
.navbar-inverse .navbar-nav > li > a {
  color: #9d9d9d;
}
.navbar-inverse .navbar-nav > li > a:hover,
.navbar-inverse .navbar-nav > li > a:focus {
  color: #fff;
  background-color: transparent;
}
.navbar-inverse .navbar-nav > .active > a,
.navbar-inverse .navbar-nav > .active > a:hover,
.navbar-inverse .navbar-nav > .active > a:focus {
  color: #fff;
  background-color: #080808;
}
.navbar-inverse .navbar-nav > .disabled > a,
.navbar-inverse .navbar-nav > .disabled > a:hover,
.navbar-inverse .navbar-nav > .disabled > a:focus {
  color: #444;
  background-color: transparent;
}
.navbar-inverse .navbar-toggle {
  border-color: #333;
}
.navbar-inverse .navbar-toggle:hover,
.navbar-inverse .navbar-toggle:focus {
  background-color: #333;
}
.navbar-inverse .navbar-toggle .icon-bar {
  background-color: #fff;
}
.navbar-inverse .navbar-collapse,
.navbar-inverse .navbar-form {
  border-color: #101010;
}
.navbar-inverse .navbar-nav > .open > a,
.navbar-inverse .navbar-nav > .open > a:hover,
.navbar-inverse .navbar-nav > .open > a:focus {
  color: #fff;
  background-color: #080808;
}
@media (max-width: 767px) {
  .navbar-inverse .navbar-nav .open .dropdown-menu > .dropdown-header {
    border-color: #080808;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu .divider {
    background-color: #080808;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a {
    color: #9d9d9d;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a:focus {
    color: #fff;
    background-color: transparent;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a:hover,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a:focus {
    color: #fff;
    background-color: #080808;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a:hover,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a:focus {
    color: #444;
    background-color: transparent;
  }
}
.navbar-inverse .navbar-link {
  color: #9d9d9d;
}
.navbar-inverse .navbar-link:hover {
  color: #fff;
}
.navbar-inverse .btn-link {
  color: #9d9d9d;
}
.navbar-inverse .btn-link:hover,
.navbar-inverse .btn-link:focus {
  color: #fff;
}
.navbar-inverse .btn-link[disabled]:hover,
fieldset[disabled] .navbar-inverse .btn-link:hover,
.navbar-inverse .btn-link[disabled]:focus,
fieldset[disabled] .navbar-inverse .btn-link:focus {
  color: #444;
}
.breadcrumb {
  padding: 8px 15px;
  margin-bottom: 20px;
  list-style: none;
  background-color: #f5f5f5;
  border-radius: 4px;
}
.breadcrumb > li {
  display: inline-block;
}
.breadcrumb > li + li:before {
  padding: 0 5px;
  color: #ccc;
  content: "/\00a0";
}
.breadcrumb > .active {
  color: #777;
}
.pagination {
  display: inline-block;
  padding-left: 0;
  margin: 20px 0;
  border-radius: 4px;
}
.pagination > li {
  display: inline;
}
.pagination > li > a,
.pagination > li > span {
  position: relative;
  float: left;
  padding: 6px 12px;
  margin-left: -1px;
  line-height: 1.42857143;
  color: #337ab7;
  text-decoration: none;
  background-color: #fff;
  border: 1px solid #ddd;
}
.pagination > li:first-child > a,
.pagination > li:first-child > span {
  margin-left: 0;
  border-top-left-radius: 4px;
  border-bottom-left-radius: 4px;
}
.pagination > li:last-child > a,
.pagination > li:last-child > span {
  border-top-right-radius: 4px;
  border-bottom-right-radius: 4px;
}
.pagination > li > a:hover,
.pagination > li > span:hover,
.pagination > li > a:focus,
.pagination > li > span:focus {
  z-index: 2;
  color: #23527c;
  background-color: #eee;
  border-color: #ddd;
}
.pagination > .active > a,
.pagination > .active > span,
.pagination > .active > a:hover,
.pagination > .active > span:hover,
.pagination > .active > a:focus,
.pagination > .active > span:focus {
  z-index: 3;
  color: #fff;
  cursor: default;
  background-color: #337ab7;
  border-color: #337ab7;
}
.pagination > .disabled > span,
.pagination > .disabled > span:hover,
.pagination > .disabled > span:focus,
.pagination > .disabled > a,
.pagination > .disabled > a:hover,
.pagination > .disabled > a:focus {
  color: #777;
  cursor: not-allowed;
  background-color: #fff;
  border-color: #ddd;
}
.pagination-lg > li > a,
.pagination-lg > li > span {
  padding: 10px 16px;
  font-size: 18px;
  line-height: 1.3333333;
}
.pagination-lg > li:first-child > a,
.pagination-lg > li:first-child > span {
  border-top-left-radius: 6px;
  border-bottom-left-radius: 6px;
}
.pagination-lg > li:last-child > a,
.pagination-lg > li:last-child > span {
  border-top-right-radius: 6px;
  border-bottom-right-radius: 6px;
}
.pagination-sm > li > a,
.pagination-sm > li > span {
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
}
.pagination-sm > li:first-child > a,
.pagination-sm > li:first-child > span {
  border-top-left-radius: 3px;
  border-bottom-left-radius: 3px;
}
.pagination-sm > li:last-child > a,
.pagination-sm > li:last-child > span {
  border-top-right-radius: 3px;
  border-bottom-right-radius: 3px;
}
.pager {
  padding-left: 0;
  margin: 20px 0;
  text-align: center;
  list-style: none;
}
.pager li {
  display: inline;
}
.pager li > a,
.pager li > span {
  display: inline-block;
  padding: 5px 14px;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 15px;
}
.pager li > a:hover,
.pager li > a:focus {
  text-decoration: none;
  background-color: #eee;
}
.pager .next > a,
.pager .next > span {
  float: right;
}
.pager .previous > a,
.pager .previous > span {
  float: left;
}
.pager .disabled > a,
.pager .disabled > a:hover,
.pager .disabled > a:focus,
.pager .disabled > span {
  color: #777;
  cursor: not-allowed;
  background-color: #fff;
}
.label {
  display: inline;
  padding: .2em .6em .3em;
  font-size: 75%;
  font-weight: bold;
  line-height: 1;
  color: #fff;
  text-align: center;
  white-space: nowrap;
  vertical-align: baseline;
  border-radius: .25em;
}
a.label:hover,
a.label:focus {
  color: #fff;
  text-decoration: none;
  cursor: pointer;
}
.label:empty {
  display: none;
}
.btn .label {
  position: relative;
  top: -1px;
}
.label-default {
  background-color: #777;
}
.label-default[href]:hover,
.label-default[href]:focus {
  background-color: #5e5e5e;
}
.label-primary {
  background-color: #337ab7;
}
.label-primary[href]:hover,
.label-primary[href]:focus {
  background-color: #286090;
}
.label-success {
  background-color: #5cb85c;
}
.label-success[href]:hover,
.label-success[href]:focus {
  background-color: #449d44;
}
.label-info {
  background-color: #5bc0de;
}
.label-info[href]:hover,
.label-info[href]:focus {
  background-color: #31b0d5;
}
.label-warning {
  background-color: #f0ad4e;
}
.label-warning[href]:hover,
.label-warning[href]:focus {
  background-color: #ec971f;
}
.label-danger {
  background-color: #d9534f;
}
.label-danger[href]:hover,
.label-danger[href]:focus {
  background-color: #c9302c;
}
.badge {
  display: inline-block;
  min-width: 10px;
  padding: 3px 7px;
  font-size: 12px;
  font-weight: bold;
  line-height: 1;
  color: #fff;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  background-color: #777;
  border-radius: 10px;
}
.badge:empty {
  display: none;
}
.btn .badge {
  position: relative;
  top: -1px;
}
.btn-xs .badge,
.btn-group-xs > .btn .badge {
  top: 0;
  padding: 1px 5px;
}
a.badge:hover,
a.badge:focus {
  color: #fff;
  text-decoration: none;
  cursor: pointer;
}
.list-group-item.active > .badge,
.nav-pills > .active > a > .badge {
  color: #337ab7;
  background-color: #fff;
}
.list-group-item > .badge {
  float: right;
}
.list-group-item > .badge + .badge {
  margin-right: 5px;
}
.nav-pills > li > a > .badge {
  margin-left: 3px;
}
.jumbotron {
  padding-top: 30px;
  padding-bottom: 30px;
  margin-bottom: 30px;
  color: inherit;
  background-color: #eee;
}
.jumbotron h1,
.jumbotron .h1 {
  color: inherit;
}
.jumbotron p {
  margin-bottom: 15px;
  font-size: 21px;
  font-weight: 200;
}
.jumbotron > hr {
  border-top-color: #d5d5d5;
}
.container .jumbotron,
.container-fluid .jumbotron {
  padding-right: 15px;
  padding-left: 15px;
  border-radius: 6px;
}
.jumbotron .container {
  max-width: 100%;
}
@media screen and (min-width: 768px) {
  .jumbotron {
    padding-top: 48px;
    padding-bottom: 48px;
  }
  .container .jumbotron,
  .container-fluid .jumbotron {
    padding-right: 60px;
    padding-left: 60px;
  }
  .jumbotron h1,
  .jumbotron .h1 {
    font-size: 63px;
  }
}
.thumbnail {
  display: block;
  padding: 4px;
  margin-bottom: 20px;
  line-height: 1.42857143;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 4px;
  -webkit-transition: border .2s ease-in-out;
       -o-transition: border .2s ease-in-out;
          transition: border .2s ease-in-out;
}
.thumbnail > img,
.thumbnail a > img {
  margin-right: auto;
  margin-left: auto;
}
a.thumbnail:hover,
a.thumbnail:focus,
a.thumbnail.active {
  border-color: #337ab7;
}
.thumbnail .caption {
  padding: 9px;
  color: #333;
}
.alert {
  padding: 15px;
  margin-bottom: 20px;
  border: 1px solid transparent;
  border-radius: 4px;
}
.alert h4 {
  margin-top: 0;
  color: inherit;
}
.alert .alert-link {
  font-weight: bold;
}
.alert > p,
.alert > ul {
  margin-bottom: 0;
}
.alert > p + p {
  margin-top: 5px;
}
.alert-dismissable,
.alert-dismissible {
  padding-right: 35px;
}
.alert-dismissable .close,
.alert-dismissible .close {
  position: relative;
  top: -2px;
  right: -21px;
  color: inherit;
}
.alert-success {
  color: #3c763d;
  background-color: #dff0d8;
  border-color: #d6e9c6;
}
.alert-success hr {
  border-top-color: #c9e2b3;
}
.alert-success .alert-link {
  color: #2b542c;
}
.alert-info {
  color: #31708f;
  background-color: #d9edf7;
  border-color: #bce8f1;
}
.alert-info hr {
  border-top-color: #a6e1ec;
}
.alert-info .alert-link {
  color: #245269;
}
.alert-warning {
  color: #8a6d3b;
  background-color: #fcf8e3;
  border-color: #faebcc;
}
.alert-warning hr {
  border-top-color: #f7e1b5;
}
.alert-warning .alert-link {
  color: #66512c;
}
.alert-danger {
  color: #a94442;
  background-color: #f2dede;
  border-color: #ebccd1;
}
.alert-danger hr {
  border-top-color: #e4b9c0;
}
.alert-danger .alert-link {
  color: #843534;
}
@-webkit-keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
@-o-keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
@keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
.progress {
  height: 20px;
  margin-bottom: 20px;
  overflow: hidden;
  background-color: #f5f5f5;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1);
          box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1);
}
.progress-bar {
  float: left;
  width: 0;
  height: 100%;
  font-size: 12px;
  line-height: 20px;
  color: #fff;
  text-align: center;
  background-color: #337ab7;
  -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .15);
          box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .15);
  -webkit-transition: width .6s ease;
       -o-transition: width .6s ease;
          transition: width .6s ease;
}
.progress-striped .progress-bar,
.progress-bar-striped {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:      -o-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:         linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  -webkit-background-size: 40px 40px;
          background-size: 40px 40px;
}
.progress.active .progress-bar,
.progress-bar.active {
  -webkit-animation: progress-bar-stripes 2s linear infinite;
       -o-animation: progress-bar-stripes 2s linear infinite;
          animation: progress-bar-stripes 2s linear infinite;
}
.progress-bar-success {
  background-color: #5cb85c;
}
.progress-striped .progress-bar-success {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:      -o-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:         linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
}
.progress-bar-info {
  background-color: #5bc0de;
}
.progress-striped .progress-bar-info {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:      -o-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:         linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
}
.progress-bar-warning {
  background-color: #f0ad4e;
}
.progress-striped .progress-bar-warning {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:      -o-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:         linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
}
.progress-bar-danger {
  background-color: #d9534f;
}
.progress-striped .progress-bar-danger {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:      -o-linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
  background-image:         linear-gradient(45deg, rgba(255, 255, 255, .15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, .15) 50%, rgba(255, 255, 255, .15) 75%, transparent 75%, transparent);
}
.media {
  margin-top: 15px;
}
.media:first-child {
  margin-top: 0;
}
.media,
.media-body {
  overflow: hidden;
  zoom: 1;
}
.media-body {
  width: 10000px;
}
.media-object {
  display: block;
}
.media-object.img-thumbnail {
  max-width: none;
}
.media-right,
.media > .pull-right {
  padding-left: 10px;
}
.media-left,
.media > .pull-left {
  padding-right: 10px;
}
.media-left,
.media-right,
.media-body {
  display: table-cell;
  vertical-align: top;
}
.media-middle {
  vertical-align: middle;
}
.media-bottom {
  vertical-align: bottom;
}
.media-heading {
  margin-top: 0;
  margin-bottom: 5px;
}
.media-list {
  padding-left: 0;
  list-style: none;
}
.list-group {
  padding-left: 0;
  margin-bottom: 20px;
}
.list-group-item {
  position: relative;
  display: block;
  padding: 10px 15px;
  margin-bottom: -1px;
  background-color: #fff;
  border: 1px solid #ddd;
}
.list-group-item:first-child {
  border-top-left-radius: 4px;
  border-top-right-radius: 4px;
}
.list-group-item:last-child {
  margin-bottom: 0;
  border-bottom-right-radius: 4px;
  border-bottom-left-radius: 4px;
}
a.list-group-item,
button.list-group-item {
  color: #555;
}
a.list-group-item .list-group-item-heading,
button.list-group-item .list-group-item-heading {
  color: #333;
}
a.list-group-item:hover,
button.list-group-item:hover,
a.list-group-item:focus,
button.list-group-item:focus {
  color: #555;
  text-decoration: none;
  background-color: #f5f5f5;
}
button.list-group-item {
  width: 100%;
  text-align: left;
}
.list-group-item.disabled,
.list-group-item.disabled:hover,
.list-group-item.disabled:focus {
  color: #777;
  cursor: not-allowed;
  background-color: #eee;
}
.list-group-item.disabled .list-group-item-heading,
.list-group-item.disabled:hover .list-group-item-heading,
.list-group-item.disabled:focus .list-group-item-heading {
  color: inherit;
}
.list-group-item.disabled .list-group-item-text,
.list-group-item.disabled:hover .list-group-item-text,
.list-group-item.disabled:focus .list-group-item-text {
  color: #777;
}
.list-group-item.active,
.list-group-item.active:hover,
.list-group-item.active:focus {
  z-index: 2;
  color: #fff;
  background-color: #337ab7;
  border-color: #337ab7;
}
.list-group-item.active .list-group-item-heading,
.list-group-item.active:hover .list-group-item-heading,
.list-group-item.active:focus .list-group-item-heading,
.list-group-item.active .list-group-item-heading > small,
.list-group-item.active:hover .list-group-item-heading > small,
.list-group-item.active:focus .list-group-item-heading > small,
.list-group-item.active .list-group-item-heading > .small,
.list-group-item.active:hover .list-group-item-heading > .small,
.list-group-item.active:focus .list-group-item-heading > .small {
  color: inherit;
}
.list-group-item.active .list-group-item-text,
.list-group-item.active:hover .list-group-item-text,
.list-group-item.active:focus .list-group-item-text {
  color: #c7ddef;
}
.list-group-item-success {
  color: #3c763d;
  background-color: #dff0d8;
}
a.list-group-item-success,
button.list-group-item-success {
  color: #3c763d;
}
a.list-group-item-success .list-group-item-heading,
button.list-group-item-success .list-group-item-heading {
  color: inherit;
}
a.list-group-item-success:hover,
button.list-group-item-success:hover,
a.list-group-item-success:focus,
button.list-group-item-success:focus {
  color: #3c763d;
  background-color: #d0e9c6;
}
a.list-group-item-success.active,
button.list-group-item-success.active,
a.list-group-item-success.active:hover,
button.list-group-item-success.active:hover,
a.list-group-item-success.active:focus,
button.list-group-item-success.active:focus {
  color: #fff;
  background-color: #3c763d;
  border-color: #3c763d;
}
.list-group-item-info {
  color: #31708f;
  background-color: #d9edf7;
}
a.list-group-item-info,
button.list-group-item-info {
  color: #31708f;
}
a.list-group-item-info .list-group-item-heading,
button.list-group-item-info .list-group-item-heading {
  color: inherit;
}
a.list-group-item-info:hover,
button.list-group-item-info:hover,
a.list-group-item-info:focus,
button.list-group-item-info:focus {
  color: #31708f;
  background-color: #c4e3f3;
}
a.list-group-item-info.active,
button.list-group-item-info.active,
a.list-group-item-info.active:hover,
button.list-group-item-info.active:hover,
a.list-group-item-info.active:focus,
button.list-group-item-info.active:focus {
  color: #fff;
  background-color: #31708f;
  border-color: #31708f;
}
.list-group-item-warning {
  color: #8a6d3b;
  background-color: #fcf8e3;
}
a.list-group-item-warning,
button.list-group-item-warning {
  color: #8a6d3b;
}
a.list-group-item-warning .list-group-item-heading,
button.list-group-item-warning .list-group-item-heading {
  color: inherit;
}
a.list-group-item-warning:hover,
button.list-group-item-warning:hover,
a.list-group-item-warning:focus,
button.list-group-item-warning:focus {
  color: #8a6d3b;
  background-color: #faf2cc;
}
a.list-group-item-warning.active,
button.list-group-item-warning.active,
a.list-group-item-warning.active:hover,
button.list-group-item-warning.active:hover,
a.list-group-item-warning.active:focus,
button.list-group-item-warning.active:focus {
  color: #fff;
  background-color: #8a6d3b;
  border-color: #8a6d3b;
}
.list-group-item-danger {
  color: #a94442;
  background-color: #f2dede;
}
a.list-group-item-danger,
button.list-group-item-danger {
  color: #a94442;
}
a.list-group-item-danger .list-group-item-heading,
button.list-group-item-danger .list-group-item-heading {
  color: inherit;
}
a.list-group-item-danger:hover,
button.list-group-item-danger:hover,
a.list-group-item-danger:focus,
button.list-group-item-danger:focus {
  color: #a94442;
  background-color: #ebcccc;
}
a.list-group-item-danger.active,
button.list-group-item-danger.active,
a.list-group-item-danger.active:hover,
button.list-group-item-danger.active:hover,
a.list-group-item-danger.active:focus,
button.list-group-item-danger.active:focus {
  color: #fff;
  background-color: #a94442;
  border-color: #a94442;
}
.list-group-item-heading {
  margin-top: 0;
  margin-bottom: 5px;
}
.list-group-item-text {
  margin-bottom: 0;
  line-height: 1.3;
}
.panel {
  margin-bottom: 20px;
  background-color: #fff;
  border: 1px solid transparent;
  border-radius: 4px;
  -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
          box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
}
.panel-body {
  padding: 15px;
}
.panel-heading {
  padding: 10px 15px;
  border-bottom: 1px solid transparent;
  border-top-left-radius: 3px;
  border-top-right-radius: 3px;
}
.panel-heading > .dropdown .dropdown-toggle {
  color: inherit;
}
.panel-title {
  margin-top: 0;
  margin-bottom: 0;
  font-size: 16px;
  color: inherit;
}
.panel-title > a,
.panel-title > small,
.panel-title > .small,
.panel-title > small > a,
.panel-title > .small > a {
  color: inherit;
}
.panel-footer {
  padding: 10px 15px;
  background-color: #f5f5f5;
  border-top: 1px solid #ddd;
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
}
.panel > .list-group,
.panel > .panel-collapse > .list-group {
  margin-bottom: 0;
}
.panel > .list-group .list-group-item,
.panel > .panel-collapse > .list-group .list-group-item {
  border-width: 1px 0;
  border-radius: 0;
}
.panel > .list-group:first-child .list-group-item:first-child,
.panel > .panel-collapse > .list-group:first-child .list-group-item:first-child {
  border-top: 0;
  border-top-left-radius: 3px;
  border-top-right-radius: 3px;
}
.panel > .list-group:last-child .list-group-item:last-child,
.panel > .panel-collapse > .list-group:last-child .list-group-item:last-child {
  border-bottom: 0;
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
}
.panel > .panel-heading + .panel-collapse > .list-group .list-group-item:first-child {
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
.panel-heading + .list-group .list-group-item:first-child {
  border-top-width: 0;
}
.list-group + .panel-footer {
  border-top-width: 0;
}
.panel > .table,
.panel > .table-responsive > .table,
.panel > .panel-collapse > .table {
  margin-bottom: 0;
}
.panel > .table caption,
.panel > .table-responsive > .table caption,
.panel > .panel-collapse > .table caption {
  padding-right: 15px;
  padding-left: 15px;
}
.panel > .table:first-child,
.panel > .table-responsive:first-child > .table:first-child {
  border-top-left-radius: 3px;
  border-top-right-radius: 3px;
}
.panel > .table:first-child > thead:first-child > tr:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child {
  border-top-left-radius: 3px;
  border-top-right-radius: 3px;
}
.panel > .table:first-child > thead:first-child > tr:first-child td:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child td:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child td:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child td:first-child,
.panel > .table:first-child > thead:first-child > tr:first-child th:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child th:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child th:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child th:first-child {
  border-top-left-radius: 3px;
}
.panel > .table:first-child > thead:first-child > tr:first-child td:last-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child td:last-child,
.panel > .table:first-child > tbody:first-child > tr:first-child td:last-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child td:last-child,
.panel > .table:first-child > thead:first-child > tr:first-child th:last-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child th:last-child,
.panel > .table:first-child > tbody:first-child > tr:first-child th:last-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child th:last-child {
  border-top-right-radius: 3px;
}
.panel > .table:last-child,
.panel > .table-responsive:last-child > .table:last-child {
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child {
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child td:first-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child td:first-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child td:first-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child td:first-child,
.panel > .table:last-child > tbody:last-child > tr:last-child th:first-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child th:first-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child th:first-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child th:first-child {
  border-bottom-left-radius: 3px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child td:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child td:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child td:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child td:last-child,
.panel > .table:last-child > tbody:last-child > tr:last-child th:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child th:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child th:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child th:last-child {
  border-bottom-right-radius: 3px;
}
.panel > .panel-body + .table,
.panel > .panel-body + .table-responsive,
.panel > .table + .panel-body,
.panel > .table-responsive + .panel-body {
  border-top: 1px solid #ddd;
}
.panel > .table > tbody:first-child > tr:first-child th,
.panel > .table > tbody:first-child > tr:first-child td {
  border-top: 0;
}
.panel > .table-bordered,
.panel > .table-responsive > .table-bordered {
  border: 0;
}
.panel > .table-bordered > thead > tr > th:first-child,
.panel > .table-responsive > .table-bordered > thead > tr > th:first-child,
.panel > .table-bordered > tbody > tr > th:first-child,
.panel > .table-responsive > .table-bordered > tbody > tr > th:first-child,
.panel > .table-bordered > tfoot > tr > th:first-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > th:first-child,
.panel > .table-bordered > thead > tr > td:first-child,
.panel > .table-responsive > .table-bordered > thead > tr > td:first-child,
.panel > .table-bordered > tbody > tr > td:first-child,
.panel > .table-responsive > .table-bordered > tbody > tr > td:first-child,
.panel > .table-bordered > tfoot > tr > td:first-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > td:first-child {
  border-left: 0;
}
.panel > .table-bordered > thead > tr > th:last-child,
.panel > .table-responsive > .table-bordered > thead > tr > th:last-child,
.panel > .table-bordered > tbody > tr > th:last-child,
.panel > .table-responsive > .table-bordered > tbody > tr > th:last-child,
.panel > .table-bordered > tfoot > tr > th:last-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > th:last-child,
.panel > .table-bordered > thead > tr > td:last-child,
.panel > .table-responsive > .table-bordered > thead > tr > td:last-child,
.panel > .table-bordered > tbody > tr > td:last-child,
.panel > .table-responsive > .table-bordered > tbody > tr > td:last-child,
.panel > .table-bordered > tfoot > tr > td:last-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > td:last-child {
  border-right: 0;
}
.panel > .table-bordered > thead > tr:first-child > td,
.panel > .table-responsive > .table-bordered > thead > tr:first-child > td,
.panel > .table-bordered > tbody > tr:first-child > td,
.panel > .table-responsive > .table-bordered > tbody > tr:first-child > td,
.panel > .table-bordered > thead > tr:first-child > th,
.panel > .table-responsive > .table-bordered > thead > tr:first-child > th,
.panel > .table-bordered > tbody > tr:first-child > th,
.panel > .table-responsive > .table-bordered > tbody > tr:first-child > th {
  border-bottom: 0;
}
.panel > .table-bordered > tbody > tr:last-child > td,
.panel > .table-responsive > .table-bordered > tbody > tr:last-child > td,
.panel > .table-bordered > tfoot > tr:last-child > td,
.panel > .table-responsive > .table-bordered > tfoot > tr:last-child > td,
.panel > .table-bordered > tbody > tr:last-child > th,
.panel > .table-responsive > .table-bordered > tbody > tr:last-child > th,
.panel > .table-bordered > tfoot > tr:last-child > th,
.panel > .table-responsive > .table-bordered > tfoot > tr:last-child > th {
  border-bottom: 0;
}
.panel > .table-responsive {
  margin-bottom: 0;
  border: 0;
}
.panel-group {
  margin-bottom: 20px;
}
.panel-group .panel {
  margin-bottom: 0;
  border-radius: 4px;
}
.panel-group .panel + .panel {
  margin-top: 5px;
}
.panel-group .panel-heading {
  border-bottom: 0;
}
.panel-group .panel-heading + .panel-collapse > .panel-body,
.panel-group .panel-heading + .panel-collapse > .list-group {
  border-top: 1px solid #ddd;
}
.panel-group .panel-footer {
  border-top: 0;
}
.panel-group .panel-footer + .panel-collapse .panel-body {
  border-bottom: 1px solid #ddd;
}
.panel-default {
  border-color: #ddd;
}
.panel-default > .panel-heading {
  color: #333;
  background-color: #f5f5f5;
  border-color: #ddd;
}
.panel-default > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #ddd;
}
.panel-default > .panel-heading .badge {
  color: #f5f5f5;
  background-color: #333;
}
.panel-default > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #ddd;
}
.panel-primary {
  border-color: #337ab7;
}
.panel-primary > .panel-heading {
  color: #fff;
  background-color: #337ab7;
  border-color: #337ab7;
}
.panel-primary > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #337ab7;
}
.panel-primary > .panel-heading .badge {
  color: #337ab7;
  background-color: #fff;
}
.panel-primary > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #337ab7;
}
.panel-success {
  border-color: #d6e9c6;
}
.panel-success > .panel-heading {
  color: #3c763d;
  background-color: #dff0d8;
  border-color: #d6e9c6;
}
.panel-success > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #d6e9c6;
}
.panel-success > .panel-heading .badge {
  color: #dff0d8;
  background-color: #3c763d;
}
.panel-success > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #d6e9c6;
}
.panel-info {
  border-color: #bce8f1;
}
.panel-info > .panel-heading {
  color: #31708f;
  background-color: #d9edf7;
  border-color: #bce8f1;
}
.panel-info > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #bce8f1;
}
.panel-info > .panel-heading .badge {
  color: #d9edf7;
  background-color: #31708f;
}
.panel-info > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #bce8f1;
}
.panel-warning {
  border-color: #faebcc;
}
.panel-warning > .panel-heading {
  color: #8a6d3b;
  background-color: #fcf8e3;
  border-color: #faebcc;
}
.panel-warning > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #faebcc;
}
.panel-warning > .panel-heading .badge {
  color: #fcf8e3;
  background-color: #8a6d3b;
}
.panel-warning > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #faebcc;
}
.panel-danger {
  border-color: #ebccd1;
}
.panel-danger > .panel-heading {
  color: #a94442;
  background-color: #f2dede;
  border-color: #ebccd1;
}
.panel-danger > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #ebccd1;
}
.panel-danger > .panel-heading .badge {
  color: #f2dede;
  background-color: #a94442;
}
.panel-danger > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #ebccd1;
}
.embed-responsive {
  position: relative;
  display: block;
  height: 0;
  padding: 0;
  overflow: hidden;
}
.embed-responsive .embed-responsive-item,
.embed-responsive iframe,
.embed-responsive embed,
.embed-responsive object,
.embed-responsive video {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border: 0;
}
.embed-responsive-16by9 {
  padding-bottom: 56.25%;
}
.embed-responsive-4by3 {
  padding-bottom: 75%;
}
.well {
  min-height: 20px;
  padding: 19px;
  margin-bottom: 20px;
  background-color: #f5f5f5;
  border: 1px solid #e3e3e3;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .05);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .05);
}
.well blockquote {
  border-color: #ddd;
  border-color: rgba(0, 0, 0, .15);
}
.well-lg {
  padding: 24px;
  border-radius: 6px;
}
.well-sm {
  padding: 9px;
  border-radius: 3px;
}
.close {
  float: right;
  font-size: 21px;
  font-weight: bold;
  line-height: 1;
  color: #000;
  text-shadow: 0 1px 0 #fff;
  filter: alpha(opacity=20);
  opacity: .2;
}
.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
  filter: alpha(opacity=50);
  opacity: .5;
}
button.close {
  -webkit-appearance: none;
  padding: 0;
  cursor: pointer;
  background: transparent;
  border: 0;
}
.modal-open {
  overflow: hidden;
}
.modal {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1050;
  display: none;
  overflow: hidden;
  -webkit-overflow-scrolling: touch;
  outline: 0;
}
.modal.fade .modal-dialog {
  -webkit-transition: -webkit-transform .3s ease-out;
       -o-transition:      -o-transform .3s ease-out;
          transition:         transform .3s ease-out;
  -webkit-transform: translate(0, -25%);
      -ms-transform: translate(0, -25%);
       -o-transform: translate(0, -25%);
          transform: translate(0, -25%);
}
.modal.in .modal-dialog {
  -webkit-transform: translate(0, 0);
      -ms-transform: translate(0, 0);
       -o-transform: translate(0, 0);
          transform: translate(0, 0);
}
.modal-open .modal {
  overflow-x: hidden;
  overflow-y: auto;
}
.modal-dialog {
  position: relative;
  width: auto;
  margin: 10px;
}
.modal-content {
  position: relative;
  background-color: #fff;
  -webkit-background-clip: padding-box;
          background-clip: padding-box;
  border: 1px solid #999;
  border: 1px solid rgba(0, 0, 0, .2);
  border-radius: 6px;
  outline: 0;
  -webkit-box-shadow: 0 3px 9px rgba(0, 0, 0, .5);
          box-shadow: 0 3px 9px rgba(0, 0, 0, .5);
}
.modal-backdrop {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1040;
  background-color: #000;
}
.modal-backdrop.fade {
  filter: alpha(opacity=0);
  opacity: 0;
}
.modal-backdrop.in {
  filter: alpha(opacity=50);
  opacity: .5;
}
.modal-header {
  padding: 15px;
  border-bottom: 1px solid #e5e5e5;
}
.modal-header .close {
  margin-top: -2px;
}
.modal-title {
  margin: 0;
  line-height: 1.42857143;
}
.modal-body {
  position: relative;
  padding: 15px;
}
.modal-footer {
  padding: 15px;
  text-align: right;
  border-top: 1px solid #e5e5e5;
}
.modal-footer .btn + .btn {
  margin-bottom: 0;
  margin-left: 5px;
}
.modal-footer .btn-group .btn + .btn {
  margin-left: -1px;
}
.modal-footer .btn-block + .btn-block {
  margin-left: 0;
}
.modal-scrollbar-measure {
  position: absolute;
  top: -9999px;
  width: 50px;
  height: 50px;
  overflow: scroll;
}
@media (min-width: 768px) {
  .modal-dialog {
    width: 600px;
    margin: 30px auto;
  }
  .modal-content {
    -webkit-box-shadow: 0 5px 15px rgba(0, 0, 0, .5);
            box-shadow: 0 5px 15px rgba(0, 0, 0, .5);
  }
  .modal-sm {
    width: 300px;
  }
}
@media (min-width: 992px) {
  .modal-lg {
    width: 900px;
  }
}
.tooltip {
  position: absolute;
  z-index: 1070;
  display: block;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 12px;
  font-style: normal;
  font-weight: normal;
  line-height: 1.42857143;
  text-align: left;
  text-align: start;
  text-decoration: none;
  text-shadow: none;
  text-transform: none;
  letter-spacing: normal;
  word-break: normal;
  word-spacing: normal;
  word-wrap: normal;
  white-space: normal;
  filter: alpha(opacity=0);
  opacity: 0;

  line-break: auto;
}
.tooltip.in {
  filter: alpha(opacity=90);
  opacity: .9;
}
.tooltip.top {
  padding: 5px 0;
  margin-top: -3px;
}
.tooltip.right {
  padding: 0 5px;
  margin-left: 3px;
}
.tooltip.bottom {
  padding: 5px 0;
  margin-top: 3px;
}
.tooltip.left {
  padding: 0 5px;
  margin-left: -3px;
}
.tooltip-inner {
  max-width: 200px;
  padding: 3px 8px;
  color: #fff;
  text-align: center;
  background-color: #000;
  border-radius: 4px;
}
.tooltip-arrow {
  position: absolute;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
}
.tooltip.top .tooltip-arrow {
  bottom: 0;
  left: 50%;
  margin-left: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
}
.tooltip.top-left .tooltip-arrow {
  right: 5px;
  bottom: 0;
  margin-bottom: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
}
.tooltip.top-right .tooltip-arrow {
  bottom: 0;
  left: 5px;
  margin-bottom: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
}
.tooltip.right .tooltip-arrow {
  top: 50%;
  left: 0;
  margin-top: -5px;
  border-width: 5px 5px 5px 0;
  border-right-color: #000;
}
.tooltip.left .tooltip-arrow {
  top: 50%;
  right: 0;
  margin-top: -5px;
  border-width: 5px 0 5px 5px;
  border-left-color: #000;
}
.tooltip.bottom .tooltip-arrow {
  top: 0;
  left: 50%;
  margin-left: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}
.tooltip.bottom-left .tooltip-arrow {
  top: 0;
  right: 5px;
  margin-top: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}
.tooltip.bottom-right .tooltip-arrow {
  top: 0;
  left: 5px;
  margin-top: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}
.popover {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 1060;
  display: none;
  max-width: 276px;
  padding: 1px;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 14px;
  font-style: normal;
  font-weight: normal;
  line-height: 1.42857143;
  text-align: left;
  text-align: start;
  text-decoration: none;
  text-shadow: none;
  text-transform: none;
  letter-spacing: normal;
  word-break: normal;
  word-spacing: normal;
  word-wrap: normal;
  white-space: normal;
  background-color: #fff;
  -webkit-background-clip: padding-box;
          background-clip: padding-box;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, .2);
  border-radius: 6px;
  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, .2);
          box-shadow: 0 5px 10px rgba(0, 0, 0, .2);

  line-break: auto;
}
.popover.top {
  margin-top: -10px;
}
.popover.right {
  margin-left: 10px;
}
.popover.bottom {
  margin-top: 10px;
}
.popover.left {
  margin-left: -10px;
}
.popover-title {
  padding: 8px 14px;
  margin: 0;
  font-size: 14px;
  background-color: #f7f7f7;
  border-bottom: 1px solid #ebebeb;
  border-radius: 5px 5px 0 0;
}
.popover-content {
  padding: 9px 14px;
}
.popover > .arrow,
.popover > .arrow:after {
  position: absolute;
  display: block;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
}
.popover > .arrow {
  border-width: 11px;
}
.popover > .arrow:after {
  content: "";
  border-width: 10px;
}
.popover.top > .arrow {
  bottom: -11px;
  left: 50%;
  margin-left: -11px;
  border-top-color: #999;
  border-top-color: rgba(0, 0, 0, .25);
  border-bottom-width: 0;
}
.popover.top > .arrow:after {
  bottom: 1px;
  margin-left: -10px;
  content: " ";
  border-top-color: #fff;
  border-bottom-width: 0;
}
.popover.right > .arrow {
  top: 50%;
  left: -11px;
  margin-top: -11px;
  border-right-color: #999;
  border-right-color: rgba(0, 0, 0, .25);
  border-left-width: 0;
}
.popover.right > .arrow:after {
  bottom: -10px;
  left: 1px;
  content: " ";
  border-right-color: #fff;
  border-left-width: 0;
}
.popover.bottom > .arrow {
  top: -11px;
  left: 50%;
  margin-left: -11px;
  border-top-width: 0;
  border-bottom-color: #999;
  border-bottom-color: rgba(0, 0, 0, .25);
}
.popover.bottom > .arrow:after {
  top: 1px;
  margin-left: -10px;
  content: " ";
  border-top-width: 0;
  border-bottom-color: #fff;
}
.popover.left > .arrow {
  top: 50%;
  right: -11px;
  margin-top: -11px;
  border-right-width: 0;
  border-left-color: #999;
  border-left-color: rgba(0, 0, 0, .25);
}
.popover.left > .arrow:after {
  right: 1px;
  bottom: -10px;
  content: " ";
  border-right-width: 0;
  border-left-color: #fff;
}
.carousel {
  position: relative;
}
.carousel-inner {
  position: relative;
  width: 100%;
  overflow: hidden;
}
.carousel-inner > .item {
  position: relative;
  display: none;
  -webkit-transition: .6s ease-in-out left;
       -o-transition: .6s ease-in-out left;
          transition: .6s ease-in-out left;
}
.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  line-height: 1;
}
@media all and (transform-3d), (-webkit-transform-3d) {
  .carousel-inner > .item {
    -webkit-transition: -webkit-transform .6s ease-in-out;
         -o-transition:      -o-transform .6s ease-in-out;
            transition:         transform .6s ease-in-out;

    -webkit-backface-visibility: hidden;
            backface-visibility: hidden;
    -webkit-perspective: 1000px;
            perspective: 1000px;
  }
  .carousel-inner > .item.next,
  .carousel-inner > .item.active.right {
    left: 0;
    -webkit-transform: translate3d(100%, 0, 0);
            transform: translate3d(100%, 0, 0);
  }
  .carousel-inner > .item.prev,
  .carousel-inner > .item.active.left {
    left: 0;
    -webkit-transform: translate3d(-100%, 0, 0);
            transform: translate3d(-100%, 0, 0);
  }
  .carousel-inner > .item.next.left,
  .carousel-inner > .item.prev.right,
  .carousel-inner > .item.active {
    left: 0;
    -webkit-transform: translate3d(0, 0, 0);
            transform: translate3d(0, 0, 0);
  }
}
.carousel-inner > .active,
.carousel-inner > .next,
.carousel-inner > .prev {
  display: block;
}
.carousel-inner > .active {
  left: 0;
}
.carousel-inner > .next,
.carousel-inner > .prev {
  position: absolute;
  top: 0;
  width: 100%;
}
.carousel-inner > .next {
  left: 100%;
}
.carousel-inner > .prev {
  left: -100%;
}
.carousel-inner > .next.left,
.carousel-inner > .prev.right {
  left: 0;
}
.carousel-inner > .active.left {
  left: -100%;
}
.carousel-inner > .active.right {
  left: 100%;
}
.carousel-control {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  width: 15%;
  font-size: 20px;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 2px rgba(0, 0, 0, .6);
  background-color: rgba(0, 0, 0, 0);
  filter: alpha(opacity=50);
  opacity: .5;
}
.carousel-control.left {
  background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, .5) 0%, rgba(0, 0, 0, .0001) 100%);
  background-image:      -o-linear-gradient(left, rgba(0, 0, 0, .5) 0%, rgba(0, 0, 0, .0001) 100%);
  background-image: -webkit-gradient(linear, left top, right top, from(rgba(0, 0, 0, .5)), to(rgba(0, 0, 0, .0001)));
  background-image:         linear-gradient(to right, rgba(0, 0, 0, .5) 0%, rgba(0, 0, 0, .0001) 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#80000000', endColorstr='#00000000', GradientType=1);
  background-repeat: repeat-x;
}
.carousel-control.right {
  right: 0;
  left: auto;
  background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, .0001) 0%, rgba(0, 0, 0, .5) 100%);
  background-image:      -o-linear-gradient(left, rgba(0, 0, 0, .0001) 0%, rgba(0, 0, 0, .5) 100%);
  background-image: -webkit-gradient(linear, left top, right top, from(rgba(0, 0, 0, .0001)), to(rgba(0, 0, 0, .5)));
  background-image:         linear-gradient(to right, rgba(0, 0, 0, .0001) 0%, rgba(0, 0, 0, .5) 100%);
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#00000000', endColorstr='#80000000', GradientType=1);
  background-repeat: repeat-x;
}
.carousel-control:hover,
.carousel-control:focus {
  color: #fff;
  text-decoration: none;
  filter: alpha(opacity=90);
  outline: 0;
  opacity: .9;
}
.carousel-control .icon-prev,
.carousel-control .icon-next,
.carousel-control .glyphicon-chevron-left,
.carousel-control .glyphicon-chevron-right {
  position: absolute;
  top: 50%;
  z-index: 5;
  display: inline-block;
  margin-top: -10px;
}
.carousel-control .icon-prev,
.carousel-control .glyphicon-chevron-left {
  left: 50%;
  margin-left: -10px;
}
.carousel-control .icon-next,
.carousel-control .glyphicon-chevron-right {
  right: 50%;
  margin-right: -10px;
}
.carousel-control .icon-prev,
.carousel-control .icon-next {
  width: 20px;
  height: 20px;
  font-family: serif;
  line-height: 1;
}
.carousel-control .icon-prev:before {
  content: '\2039';
}
.carousel-control .icon-next:before {
  content: '\203a';
}
.carousel-indicators {
  position: absolute;
  bottom: 10px;
  left: 50%;
  z-index: 15;
  width: 60%;
  padding-left: 0;
  margin-left: -30%;
  text-align: center;
  list-style: none;
}
.carousel-indicators li {
  display: inline-block;
  width: 10px;
  height: 10px;
  margin: 1px;
  text-indent: -999px;
  cursor: pointer;
  background-color: #000 \9;
  background-color: rgba(0, 0, 0, 0);
  border: 1px solid #fff;
  border-radius: 10px;
}
.carousel-indicators .active {
  width: 12px;
  height: 12px;
  margin: 0;
  background-color: #fff;
}
.carousel-caption {
  position: absolute;
  right: 15%;
  bottom: 20px;
  left: 15%;
  z-index: 10;
  padding-top: 20px;
  padding-bottom: 20px;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 2px rgba(0, 0, 0, .6);
}
.carousel-caption .btn {
  text-shadow: none;
}
@media screen and (min-width: 768px) {
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-prev,
  .carousel-control .icon-next {
    width: 30px;
    height: 30px;
    margin-top: -10px;
    font-size: 30px;
  }
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .icon-prev {
    margin-left: -10px;
  }
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-next {
    margin-right: -10px;
  }
  .carousel-caption {
    right: 20%;
    left: 20%;
    padding-bottom: 30px;
  }
  .carousel-indicators {
    bottom: 20px;
  }
}
.clearfix:before,
.clearfix:after,
.dl-horizontal dd:before,
.dl-horizontal dd:after,
.container:before,
.container:after,
.container-fluid:before,
.container-fluid:after,
.row:before,
.row:after,
.form-horizontal .form-group:before,
.form-horizontal .form-group:after,
.btn-toolbar:before,
.btn-toolbar:after,
.btn-group-vertical > .btn-group:before,
.btn-group-vertical > .btn-group:after,
.nav:before,
.nav:after,
.navbar:before,
.navbar:after,
.navbar-header:before,
.navbar-header:after,
.navbar-collapse:before,
.navbar-collapse:after,
.pager:before,
.pager:after,
.panel-body:before,
.panel-body:after,
.modal-header:before,
.modal-header:after,
.modal-footer:before,
.modal-footer:after {
  display: table;
  content: " ";
}
.clearfix:after,
.dl-horizontal dd:after,
.container:after,
.container-fluid:after,
.row:after,
.form-horizontal .form-group:after,
.btn-toolbar:after,
.btn-group-vertical > .btn-group:after,
.nav:after,
.navbar:after,
.navbar-header:after,
.navbar-collapse:after,
.pager:after,
.panel-body:after,
.modal-header:after,
.modal-footer:after {
  clear: both;
}
.center-block {
  display: block;
  margin-right: auto;
  margin-left: auto;
}
.pull-right {
  float: right !important;
}
.pull-left {
  float: left !important;
}
.hide {
  display: none !important;
}
.show {
  display: block !important;
}
.invisible {
  visibility: hidden;
}
.text-hide {
  font: 0/0 a;
  color: transparent;
  text-shadow: none;
  background-color: transparent;
  border: 0;
}
.hidden {
  display: none !important;
}
.affix {
  position: fixed;
}
@-ms-viewport {
  width: device-width;
}
.visible-xs,
.visible-sm,
.visible-md,
.visible-lg {
  display: none !important;
}
.visible-xs-block,
.visible-xs-inline,
.visible-xs-inline-block,
.visible-sm-block,
.visible-sm-inline,
.visible-sm-inline-block,
.visible-md-block,
.visible-md-inline,
.visible-md-inline-block,
.visible-lg-block,
.visible-lg-inline,
.visible-lg-inline-block {
  display: none !important;
}
@media (max-width: 767px) {
  .visible-xs {
    display: block !important;
  }
  table.visible-xs {
    display: table !important;
  }
  tr.visible-xs {
    display: table-row !important;
  }
  th.visible-xs,
  td.visible-xs {
    display: table-cell !important;
  }
}
@media (max-width: 767px) {
  .visible-xs-block {
    display: block !important;
  }
}
@media (max-width: 767px) {
  .visible-xs-inline {
    display: inline !important;
  }
}
@media (max-width: 767px) {
  .visible-xs-inline-block {
    display: inline-block !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm {
    display: block !important;
  }
  table.visible-sm {
    display: table !important;
  }
  tr.visible-sm {
    display: table-row !important;
  }
  th.visible-sm,
  td.visible-sm {
    display: table-cell !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-block {
    display: block !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-inline {
    display: inline !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-inline-block {
    display: inline-block !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md {
    display: block !important;
  }
  table.visible-md {
    display: table !important;
  }
  tr.visible-md {
    display: table-row !important;
  }
  th.visible-md,
  td.visible-md {
    display: table-cell !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-block {
    display: block !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-inline {
    display: inline !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-inline-block {
    display: inline-block !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg {
    display: block !important;
  }
  table.visible-lg {
    display: table !important;
  }
  tr.visible-lg {
    display: table-row !important;
  }
  th.visible-lg,
  td.visible-lg {
    display: table-cell !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg-block {
    display: block !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg-inline {
    display: inline !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg-inline-block {
    display: inline-block !important;
  }
}
@media (max-width: 767px) {
  .hidden-xs {
    display: none !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .hidden-sm {
    display: none !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .hidden-md {
    display: none !important;
  }
}
@media (min-width: 1200px) {
  .hidden-lg {
    display: none !important;
  }
}
.visible-print {
  display: none !important;
}
@media print {
  .visible-print {
    display: block !important;
  }
  table.visible-print {
    display: table !important;
  }
  tr.visible-print {
    display: table-row !important;
  }
  th.visible-print,
  td.visible-print {
    display: table-cell !important;
  }
}
.visible-print-block {
  display: none !important;
}
@media print {
  .visible-print-block {
    display: block !important;
  }
}
.visible-print-inline {
  display: none !important;
}
@media print {
  .visible-print-inline {
    display: inline !important;
  }
}
.visible-print-inline-block {
  display: none !important;
}
@media print {
  .visible-print-inline-block {
    display: inline-block !important;
  }
}
@media print {
  .hidden-print {
    display: none !important;
  }
}

/*File:~/custom/content/themes/Salon2020DESK/Styles/font-awesome.min.css*/
/*!
 *  Font Awesome 4.7.0 by @davegandy - http://fontawesome.io - @fontawesome
 *  License - http://fontawesome.io/license (Font: SIL OFL 1.1, CSS: MIT License)
 */@font-face{font-family:'FontAwesome';src:url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/fontawesome-webfont.eot?v=4.7.0');src:url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/fontawesome-webfont.eot?#iefix&v=4.7.0') format('embedded-opentype'),url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/fontawesome-webfont.woff2?v=4.7.0') format('woff2'),url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/fontawesome-webfont.woff?v=4.7.0') format('woff'),url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/fontawesome-webfont.ttf?v=4.7.0') format('truetype'),url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/fontawesome-webfont.svg?v=4.7.0#fontawesomeregular') format('svg');font-weight:normal;font-style:normal}.fa{display:inline-block;font:normal normal normal 14px/1 FontAwesome;font-size:inherit;text-rendering:auto;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.fa-lg{font-size:1.33333333em;line-height:.75em;vertical-align:-15%}.fa-2x{font-size:2em}.fa-3x{font-size:3em}.fa-4x{font-size:4em}.fa-5x{font-size:5em}.fa-fw{width:1.28571429em;text-align:center}.fa-ul{padding-left:0;margin-left:2.14285714em;list-style-type:none}.fa-ul>li{position:relative}.fa-li{position:absolute;left:-2.14285714em;width:2.14285714em;top:.14285714em;text-align:center}.fa-li.fa-lg{left:-1.85714286em}.fa-border{padding:.2em .25em .15em;border:solid .08em #eee;border-radius:.1em}.fa-pull-left{float:left}.fa-pull-right{float:right}.fa.fa-pull-left{margin-right:.3em}.fa.fa-pull-right{margin-left:.3em}.pull-right{float:right}.pull-left{float:left}.fa.pull-left{margin-right:.3em}.fa.pull-right{margin-left:.3em}.fa-spin{-webkit-animation:fa-spin 2s infinite linear;animation:fa-spin 2s infinite linear}.fa-pulse{-webkit-animation:fa-spin 1s infinite steps(8);animation:fa-spin 1s infinite steps(8)}@-webkit-keyframes fa-spin{0%{-webkit-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(359deg);transform:rotate(359deg)}}@keyframes fa-spin{0%{-webkit-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(359deg);transform:rotate(359deg)}}.fa-rotate-90{-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=1)";-webkit-transform:rotate(90deg);-ms-transform:rotate(90deg);transform:rotate(90deg)}.fa-rotate-180{-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=2)";-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg)}.fa-rotate-270{-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=3)";-webkit-transform:rotate(270deg);-ms-transform:rotate(270deg);transform:rotate(270deg)}.fa-flip-horizontal{-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=0, mirror=1)";-webkit-transform:scale(-1, 1);-ms-transform:scale(-1, 1);transform:scale(-1, 1)}.fa-flip-vertical{-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=2, mirror=1)";-webkit-transform:scale(1, -1);-ms-transform:scale(1, -1);transform:scale(1, -1)}:root .fa-rotate-90,:root .fa-rotate-180,:root .fa-rotate-270,:root .fa-flip-horizontal,:root .fa-flip-vertical{filter:none}.fa-stack{position:relative;display:inline-block;width:2em;height:2em;line-height:2em;vertical-align:middle}.fa-stack-1x,.fa-stack-2x{position:absolute;left:0;width:100%;text-align:center}.fa-stack-1x{line-height:inherit}.fa-stack-2x{font-size:2em}.fa-inverse{color:#fff}.fa-glass:before{content:"\f000"}.fa-music:before{content:"\f001"}.fa-search:before{content:"\f002"}.fa-envelope-o:before{content:"\f003"}.fa-heart:before{content:"\f004"}.fa-star:before{content:"\f005"}.fa-star-o:before{content:"\f006"}.fa-user:before{content:"\f007"}.fa-film:before{content:"\f008"}.fa-th-large:before{content:"\f009"}.fa-th:before{content:"\f00a"}.fa-th-list:before{content:"\f00b"}.fa-check:before{content:"\f00c"}.fa-remove:before,.fa-close:before,.fa-times:before{content:"\f00d"}.fa-search-plus:before{content:"\f00e"}.fa-search-minus:before{content:"\f010"}.fa-power-off:before{content:"\f011"}.fa-signal:before{content:"\f012"}.fa-gear:before,.fa-cog:before{content:"\f013"}.fa-trash-o:before{content:"\f014"}.fa-home:before{content:"\f015"}.fa-file-o:before{content:"\f016"}.fa-clock-o:before{content:"\f017"}.fa-road:before{content:"\f018"}.fa-download:before{content:"\f019"}.fa-arrow-circle-o-down:before{content:"\f01a"}.fa-arrow-circle-o-up:before{content:"\f01b"}.fa-inbox:before{content:"\f01c"}.fa-play-circle-o:before{content:"\f01d"}.fa-rotate-right:before,.fa-repeat:before{content:"\f01e"}.fa-refresh:before{content:"\f021"}.fa-list-alt:before{content:"\f022"}.fa-lock:before{content:"\f023"}.fa-flag:before{content:"\f024"}.fa-headphones:before{content:"\f025"}.fa-volume-off:before{content:"\f026"}.fa-volume-down:before{content:"\f027"}.fa-volume-up:before{content:"\f028"}.fa-qrcode:before{content:"\f029"}.fa-barcode:before{content:"\f02a"}.fa-tag:before{content:"\f02b"}.fa-tags:before{content:"\f02c"}.fa-book:before{content:"\f02d"}.fa-bookmark:before{content:"\f02e"}.fa-print:before{content:"\f02f"}.fa-camera:before{content:"\f030"}.fa-font:before{content:"\f031"}.fa-bold:before{content:"\f032"}.fa-italic:before{content:"\f033"}.fa-text-height:before{content:"\f034"}.fa-text-width:before{content:"\f035"}.fa-align-left:before{content:"\f036"}.fa-align-center:before{content:"\f037"}.fa-align-right:before{content:"\f038"}.fa-align-justify:before{content:"\f039"}.fa-list:before{content:"\f03a"}.fa-dedent:before,.fa-outdent:before{content:"\f03b"}.fa-indent:before{content:"\f03c"}.fa-video-camera:before{content:"\f03d"}.fa-photo:before,.fa-image:before,.fa-picture-o:before{content:"\f03e"}.fa-pencil:before{content:"\f040"}.fa-map-marker:before{content:"\f041"}.fa-adjust:before{content:"\f042"}.fa-tint:before{content:"\f043"}.fa-edit:before,.fa-pencil-square-o:before{content:"\f044"}.fa-share-square-o:before{content:"\f045"}.fa-check-square-o:before{content:"\f046"}.fa-arrows:before{content:"\f047"}.fa-step-backward:before{content:"\f048"}.fa-fast-backward:before{content:"\f049"}.fa-backward:before{content:"\f04a"}.fa-play:before{content:"\f04b"}.fa-pause:before{content:"\f04c"}.fa-stop:before{content:"\f04d"}.fa-forward:before{content:"\f04e"}.fa-fast-forward:before{content:"\f050"}.fa-step-forward:before{content:"\f051"}.fa-eject:before{content:"\f052"}.fa-chevron-left:before{content:"\f053"}.fa-chevron-right:before{content:"\f054"}.fa-plus-circle:before{content:"\f055"}.fa-minus-circle:before{content:"\f056"}.fa-times-circle:before{content:"\f057"}.fa-check-circle:before{content:"\f058"}.fa-question-circle:before{content:"\f059"}.fa-info-circle:before{content:"\f05a"}.fa-crosshairs:before{content:"\f05b"}.fa-times-circle-o:before{content:"\f05c"}.fa-check-circle-o:before{content:"\f05d"}.fa-ban:before{content:"\f05e"}.fa-arrow-left:before{content:"\f060"}.fa-arrow-right:before{content:"\f061"}.fa-arrow-up:before{content:"\f062"}.fa-arrow-down:before{content:"\f063"}.fa-mail-forward:before,.fa-share:before{content:"\f064"}.fa-expand:before{content:"\f065"}.fa-compress:before{content:"\f066"}.fa-plus:before{content:"\f067"}.fa-minus:before{content:"\f068"}.fa-asterisk:before{content:"\f069"}.fa-exclamation-circle:before{content:"\f06a"}.fa-gift:before{content:"\f06b"}.fa-leaf:before{content:"\f06c"}.fa-fire:before{content:"\f06d"}.fa-eye:before{content:"\f06e"}.fa-eye-slash:before{content:"\f070"}.fa-warning:before,.fa-exclamation-triangle:before{content:"\f071"}.fa-plane:before{content:"\f072"}.fa-calendar:before{content:"\f073"}.fa-random:before{content:"\f074"}.fa-comment:before{content:"\f075"}.fa-magnet:before{content:"\f076"}.fa-chevron-up:before{content:"\f077"}.fa-chevron-down:before{content:"\f078"}.fa-retweet:before{content:"\f079"}.fa-shopping-cart:before{content:"\f07a"}.fa-folder:before{content:"\f07b"}.fa-folder-open:before{content:"\f07c"}.fa-arrows-v:before{content:"\f07d"}.fa-arrows-h:before{content:"\f07e"}.fa-bar-chart-o:before,.fa-bar-chart:before{content:"\f080"}.fa-twitter-square:before{content:"\f081"}.fa-facebook-square:before{content:"\f082"}.fa-camera-retro:before{content:"\f083"}.fa-key:before{content:"\f084"}.fa-gears:before,.fa-cogs:before{content:"\f085"}.fa-comments:before{content:"\f086"}.fa-thumbs-o-up:before{content:"\f087"}.fa-thumbs-o-down:before{content:"\f088"}.fa-star-half:before{content:"\f089"}.fa-heart-o:before{content:"\f08a"}.fa-sign-out:before{content:"\f08b"}.fa-linkedin-square:before{content:"\f08c"}.fa-thumb-tack:before{content:"\f08d"}.fa-external-link:before{content:"\f08e"}.fa-sign-in:before{content:"\f090"}.fa-trophy:before{content:"\f091"}.fa-github-square:before{content:"\f092"}.fa-upload:before{content:"\f093"}.fa-lemon-o:before{content:"\f094"}.fa-phone:before{content:"\f095"}.fa-square-o:before{content:"\f096"}.fa-bookmark-o:before{content:"\f097"}.fa-phone-square:before{content:"\f098"}.fa-twitter:before{content:"\f099"}.fa-facebook-f:before,.fa-facebook:before{content:"\f09a"}.fa-github:before{content:"\f09b"}.fa-unlock:before{content:"\f09c"}.fa-credit-card:before{content:"\f09d"}.fa-feed:before,.fa-rss:before{content:"\f09e"}.fa-hdd-o:before{content:"\f0a0"}.fa-bullhorn:before{content:"\f0a1"}.fa-bell:before{content:"\f0f3"}.fa-certificate:before{content:"\f0a3"}.fa-hand-o-right:before{content:"\f0a4"}.fa-hand-o-left:before{content:"\f0a5"}.fa-hand-o-up:before{content:"\f0a6"}.fa-hand-o-down:before{content:"\f0a7"}.fa-arrow-circle-left:before{content:"\f0a8"}.fa-arrow-circle-right:before{content:"\f0a9"}.fa-arrow-circle-up:before{content:"\f0aa"}.fa-arrow-circle-down:before{content:"\f0ab"}.fa-globe:before{content:"\f0ac"}.fa-wrench:before{content:"\f0ad"}.fa-tasks:before{content:"\f0ae"}.fa-filter:before{content:"\f0b0"}.fa-briefcase:before{content:"\f0b1"}.fa-arrows-alt:before{content:"\f0b2"}.fa-group:before,.fa-users:before{content:"\f0c0"}.fa-chain:before,.fa-link:before{content:"\f0c1"}.fa-cloud:before{content:"\f0c2"}.fa-flask:before{content:"\f0c3"}.fa-cut:before,.fa-scissors:before{content:"\f0c4"}.fa-copy:before,.fa-files-o:before{content:"\f0c5"}.fa-paperclip:before{content:"\f0c6"}.fa-save:before,.fa-floppy-o:before{content:"\f0c7"}.fa-square:before{content:"\f0c8"}.fa-navicon:before,.fa-reorder:before,.fa-bars:before{content:"\f0c9"}.fa-list-ul:before{content:"\f0ca"}.fa-list-ol:before{content:"\f0cb"}.fa-strikethrough:before{content:"\f0cc"}.fa-underline:before{content:"\f0cd"}.fa-table:before{content:"\f0ce"}.fa-magic:before{content:"\f0d0"}.fa-truck:before{content:"\f0d1"}.fa-pinterest:before{content:"\f0d2"}.fa-pinterest-square:before{content:"\f0d3"}.fa-google-plus-square:before{content:"\f0d4"}.fa-google-plus:before{content:"\f0d5"}.fa-money:before{content:"\f0d6"}.fa-caret-down:before{content:"\f0d7"}.fa-caret-up:before{content:"\f0d8"}.fa-caret-left:before{content:"\f0d9"}.fa-caret-right:before{content:"\f0da"}.fa-columns:before{content:"\f0db"}.fa-unsorted:before,.fa-sort:before{content:"\f0dc"}.fa-sort-down:before,.fa-sort-desc:before{content:"\f0dd"}.fa-sort-up:before,.fa-sort-asc:before{content:"\f0de"}.fa-envelope:before{content:"\f0e0"}.fa-linkedin:before{content:"\f0e1"}.fa-rotate-left:before,.fa-undo:before{content:"\f0e2"}.fa-legal:before,.fa-gavel:before{content:"\f0e3"}.fa-dashboard:before,.fa-tachometer:before{content:"\f0e4"}.fa-comment-o:before{content:"\f0e5"}.fa-comments-o:before{content:"\f0e6"}.fa-flash:before,.fa-bolt:before{content:"\f0e7"}.fa-sitemap:before{content:"\f0e8"}.fa-umbrella:before{content:"\f0e9"}.fa-paste:before,.fa-clipboard:before{content:"\f0ea"}.fa-lightbulb-o:before{content:"\f0eb"}.fa-exchange:before{content:"\f0ec"}.fa-cloud-download:before{content:"\f0ed"}.fa-cloud-upload:before{content:"\f0ee"}.fa-user-md:before{content:"\f0f0"}.fa-stethoscope:before{content:"\f0f1"}.fa-suitcase:before{content:"\f0f2"}.fa-bell-o:before{content:"\f0a2"}.fa-coffee:before{content:"\f0f4"}.fa-cutlery:before{content:"\f0f5"}.fa-file-text-o:before{content:"\f0f6"}.fa-building-o:before{content:"\f0f7"}.fa-hospital-o:before{content:"\f0f8"}.fa-ambulance:before{content:"\f0f9"}.fa-medkit:before{content:"\f0fa"}.fa-fighter-jet:before{content:"\f0fb"}.fa-beer:before{content:"\f0fc"}.fa-h-square:before{content:"\f0fd"}.fa-plus-square:before{content:"\f0fe"}.fa-angle-double-left:before{content:"\f100"}.fa-angle-double-right:before{content:"\f101"}.fa-angle-double-up:before{content:"\f102"}.fa-angle-double-down:before{content:"\f103"}.fa-angle-left:before{content:"\f104"}.fa-angle-right:before{content:"\f105"}.fa-angle-up:before{content:"\f106"}.fa-angle-down:before{content:"\f107"}.fa-desktop:before{content:"\f108"}.fa-laptop:before{content:"\f109"}.fa-tablet:before{content:"\f10a"}.fa-mobile-phone:before,.fa-mobile:before{content:"\f10b"}.fa-circle-o:before{content:"\f10c"}.fa-quote-left:before{content:"\f10d"}.fa-quote-right:before{content:"\f10e"}.fa-spinner:before{content:"\f110"}.fa-circle:before{content:"\f111"}.fa-mail-reply:before,.fa-reply:before{content:"\f112"}.fa-github-alt:before{content:"\f113"}.fa-folder-o:before{content:"\f114"}.fa-folder-open-o:before{content:"\f115"}.fa-smile-o:before{content:"\f118"}.fa-frown-o:before{content:"\f119"}.fa-meh-o:before{content:"\f11a"}.fa-gamepad:before{content:"\f11b"}.fa-keyboard-o:before{content:"\f11c"}.fa-flag-o:before{content:"\f11d"}.fa-flag-checkered:before{content:"\f11e"}.fa-terminal:before{content:"\f120"}.fa-code:before{content:"\f121"}.fa-mail-reply-all:before,.fa-reply-all:before{content:"\f122"}.fa-star-half-empty:before,.fa-star-half-full:before,.fa-star-half-o:before{content:"\f123"}.fa-location-arrow:before{content:"\f124"}.fa-crop:before{content:"\f125"}.fa-code-fork:before{content:"\f126"}.fa-unlink:before,.fa-chain-broken:before{content:"\f127"}.fa-question:before{content:"\f128"}.fa-info:before{content:"\f129"}.fa-exclamation:before{content:"\f12a"}.fa-superscript:before{content:"\f12b"}.fa-subscript:before{content:"\f12c"}.fa-eraser:before{content:"\f12d"}.fa-puzzle-piece:before{content:"\f12e"}.fa-microphone:before{content:"\f130"}.fa-microphone-slash:before{content:"\f131"}.fa-shield:before{content:"\f132"}.fa-calendar-o:before{content:"\f133"}.fa-fire-extinguisher:before{content:"\f134"}.fa-rocket:before{content:"\f135"}.fa-maxcdn:before{content:"\f136"}.fa-chevron-circle-left:before{content:"\f137"}.fa-chevron-circle-right:before{content:"\f138"}.fa-chevron-circle-up:before{content:"\f139"}.fa-chevron-circle-down:before{content:"\f13a"}.fa-html5:before{content:"\f13b"}.fa-css3:before{content:"\f13c"}.fa-anchor:before{content:"\f13d"}.fa-unlock-alt:before{content:"\f13e"}.fa-bullseye:before{content:"\f140"}.fa-ellipsis-h:before{content:"\f141"}.fa-ellipsis-v:before{content:"\f142"}.fa-rss-square:before{content:"\f143"}.fa-play-circle:before{content:"\f144"}.fa-ticket:before{content:"\f145"}.fa-minus-square:before{content:"\f146"}.fa-minus-square-o:before{content:"\f147"}.fa-level-up:before{content:"\f148"}.fa-level-down:before{content:"\f149"}.fa-check-square:before{content:"\f14a"}.fa-pencil-square:before{content:"\f14b"}.fa-external-link-square:before{content:"\f14c"}.fa-share-square:before{content:"\f14d"}.fa-compass:before{content:"\f14e"}.fa-toggle-down:before,.fa-caret-square-o-down:before{content:"\f150"}.fa-toggle-up:before,.fa-caret-square-o-up:before{content:"\f151"}.fa-toggle-right:before,.fa-caret-square-o-right:before{content:"\f152"}.fa-euro:before,.fa-eur:before{content:"\f153"}.fa-gbp:before{content:"\f154"}.fa-dollar:before,.fa-usd:before{content:"\f155"}.fa-rupee:before,.fa-inr:before{content:"\f156"}.fa-cny:before,.fa-rmb:before,.fa-yen:before,.fa-jpy:before{content:"\f157"}.fa-ruble:before,.fa-rouble:before,.fa-rub:before{content:"\f158"}.fa-won:before,.fa-krw:before{content:"\f159"}.fa-bitcoin:before,.fa-btc:before{content:"\f15a"}.fa-file:before{content:"\f15b"}.fa-file-text:before{content:"\f15c"}.fa-sort-alpha-asc:before{content:"\f15d"}.fa-sort-alpha-desc:before{content:"\f15e"}.fa-sort-amount-asc:before{content:"\f160"}.fa-sort-amount-desc:before{content:"\f161"}.fa-sort-numeric-asc:before{content:"\f162"}.fa-sort-numeric-desc:before{content:"\f163"}.fa-thumbs-up:before{content:"\f164"}.fa-thumbs-down:before{content:"\f165"}.fa-youtube-square:before{content:"\f166"}.fa-youtube:before{content:"\f167"}.fa-xing:before{content:"\f168"}.fa-xing-square:before{content:"\f169"}.fa-youtube-play:before{content:"\f16a"}.fa-dropbox:before{content:"\f16b"}.fa-stack-overflow:before{content:"\f16c"}.fa-instagram:before{content:"\f16d"}.fa-flickr:before{content:"\f16e"}.fa-adn:before{content:"\f170"}.fa-bitbucket:before{content:"\f171"}.fa-bitbucket-square:before{content:"\f172"}.fa-tumblr:before{content:"\f173"}.fa-tumblr-square:before{content:"\f174"}.fa-long-arrow-down:before{content:"\f175"}.fa-long-arrow-up:before{content:"\f176"}.fa-long-arrow-left:before{content:"\f177"}.fa-long-arrow-right:before{content:"\f178"}.fa-apple:before{content:"\f179"}.fa-windows:before{content:"\f17a"}.fa-android:before{content:"\f17b"}.fa-linux:before{content:"\f17c"}.fa-dribbble:before{content:"\f17d"}.fa-skype:before{content:"\f17e"}.fa-foursquare:before{content:"\f180"}.fa-trello:before{content:"\f181"}.fa-female:before{content:"\f182"}.fa-male:before{content:"\f183"}.fa-gittip:before,.fa-gratipay:before{content:"\f184"}.fa-sun-o:before{content:"\f185"}.fa-moon-o:before{content:"\f186"}.fa-archive:before{content:"\f187"}.fa-bug:before{content:"\f188"}.fa-vk:before{content:"\f189"}.fa-weibo:before{content:"\f18a"}.fa-renren:before{content:"\f18b"}.fa-pagelines:before{content:"\f18c"}.fa-stack-exchange:before{content:"\f18d"}.fa-arrow-circle-o-right:before{content:"\f18e"}.fa-arrow-circle-o-left:before{content:"\f190"}.fa-toggle-left:before,.fa-caret-square-o-left:before{content:"\f191"}.fa-dot-circle-o:before{content:"\f192"}.fa-wheelchair:before{content:"\f193"}.fa-vimeo-square:before{content:"\f194"}.fa-turkish-lira:before,.fa-try:before{content:"\f195"}.fa-plus-square-o:before{content:"\f196"}.fa-space-shuttle:before{content:"\f197"}.fa-slack:before{content:"\f198"}.fa-envelope-square:before{content:"\f199"}.fa-wordpress:before{content:"\f19a"}.fa-openid:before{content:"\f19b"}.fa-institution:before,.fa-bank:before,.fa-university:before{content:"\f19c"}.fa-mortar-board:before,.fa-graduation-cap:before{content:"\f19d"}.fa-yahoo:before{content:"\f19e"}.fa-google:before{content:"\f1a0"}.fa-reddit:before{content:"\f1a1"}.fa-reddit-square:before{content:"\f1a2"}.fa-stumbleupon-circle:before{content:"\f1a3"}.fa-stumbleupon:before{content:"\f1a4"}.fa-delicious:before{content:"\f1a5"}.fa-digg:before{content:"\f1a6"}.fa-pied-piper-pp:before{content:"\f1a7"}.fa-pied-piper-alt:before{content:"\f1a8"}.fa-drupal:before{content:"\f1a9"}.fa-joomla:before{content:"\f1aa"}.fa-language:before{content:"\f1ab"}.fa-fax:before{content:"\f1ac"}.fa-building:before{content:"\f1ad"}.fa-child:before{content:"\f1ae"}.fa-paw:before{content:"\f1b0"}.fa-spoon:before{content:"\f1b1"}.fa-cube:before{content:"\f1b2"}.fa-cubes:before{content:"\f1b3"}.fa-behance:before{content:"\f1b4"}.fa-behance-square:before{content:"\f1b5"}.fa-steam:before{content:"\f1b6"}.fa-steam-square:before{content:"\f1b7"}.fa-recycle:before{content:"\f1b8"}.fa-automobile:before,.fa-car:before{content:"\f1b9"}.fa-cab:before,.fa-taxi:before{content:"\f1ba"}.fa-tree:before{content:"\f1bb"}.fa-spotify:before{content:"\f1bc"}.fa-deviantart:before{content:"\f1bd"}.fa-soundcloud:before{content:"\f1be"}.fa-database:before{content:"\f1c0"}.fa-file-pdf-o:before{content:"\f1c1"}.fa-file-word-o:before{content:"\f1c2"}.fa-file-excel-o:before{content:"\f1c3"}.fa-file-powerpoint-o:before{content:"\f1c4"}.fa-file-photo-o:before,.fa-file-picture-o:before,.fa-file-image-o:before{content:"\f1c5"}.fa-file-zip-o:before,.fa-file-archive-o:before{content:"\f1c6"}.fa-file-sound-o:before,.fa-file-audio-o:before{content:"\f1c7"}.fa-file-movie-o:before,.fa-file-video-o:before{content:"\f1c8"}.fa-file-code-o:before{content:"\f1c9"}.fa-vine:before{content:"\f1ca"}.fa-codepen:before{content:"\f1cb"}.fa-jsfiddle:before{content:"\f1cc"}.fa-life-bouy:before,.fa-life-buoy:before,.fa-life-saver:before,.fa-support:before,.fa-life-ring:before{content:"\f1cd"}.fa-circle-o-notch:before{content:"\f1ce"}.fa-ra:before,.fa-resistance:before,.fa-rebel:before{content:"\f1d0"}.fa-ge:before,.fa-empire:before{content:"\f1d1"}.fa-git-square:before{content:"\f1d2"}.fa-git:before{content:"\f1d3"}.fa-y-combinator-square:before,.fa-yc-square:before,.fa-hacker-news:before{content:"\f1d4"}.fa-tencent-weibo:before{content:"\f1d5"}.fa-qq:before{content:"\f1d6"}.fa-wechat:before,.fa-weixin:before{content:"\f1d7"}.fa-send:before,.fa-paper-plane:before{content:"\f1d8"}.fa-send-o:before,.fa-paper-plane-o:before{content:"\f1d9"}.fa-history:before{content:"\f1da"}.fa-circle-thin:before{content:"\f1db"}.fa-header:before{content:"\f1dc"}.fa-paragraph:before{content:"\f1dd"}.fa-sliders:before{content:"\f1de"}.fa-share-alt:before{content:"\f1e0"}.fa-share-alt-square:before{content:"\f1e1"}.fa-bomb:before{content:"\f1e2"}.fa-soccer-ball-o:before,.fa-futbol-o:before{content:"\f1e3"}.fa-tty:before{content:"\f1e4"}.fa-binoculars:before{content:"\f1e5"}.fa-plug:before{content:"\f1e6"}.fa-slideshare:before{content:"\f1e7"}.fa-twitch:before{content:"\f1e8"}.fa-yelp:before{content:"\f1e9"}.fa-newspaper-o:before{content:"\f1ea"}.fa-wifi:before{content:"\f1eb"}.fa-calculator:before{content:"\f1ec"}.fa-paypal:before{content:"\f1ed"}.fa-google-wallet:before{content:"\f1ee"}.fa-cc-visa:before{content:"\f1f0"}.fa-cc-mastercard:before{content:"\f1f1"}.fa-cc-discover:before{content:"\f1f2"}.fa-cc-amex:before{content:"\f1f3"}.fa-cc-paypal:before{content:"\f1f4"}.fa-cc-stripe:before{content:"\f1f5"}.fa-bell-slash:before{content:"\f1f6"}.fa-bell-slash-o:before{content:"\f1f7"}.fa-trash:before{content:"\f1f8"}.fa-copyright:before{content:"\f1f9"}.fa-at:before{content:"\f1fa"}.fa-eyedropper:before{content:"\f1fb"}.fa-paint-brush:before{content:"\f1fc"}.fa-birthday-cake:before{content:"\f1fd"}.fa-area-chart:before{content:"\f1fe"}.fa-pie-chart:before{content:"\f200"}.fa-line-chart:before{content:"\f201"}.fa-lastfm:before{content:"\f202"}.fa-lastfm-square:before{content:"\f203"}.fa-toggle-off:before{content:"\f204"}.fa-toggle-on:before{content:"\f205"}.fa-bicycle:before{content:"\f206"}.fa-bus:before{content:"\f207"}.fa-ioxhost:before{content:"\f208"}.fa-angellist:before{content:"\f209"}.fa-cc:before{content:"\f20a"}.fa-shekel:before,.fa-sheqel:before,.fa-ils:before{content:"\f20b"}.fa-meanpath:before{content:"\f20c"}.fa-buysellads:before{content:"\f20d"}.fa-connectdevelop:before{content:"\f20e"}.fa-dashcube:before{content:"\f210"}.fa-forumbee:before{content:"\f211"}.fa-leanpub:before{content:"\f212"}.fa-sellsy:before{content:"\f213"}.fa-shirtsinbulk:before{content:"\f214"}.fa-simplybuilt:before{content:"\f215"}.fa-skyatlas:before{content:"\f216"}.fa-cart-plus:before{content:"\f217"}.fa-cart-arrow-down:before{content:"\f218"}.fa-diamond:before{content:"\f219"}.fa-ship:before{content:"\f21a"}.fa-user-secret:before{content:"\f21b"}.fa-motorcycle:before{content:"\f21c"}.fa-street-view:before{content:"\f21d"}.fa-heartbeat:before{content:"\f21e"}.fa-venus:before{content:"\f221"}.fa-mars:before{content:"\f222"}.fa-mercury:before{content:"\f223"}.fa-intersex:before,.fa-transgender:before{content:"\f224"}.fa-transgender-alt:before{content:"\f225"}.fa-venus-double:before{content:"\f226"}.fa-mars-double:before{content:"\f227"}.fa-venus-mars:before{content:"\f228"}.fa-mars-stroke:before{content:"\f229"}.fa-mars-stroke-v:before{content:"\f22a"}.fa-mars-stroke-h:before{content:"\f22b"}.fa-neuter:before{content:"\f22c"}.fa-genderless:before{content:"\f22d"}.fa-facebook-official:before{content:"\f230"}.fa-pinterest-p:before{content:"\f231"}.fa-whatsapp:before{content:"\f232"}.fa-server:before{content:"\f233"}.fa-user-plus:before{content:"\f234"}.fa-user-times:before{content:"\f235"}.fa-hotel:before,.fa-bed:before{content:"\f236"}.fa-viacoin:before{content:"\f237"}.fa-train:before{content:"\f238"}.fa-subway:before{content:"\f239"}.fa-medium:before{content:"\f23a"}.fa-yc:before,.fa-y-combinator:before{content:"\f23b"}.fa-optin-monster:before{content:"\f23c"}.fa-opencart:before{content:"\f23d"}.fa-expeditedssl:before{content:"\f23e"}.fa-battery-4:before,.fa-battery:before,.fa-battery-full:before{content:"\f240"}.fa-battery-3:before,.fa-battery-three-quarters:before{content:"\f241"}.fa-battery-2:before,.fa-battery-half:before{content:"\f242"}.fa-battery-1:before,.fa-battery-quarter:before{content:"\f243"}.fa-battery-0:before,.fa-battery-empty:before{content:"\f244"}.fa-mouse-pointer:before{content:"\f245"}.fa-i-cursor:before{content:"\f246"}.fa-object-group:before{content:"\f247"}.fa-object-ungroup:before{content:"\f248"}.fa-sticky-note:before{content:"\f249"}.fa-sticky-note-o:before{content:"\f24a"}.fa-cc-jcb:before{content:"\f24b"}.fa-cc-diners-club:before{content:"\f24c"}.fa-clone:before{content:"\f24d"}.fa-balance-scale:before{content:"\f24e"}.fa-hourglass-o:before{content:"\f250"}.fa-hourglass-1:before,.fa-hourglass-start:before{content:"\f251"}.fa-hourglass-2:before,.fa-hourglass-half:before{content:"\f252"}.fa-hourglass-3:before,.fa-hourglass-end:before{content:"\f253"}.fa-hourglass:before{content:"\f254"}.fa-hand-grab-o:before,.fa-hand-rock-o:before{content:"\f255"}.fa-hand-stop-o:before,.fa-hand-paper-o:before{content:"\f256"}.fa-hand-scissors-o:before{content:"\f257"}.fa-hand-lizard-o:before{content:"\f258"}.fa-hand-spock-o:before{content:"\f259"}.fa-hand-pointer-o:before{content:"\f25a"}.fa-hand-peace-o:before{content:"\f25b"}.fa-trademark:before{content:"\f25c"}.fa-registered:before{content:"\f25d"}.fa-creative-commons:before{content:"\f25e"}.fa-gg:before{content:"\f260"}.fa-gg-circle:before{content:"\f261"}.fa-tripadvisor:before{content:"\f262"}.fa-odnoklassniki:before{content:"\f263"}.fa-odnoklassniki-square:before{content:"\f264"}.fa-get-pocket:before{content:"\f265"}.fa-wikipedia-w:before{content:"\f266"}.fa-safari:before{content:"\f267"}.fa-chrome:before{content:"\f268"}.fa-firefox:before{content:"\f269"}.fa-opera:before{content:"\f26a"}.fa-internet-explorer:before{content:"\f26b"}.fa-tv:before,.fa-television:before{content:"\f26c"}.fa-contao:before{content:"\f26d"}.fa-500px:before{content:"\f26e"}.fa-amazon:before{content:"\f270"}.fa-calendar-plus-o:before{content:"\f271"}.fa-calendar-minus-o:before{content:"\f272"}.fa-calendar-times-o:before{content:"\f273"}.fa-calendar-check-o:before{content:"\f274"}.fa-industry:before{content:"\f275"}.fa-map-pin:before{content:"\f276"}.fa-map-signs:before{content:"\f277"}.fa-map-o:before{content:"\f278"}.fa-map:before{content:"\f279"}.fa-commenting:before{content:"\f27a"}.fa-commenting-o:before{content:"\f27b"}.fa-houzz:before{content:"\f27c"}.fa-vimeo:before{content:"\f27d"}.fa-black-tie:before{content:"\f27e"}.fa-fonticons:before{content:"\f280"}.fa-reddit-alien:before{content:"\f281"}.fa-edge:before{content:"\f282"}.fa-credit-card-alt:before{content:"\f283"}.fa-codiepie:before{content:"\f284"}.fa-modx:before{content:"\f285"}.fa-fort-awesome:before{content:"\f286"}.fa-usb:before{content:"\f287"}.fa-product-hunt:before{content:"\f288"}.fa-mixcloud:before{content:"\f289"}.fa-scribd:before{content:"\f28a"}.fa-pause-circle:before{content:"\f28b"}.fa-pause-circle-o:before{content:"\f28c"}.fa-stop-circle:before{content:"\f28d"}.fa-stop-circle-o:before{content:"\f28e"}.fa-shopping-bag:before{content:"\f290"}.fa-shopping-basket:before{content:"\f291"}.fa-hashtag:before{content:"\f292"}.fa-bluetooth:before{content:"\f293"}.fa-bluetooth-b:before{content:"\f294"}.fa-percent:before{content:"\f295"}.fa-gitlab:before{content:"\f296"}.fa-wpbeginner:before{content:"\f297"}.fa-wpforms:before{content:"\f298"}.fa-envira:before{content:"\f299"}.fa-universal-access:before{content:"\f29a"}.fa-wheelchair-alt:before{content:"\f29b"}.fa-question-circle-o:before{content:"\f29c"}.fa-blind:before{content:"\f29d"}.fa-audio-description:before{content:"\f29e"}.fa-volume-control-phone:before{content:"\f2a0"}.fa-braille:before{content:"\f2a1"}.fa-assistive-listening-systems:before{content:"\f2a2"}.fa-asl-interpreting:before,.fa-american-sign-language-interpreting:before{content:"\f2a3"}.fa-deafness:before,.fa-hard-of-hearing:before,.fa-deaf:before{content:"\f2a4"}.fa-glide:before{content:"\f2a5"}.fa-glide-g:before{content:"\f2a6"}.fa-signing:before,.fa-sign-language:before{content:"\f2a7"}.fa-low-vision:before{content:"\f2a8"}.fa-viadeo:before{content:"\f2a9"}.fa-viadeo-square:before{content:"\f2aa"}.fa-snapchat:before{content:"\f2ab"}.fa-snapchat-ghost:before{content:"\f2ac"}.fa-snapchat-square:before{content:"\f2ad"}.fa-pied-piper:before{content:"\f2ae"}.fa-first-order:before{content:"\f2b0"}.fa-yoast:before{content:"\f2b1"}.fa-themeisle:before{content:"\f2b2"}.fa-google-plus-circle:before,.fa-google-plus-official:before{content:"\f2b3"}.fa-fa:before,.fa-font-awesome:before{content:"\f2b4"}.fa-handshake-o:before{content:"\f2b5"}.fa-envelope-open:before{content:"\f2b6"}.fa-envelope-open-o:before{content:"\f2b7"}.fa-linode:before{content:"\f2b8"}.fa-address-book:before{content:"\f2b9"}.fa-address-book-o:before{content:"\f2ba"}.fa-vcard:before,.fa-address-card:before{content:"\f2bb"}.fa-vcard-o:before,.fa-address-card-o:before{content:"\f2bc"}.fa-user-circle:before{content:"\f2bd"}.fa-user-circle-o:before{content:"\f2be"}.fa-user-o:before{content:"\f2c0"}.fa-id-badge:before{content:"\f2c1"}.fa-drivers-license:before,.fa-id-card:before{content:"\f2c2"}.fa-drivers-license-o:before,.fa-id-card-o:before{content:"\f2c3"}.fa-quora:before{content:"\f2c4"}.fa-free-code-camp:before{content:"\f2c5"}.fa-telegram:before{content:"\f2c6"}.fa-thermometer-4:before,.fa-thermometer:before,.fa-thermometer-full:before{content:"\f2c7"}.fa-thermometer-3:before,.fa-thermometer-three-quarters:before{content:"\f2c8"}.fa-thermometer-2:before,.fa-thermometer-half:before{content:"\f2c9"}.fa-thermometer-1:before,.fa-thermometer-quarter:before{content:"\f2ca"}.fa-thermometer-0:before,.fa-thermometer-empty:before{content:"\f2cb"}.fa-shower:before{content:"\f2cc"}.fa-bathtub:before,.fa-s15:before,.fa-bath:before{content:"\f2cd"}.fa-podcast:before{content:"\f2ce"}.fa-window-maximize:before{content:"\f2d0"}.fa-window-minimize:before{content:"\f2d1"}.fa-window-restore:before{content:"\f2d2"}.fa-times-rectangle:before,.fa-window-close:before{content:"\f2d3"}.fa-times-rectangle-o:before,.fa-window-close-o:before{content:"\f2d4"}.fa-bandcamp:before{content:"\f2d5"}.fa-grav:before{content:"\f2d6"}.fa-etsy:before{content:"\f2d7"}.fa-imdb:before{content:"\f2d8"}.fa-ravelry:before{content:"\f2d9"}.fa-eercast:before{content:"\f2da"}.fa-microchip:before{content:"\f2db"}.fa-snowflake-o:before{content:"\f2dc"}.fa-superpowers:before{content:"\f2dd"}.fa-wpexplorer:before{content:"\f2de"}.fa-meetup:before{content:"\f2e0"}.sr-only{position:absolute;width:1px;height:1px;padding:0;margin:-1px;overflow:hidden;clip:rect(0, 0, 0, 0);border:0}.sr-only-focusable:active,.sr-only-focusable:focus{position:static;width:auto;height:auto;margin:0;overflow:visible;clip:auto}

/*File:~/custom/content/themes/Salon2020DESK/Styles/jquery-ui.min.css*/
/*! jQuery UI - v1.12.1 - 2018-03-08
* http://jqueryui.com
* Includes: core.css, slider.css, theme.css
* To view and modify this theme, visit http://jqueryui.com/themeroller/?scope=&folderName=base&cornerRadiusShadow=8px&offsetLeftShadow=0px&offsetTopShadow=0px&thicknessShadow=5px&opacityShadow=30&bgImgOpacityShadow=0&bgTextureShadow=flat&bgColorShadow=666666&opacityOverlay=30&bgImgOpacityOverlay=0&bgTextureOverlay=flat&bgColorOverlay=aaaaaa&iconColorError=cc0000&fcError=5f3f3f&borderColorError=f1a899&bgTextureError=flat&bgColorError=fddfdf&iconColorHighlight=777620&fcHighlight=777620&borderColorHighlight=dad55e&bgTextureHighlight=flat&bgColorHighlight=fffa90&iconColorActive=ffffff&fcActive=ffffff&borderColorActive=003eff&bgTextureActive=flat&bgColorActive=007fff&iconColorHover=555555&fcHover=2b2b2b&borderColorHover=cccccc&bgTextureHover=flat&bgColorHover=ededed&iconColorDefault=777777&fcDefault=454545&borderColorDefault=c5c5c5&bgTextureDefault=flat&bgColorDefault=f6f6f6&iconColorContent=444444&fcContent=333333&borderColorContent=dddddd&bgTextureContent=flat&bgColorContent=ffffff&iconColorHeader=444444&fcHeader=333333&borderColorHeader=dddddd&bgTextureHeader=flat&bgColorHeader=e9e9e9&cornerRadius=3px&fwDefault=normal&fsDefault=1em&ffDefault=Arial%2CHelvetica%2Csans-serif
* Copyright jQuery Foundation and other contributors; Licensed MIT */

.ui-helper-hidden{display:none}.ui-helper-hidden-accessible{border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.ui-helper-reset{margin:0;padding:0;border:0;outline:0;line-height:1.3;text-decoration:none;font-size:100%;list-style:none}.ui-helper-clearfix:before,.ui-helper-clearfix:after{content:"";display:table;border-collapse:collapse}.ui-helper-clearfix:after{clear:both}.ui-helper-zfix{width:100%;height:100%;top:0;left:0;position:absolute;opacity:0;filter:Alpha(Opacity=0)}.ui-front{z-index:100}.ui-state-disabled{cursor:default!important;pointer-events:none}.ui-icon{display:inline-block;vertical-align:middle;margin-top:-.25em;position:relative;text-indent:-99999px;overflow:hidden;background-repeat:no-repeat}.ui-widget-icon-block{left:50%;margin-left:-8px;display:block}.ui-widget-overlay{position:fixed;top:0;left:0;width:100%;height:100%}.ui-slider{position:relative;text-align:left}.ui-slider .ui-slider-handle{position:absolute;z-index:2;width:1.2em;height:1.2em;cursor:default;-ms-touch-action:none;touch-action:none}.ui-slider .ui-slider-range{position:absolute;z-index:1;font-size:.7em;display:block;border:0;background-position:0 0}.ui-slider.ui-state-disabled .ui-slider-handle,.ui-slider.ui-state-disabled .ui-slider-range{filter:inherit}.ui-slider-horizontal{height:.8em}.ui-slider-horizontal .ui-slider-handle{top:-.3em;margin-left:-.6em}.ui-slider-horizontal .ui-slider-range{top:0;height:100%}.ui-slider-horizontal .ui-slider-range-min{left:0}.ui-slider-horizontal .ui-slider-range-max{right:0}.ui-slider-vertical{width:.8em;height:100px}.ui-slider-vertical .ui-slider-handle{left:-.3em;margin-left:0;margin-bottom:-.6em}.ui-slider-vertical .ui-slider-range{left:0;width:100%}.ui-slider-vertical .ui-slider-range-min{bottom:0}.ui-slider-vertical .ui-slider-range-max{top:0}.ui-widget{font-family:Arial,Helvetica,sans-serif;font-size:1em}.ui-widget .ui-widget{font-size:1em}.ui-widget input,.ui-widget select,.ui-widget textarea,.ui-widget button{font-family:Arial,Helvetica,sans-serif;font-size:1em}.ui-widget.ui-widget-content{border:1px solid #c5c5c5}.ui-widget-content{border:1px solid #ddd;background:#fff;color:#333}.ui-widget-content a{color:#333}.ui-widget-header{border:1px solid #ddd;background:#e9e9e9;color:#333;font-weight:bold}.ui-widget-header a{color:#333}.ui-state-default,.ui-widget-content .ui-state-default,.ui-widget-header .ui-state-default,.ui-button,html .ui-button.ui-state-disabled:hover,html .ui-button.ui-state-disabled:active{border:1px solid #c5c5c5;background:#f6f6f6;font-weight:normal;color:#454545}.ui-state-default a,.ui-state-default a:link,.ui-state-default a:visited,a.ui-button,a:link.ui-button,a:visited.ui-button,.ui-button{color:#454545;text-decoration:none}.ui-state-hover,.ui-widget-content .ui-state-hover,.ui-widget-header .ui-state-hover,.ui-state-focus,.ui-widget-content .ui-state-focus,.ui-widget-header .ui-state-focus,.ui-button:hover,.ui-button:focus{border:1px solid #ccc;background:#ededed;font-weight:normal;color:#2b2b2b}.ui-state-hover a,.ui-state-hover a:hover,.ui-state-hover a:link,.ui-state-hover a:visited,.ui-state-focus a,.ui-state-focus a:hover,.ui-state-focus a:link,.ui-state-focus a:visited,a.ui-button:hover,a.ui-button:focus{color:#2b2b2b;text-decoration:none}.ui-visual-focus{box-shadow:0 0 3px 1px rgb(94,158,214)}.ui-state-active,.ui-widget-content .ui-state-active,.ui-widget-header .ui-state-active,a.ui-button:active,.ui-button:active,.ui-button.ui-state-active:hover{border:1px solid #003eff;background:#007fff;font-weight:normal;color:#fff}.ui-icon-background,.ui-state-active .ui-icon-background{border:#003eff;background-color:#fff}.ui-state-active a,.ui-state-active a:link,.ui-state-active a:visited{color:#fff;text-decoration:none}.ui-state-highlight,.ui-widget-content .ui-state-highlight,.ui-widget-header .ui-state-highlight{border:1px solid #dad55e;background:#fffa90;color:#777620}.ui-state-checked{border:1px solid #dad55e;background:#fffa90}.ui-state-highlight a,.ui-widget-content .ui-state-highlight a,.ui-widget-header .ui-state-highlight a{color:#777620}.ui-state-error,.ui-widget-content .ui-state-error,.ui-widget-header .ui-state-error{border:1px solid #f1a899;background:#fddfdf;color:#5f3f3f}.ui-state-error a,.ui-widget-content .ui-state-error a,.ui-widget-header .ui-state-error a{color:#5f3f3f}.ui-state-error-text,.ui-widget-content .ui-state-error-text,.ui-widget-header .ui-state-error-text{color:#5f3f3f}.ui-priority-primary,.ui-widget-content .ui-priority-primary,.ui-widget-header .ui-priority-primary{font-weight:bold}.ui-priority-secondary,.ui-widget-content .ui-priority-secondary,.ui-widget-header .ui-priority-secondary{opacity:.7;filter:Alpha(Opacity=70);font-weight:normal}.ui-state-disabled,.ui-widget-content .ui-state-disabled,.ui-widget-header .ui-state-disabled{opacity:.35;filter:Alpha(Opacity=35);background-image:none}.ui-state-disabled .ui-icon{filter:Alpha(Opacity=35)}.ui-icon{width:16px;height:16px}.ui-icon,.ui-widget-content .ui-icon{background-image:url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/images/ui-icons_444444_256x240.png')}.ui-widget-header .ui-icon{background-image:url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/images/ui-icons_444444_256x240.png')}.ui-state-hover .ui-icon,.ui-state-focus .ui-icon,.ui-button:hover .ui-icon,.ui-button:focus .ui-icon{background-image:url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/images/ui-icons_555555_256x240.png')}.ui-state-active .ui-icon,.ui-button:active .ui-icon{background-image:url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/images/ui-icons_ffffff_256x240.png')}.ui-state-highlight .ui-icon,.ui-button .ui-state-highlight.ui-icon{background-image:url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/images/ui-icons_777620_256x240.png')}.ui-state-error .ui-icon,.ui-state-error-text .ui-icon{background-image:url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/images/ui-icons_cc0000_256x240.png')}.ui-button .ui-icon{background-image:url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/images/ui-icons_777777_256x240.png')}.ui-icon-blank{background-position:16px 16px}.ui-icon-caret-1-n{background-position:0 0}.ui-icon-caret-1-ne{background-position:-16px 0}.ui-icon-caret-1-e{background-position:-32px 0}.ui-icon-caret-1-se{background-position:-48px 0}.ui-icon-caret-1-s{background-position:-65px 0}.ui-icon-caret-1-sw{background-position:-80px 0}.ui-icon-caret-1-w{background-position:-96px 0}.ui-icon-caret-1-nw{background-position:-112px 0}.ui-icon-caret-2-n-s{background-position:-128px 0}.ui-icon-caret-2-e-w{background-position:-144px 0}.ui-icon-triangle-1-n{background-position:0 -16px}.ui-icon-triangle-1-ne{background-position:-16px -16px}.ui-icon-triangle-1-e{background-position:-32px -16px}.ui-icon-triangle-1-se{background-position:-48px -16px}.ui-icon-triangle-1-s{background-position:-65px -16px}.ui-icon-triangle-1-sw{background-position:-80px -16px}.ui-icon-triangle-1-w{background-position:-96px -16px}.ui-icon-triangle-1-nw{background-position:-112px -16px}.ui-icon-triangle-2-n-s{background-position:-128px -16px}.ui-icon-triangle-2-e-w{background-position:-144px -16px}.ui-icon-arrow-1-n{background-position:0 -32px}.ui-icon-arrow-1-ne{background-position:-16px -32px}.ui-icon-arrow-1-e{background-position:-32px -32px}.ui-icon-arrow-1-se{background-position:-48px -32px}.ui-icon-arrow-1-s{background-position:-65px -32px}.ui-icon-arrow-1-sw{background-position:-80px -32px}.ui-icon-arrow-1-w{background-position:-96px -32px}.ui-icon-arrow-1-nw{background-position:-112px -32px}.ui-icon-arrow-2-n-s{background-position:-128px -32px}.ui-icon-arrow-2-ne-sw{background-position:-144px -32px}.ui-icon-arrow-2-e-w{background-position:-160px -32px}.ui-icon-arrow-2-se-nw{background-position:-176px -32px}.ui-icon-arrowstop-1-n{background-position:-192px -32px}.ui-icon-arrowstop-1-e{background-position:-208px -32px}.ui-icon-arrowstop-1-s{background-position:-224px -32px}.ui-icon-arrowstop-1-w{background-position:-240px -32px}.ui-icon-arrowthick-1-n{background-position:1px -48px}.ui-icon-arrowthick-1-ne{background-position:-16px -48px}.ui-icon-arrowthick-1-e{background-position:-32px -48px}.ui-icon-arrowthick-1-se{background-position:-48px -48px}.ui-icon-arrowthick-1-s{background-position:-64px -48px}.ui-icon-arrowthick-1-sw{background-position:-80px -48px}.ui-icon-arrowthick-1-w{background-position:-96px -48px}.ui-icon-arrowthick-1-nw{background-position:-112px -48px}.ui-icon-arrowthick-2-n-s{background-position:-128px -48px}.ui-icon-arrowthick-2-ne-sw{background-position:-144px -48px}.ui-icon-arrowthick-2-e-w{background-position:-160px -48px}.ui-icon-arrowthick-2-se-nw{background-position:-176px -48px}.ui-icon-arrowthickstop-1-n{background-position:-192px -48px}.ui-icon-arrowthickstop-1-e{background-position:-208px -48px}.ui-icon-arrowthickstop-1-s{background-position:-224px -48px}.ui-icon-arrowthickstop-1-w{background-position:-240px -48px}.ui-icon-arrowreturnthick-1-w{background-position:0 -64px}.ui-icon-arrowreturnthick-1-n{background-position:-16px -64px}.ui-icon-arrowreturnthick-1-e{background-position:-32px -64px}.ui-icon-arrowreturnthick-1-s{background-position:-48px -64px}.ui-icon-arrowreturn-1-w{background-position:-64px -64px}.ui-icon-arrowreturn-1-n{background-position:-80px -64px}.ui-icon-arrowreturn-1-e{background-position:-96px -64px}.ui-icon-arrowreturn-1-s{background-position:-112px -64px}.ui-icon-arrowrefresh-1-w{background-position:-128px -64px}.ui-icon-arrowrefresh-1-n{background-position:-144px -64px}.ui-icon-arrowrefresh-1-e{background-position:-160px -64px}.ui-icon-arrowrefresh-1-s{background-position:-176px -64px}.ui-icon-arrow-4{background-position:0 -80px}.ui-icon-arrow-4-diag{background-position:-16px -80px}.ui-icon-extlink{background-position:-32px -80px}.ui-icon-newwin{background-position:-48px -80px}.ui-icon-refresh{background-position:-64px -80px}.ui-icon-shuffle{background-position:-80px -80px}.ui-icon-transfer-e-w{background-position:-96px -80px}.ui-icon-transferthick-e-w{background-position:-112px -80px}.ui-icon-folder-collapsed{background-position:0 -96px}.ui-icon-folder-open{background-position:-16px -96px}.ui-icon-document{background-position:-32px -96px}.ui-icon-document-b{background-position:-48px -96px}.ui-icon-note{background-position:-64px -96px}.ui-icon-mail-closed{background-position:-80px -96px}.ui-icon-mail-open{background-position:-96px -96px}.ui-icon-suitcase{background-position:-112px -96px}.ui-icon-comment{background-position:-128px -96px}.ui-icon-person{background-position:-144px -96px}.ui-icon-print{background-position:-160px -96px}.ui-icon-trash{background-position:-176px -96px}.ui-icon-locked{background-position:-192px -96px}.ui-icon-unlocked{background-position:-208px -96px}.ui-icon-bookmark{background-position:-224px -96px}.ui-icon-tag{background-position:-240px -96px}.ui-icon-home{background-position:0 -112px}.ui-icon-flag{background-position:-16px -112px}.ui-icon-calendar{background-position:-32px -112px}.ui-icon-cart{background-position:-48px -112px}.ui-icon-pencil{background-position:-64px -112px}.ui-icon-clock{background-position:-80px -112px}.ui-icon-disk{background-position:-96px -112px}.ui-icon-calculator{background-position:-112px -112px}.ui-icon-zoomin{background-position:-128px -112px}.ui-icon-zoomout{background-position:-144px -112px}.ui-icon-search{background-position:-160px -112px}.ui-icon-wrench{background-position:-176px -112px}.ui-icon-gear{background-position:-192px -112px}.ui-icon-heart{background-position:-208px -112px}.ui-icon-star{background-position:-224px -112px}.ui-icon-link{background-position:-240px -112px}.ui-icon-cancel{background-position:0 -128px}.ui-icon-plus{background-position:-16px -128px}.ui-icon-plusthick{background-position:-32px -128px}.ui-icon-minus{background-position:-48px -128px}.ui-icon-minusthick{background-position:-64px -128px}.ui-icon-close{background-position:-80px -128px}.ui-icon-closethick{background-position:-96px -128px}.ui-icon-key{background-position:-112px -128px}.ui-icon-lightbulb{background-position:-128px -128px}.ui-icon-scissors{background-position:-144px -128px}.ui-icon-clipboard{background-position:-160px -128px}.ui-icon-copy{background-position:-176px -128px}.ui-icon-contact{background-position:-192px -128px}.ui-icon-image{background-position:-208px -128px}.ui-icon-video{background-position:-224px -128px}.ui-icon-script{background-position:-240px -128px}.ui-icon-alert{background-position:0 -144px}.ui-icon-info{background-position:-16px -144px}.ui-icon-notice{background-position:-32px -144px}.ui-icon-help{background-position:-48px -144px}.ui-icon-check{background-position:-64px -144px}.ui-icon-bullet{background-position:-80px -144px}.ui-icon-radio-on{background-position:-96px -144px}.ui-icon-radio-off{background-position:-112px -144px}.ui-icon-pin-w{background-position:-128px -144px}.ui-icon-pin-s{background-position:-144px -144px}.ui-icon-play{background-position:0 -160px}.ui-icon-pause{background-position:-16px -160px}.ui-icon-seek-next{background-position:-32px -160px}.ui-icon-seek-prev{background-position:-48px -160px}.ui-icon-seek-end{background-position:-64px -160px}.ui-icon-seek-start{background-position:-80px -160px}.ui-icon-seek-first{background-position:-80px -160px}.ui-icon-stop{background-position:-96px -160px}.ui-icon-eject{background-position:-112px -160px}.ui-icon-volume-off{background-position:-128px -160px}.ui-icon-volume-on{background-position:-144px -160px}.ui-icon-power{background-position:0 -176px}.ui-icon-signal-diag{background-position:-16px -176px}.ui-icon-signal{background-position:-32px -176px}.ui-icon-battery-0{background-position:-48px -176px}.ui-icon-battery-1{background-position:-64px -176px}.ui-icon-battery-2{background-position:-80px -176px}.ui-icon-battery-3{background-position:-96px -176px}.ui-icon-circle-plus{background-position:0 -192px}.ui-icon-circle-minus{background-position:-16px -192px}.ui-icon-circle-close{background-position:-32px -192px}.ui-icon-circle-triangle-e{background-position:-48px -192px}.ui-icon-circle-triangle-s{background-position:-64px -192px}.ui-icon-circle-triangle-w{background-position:-80px -192px}.ui-icon-circle-triangle-n{background-position:-96px -192px}.ui-icon-circle-arrow-e{background-position:-112px -192px}.ui-icon-circle-arrow-s{background-position:-128px -192px}.ui-icon-circle-arrow-w{background-position:-144px -192px}.ui-icon-circle-arrow-n{background-position:-160px -192px}.ui-icon-circle-zoomin{background-position:-176px -192px}.ui-icon-circle-zoomout{background-position:-192px -192px}.ui-icon-circle-check{background-position:-208px -192px}.ui-icon-circlesmall-plus{background-position:0 -208px}.ui-icon-circlesmall-minus{background-position:-16px -208px}.ui-icon-circlesmall-close{background-position:-32px -208px}.ui-icon-squaresmall-plus{background-position:-48px -208px}.ui-icon-squaresmall-minus{background-position:-64px -208px}.ui-icon-squaresmall-close{background-position:-80px -208px}.ui-icon-grip-dotted-vertical{background-position:0 -224px}.ui-icon-grip-dotted-horizontal{background-position:-16px -224px}.ui-icon-grip-solid-vertical{background-position:-32px -224px}.ui-icon-grip-solid-horizontal{background-position:-48px -224px}.ui-icon-gripsmall-diagonal-se{background-position:-64px -224px}.ui-icon-grip-diagonal-se{background-position:-80px -224px}.ui-corner-all,.ui-corner-top,.ui-corner-left,.ui-corner-tl{border-top-left-radius:3px}.ui-corner-all,.ui-corner-top,.ui-corner-right,.ui-corner-tr{border-top-right-radius:3px}.ui-corner-all,.ui-corner-bottom,.ui-corner-left,.ui-corner-bl{border-bottom-left-radius:3px}.ui-corner-all,.ui-corner-bottom,.ui-corner-right,.ui-corner-br{border-bottom-right-radius:3px}.ui-widget-overlay{background:#aaa;opacity:.3;filter:Alpha(Opacity=30)}.ui-widget-shadow{-webkit-box-shadow:0 0 5px #666;box-shadow:0 0 5px #666}
/*File:~/custom/content/themes/Salon2020DESK/Styles/all.css*/
.HomeRoute .prateleira-filtro .tabs .tab-header li a{display:table; position: relative;}
.HomeRoute .prateleira-filtro .tabs .tab-header li a::after{content: ""; position: absolute; background: url('//d830okm0xici6.cloudfront.net/custom/content/themes/salon-line/Images/sprite-full-novo-novo.png') 0 0 no-repeat; width: 40px; height: 39px; top: 20px; left: -1px;}
.HomeRoute .prateleira-filtro .tabs .tab-header li:nth-child(1) a::after{background-position:0 0;}
.HomeRoute .prateleira-filtro .tabs .tab-header li:nth-child(2) a::after{background-position: 2px -39px;}
.HomeRoute .prateleira-filtro .tabs .tab-header li:nth-child(3) a::after{background-position: 0px -367px}
.HomeRoute .prateleira-filtro .tabs .tab-header li:nth-child(4) a::after{background-position: 0px -78px;}
.HomeRoute .prateleira-filtro .tabs .tab-header li:nth-child(5) a::after{background-position: 0 -117px;}
.HomeRoute .prateleira-filtro .tabs .tab-header li:nth-child(6) a::after{background-position: 0 -157px;}
.HomeRoute .prateleira-filtro .tabs .tab-header li:nth-child(7) a::after{background-position: 0 -197px;}
.HomeRoute .prateleira-filtro .tabs .tab-header li:nth-child(8) a::after{background-position: 0 -238px;}
.HomeRoute .prateleira-filtro .tabs .tab-header li:nth-child(9) a::after{background-position: 0 -277px;}
.HomeRoute .prateleira-filtro .tabs .tab-header li:nth-child(10) a::after{background-position:0 -324px;}
.HomeRoute .prateleira-filtro .tabs .tab-header li:nth-child(11) a::after{background-position:-45px 0;}
.HomeRoute .prateleira-filtro .tabs .tab-header li:nth-child(12) a::after{background-position:-43px -40px;}
.HomeRoute .prateleira-filtro .tabs .tab-header li:nth-child(13) a::after{background-position:-44px -79px;}

.table__cem{display:table; width:100%;}
.col__mosaico{display: table; width: 100%; margin: 10px 0 50px;}
.col__mosaico img{display:block;}
.col__mosaico .col__mo__01{display: table; float: left;}
.col__mosaico .col__mo__02{display: table; float: right; margin-bottom:28px;}
.col__mosaico .col__mo__03{display: table; float: right;}
.col__mosaico .col__mo__05{display: table; float: left;}
.col__mosaico .col__mo__06{display: table; float: right;}
.col__mosaico .col__mo__04{display: table; float: right;     margin-top: 30px;}

.HomeRoute .prateleira-filtro .tabs .tab-header li.tab-active, .HomeRoute .prateleira-filtro .tabs .tab-header li:hover{padding:auto!important;}

.sprite-bandeira_amex {
	position: relative;
	min-width: 44px;
	min-height: 25px;
}
.sprite-bandeira_amex:before {
  position: absolute;
  background-position: -370px -101px;
  width: 44px;
  height: 25px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-bandeira_banrisul {
	position: relative;
	min-width: 51px;
	min-height: 37px;
}
.sprite-bandeira_banrisul:before {
  position: absolute;
  background-position: 0px -308px;
  width: 51px;
  height: 37px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-bandeira_bb {
	position: relative;
	min-width: 51px;
	min-height: 37px;
}
.sprite-bandeira_bb:before {
  position: absolute;
  background-position: -51px -308px;
  width: 51px;
  height: 37px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-bandeira_boleto {
	position: relative;
	min-width: 44px;
	min-height: 25px;
}
.sprite-bandeira_boleto:before {
  position: absolute;
  background-position: -370px -176px;
  width: 44px;
  height: 25px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-bandeira_bradesco {
	position: relative;
	min-width: 51px;
	min-height: 37px;
}
.sprite-bandeira_bradesco:before {
  position: absolute;
  background-position: -102px -308px;
  width: 51px;
  height: 37px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-bandeira_caixa {
	position: relative;
	min-width: 51px;
	min-height: 37px;
}
.sprite-bandeira_caixa:before {
  position: absolute;
  background-position: -153px -308px;
  width: 51px;
  height: 37px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-bandeira_diners {
	position: relative;
	min-width: 44px;
	min-height: 25px;
}
.sprite-bandeira_diners:before {
  position: absolute;
  background-position: -370px -251px;
  width: 44px;
  height: 25px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-bandeira_eletron {
	position: relative;
	min-width: 44px;
	min-height: 25px;
}
.sprite-bandeira_eletron:before {
  position: absolute;
  background-position: -370px -76px;
  width: 44px;
  height: 25px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-bandeira_elo {
	position: relative;
	min-width: 44px;
	min-height: 25px;
}
.sprite-bandeira_elo:before {
  position: absolute;
  background-position: -370px -126px;
  width: 44px;
  height: 25px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-bandeira_hipercard {
	position: relative;
	min-width: 44px;
	min-height: 25px;
}
.sprite-bandeira_hipercard:before {
  position: absolute;
  background-position: -370px -226px;
  width: 44px;
  height: 25px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-bandeira_itau {
	position: relative;
	min-width: 42px;
	min-height: 25px;
}
.sprite-bandeira_itau:before {
  position: absolute;
  background-position: -370px -276px;
  width: 42px;
  height: 25px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-bandeira_koin {
	position: relative;
	min-width: 48px;
	min-height: 38px;
}
.sprite-bandeira_koin:before {
  position: absolute;
  background-position: -370px 0px;
  width: 48px;
  height: 38px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-bandeira_lotericas {
	position: relative;
	min-width: 51px;
	min-height: 37px;
}
.sprite-bandeira_lotericas:before {
  position: absolute;
  background-position: -291px -121px;
  width: 51px;
  height: 37px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-bandeira_master {
	position: relative;
	min-width: 44px;
	min-height: 25px;
}
.sprite-bandeira_master:before {
  position: absolute;
  background-position: -370px -151px;
  width: 44px;
  height: 25px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-bandeira_mastercard {
	position: relative;
	min-width: 47px;
	min-height: 38px;
}
.sprite-bandeira_mastercard:before {
  position: absolute;
  background-position: -370px -38px;
  width: 47px;
  height: 38px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-bandeira_moip {
	position: relative;
	min-width: 51px;
	min-height: 37px;
}
.sprite-bandeira_moip:before {
  position: absolute;
  background-position: -254px -206px;
  width: 51px;
  height: 37px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-bandeira_santander {
	position: relative;
	min-width: 51px;
	min-height: 37px;
}
.sprite-bandeira_santander:before {
  position: absolute;
  background-position: -305px -206px;
  width: 51px;
  height: 37px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-bandeira_visa {
	position: relative;
	min-width: 44px;
	min-height: 25px;
}
.sprite-bandeira_visa:before {
  position: absolute;
  background-position: -370px -201px;
  width: 44px;
  height: 25px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-bandeira_visa_electron {
	position: relative;
	min-width: 52px;
	min-height: 37px;
}
.sprite-bandeira_visa_electron:before {
  position: absolute;
  background-position: -291px -84px;
  width: 52px;
  height: 37px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-compra-segura {
	position: relative;
	min-width: 114px;
	min-height: 48px;
}
.sprite-compra-segura:before {
  position: absolute;
  background-position: -140px -206px;
  width: 114px;
  height: 48px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-confiavel {
	position: relative;
	min-width: 16px;
	min-height: 19px;
}
.sprite-confiavel:before {
  position: absolute;
  background-position: -291px -158px;
  width: 16px;
  height: 19px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-core {
	position: relative;
	min-width: 126px;
	min-height: 42px;
}
.sprite-core:before {
  position: absolute;
  background-position: -104px -256px;
  width: 126px;
  height: 42px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-ebit {
	position: relative;
	min-width: 90px;
	min-height: 95px;
}
.sprite-ebit:before {
  position: absolute;
  background-position: -201px -84px;
  width: 90px;
  height: 95px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-exclusivo {
	position: relative;
	min-width: 21px;
	min-height: 18px;
}
.sprite-exclusivo:before {
  position: absolute;
  background-position: -394px -301px;
  width: 21px;
  height: 18px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-frete {
	position: relative;
	min-width: 19px;
	min-height: 17px;
}
.sprite-frete:before {
  position: absolute;
  background-position: -342px -136px;
  width: 19px;
  height: 17px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-juros {
	position: relative;
	min-width: 15px;
	min-height: 15px;
}
.sprite-juros:before {
  position: absolute;
  background-position: -307px -158px;
  width: 15px;
  height: 15px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-lets_encrypt {
	position: relative;
	min-width: 201px;
	min-height: 92px;
}
.sprite-lets_encrypt:before {
  position: absolute;
  background-position: 0px 0px;
  width: 201px;
  height: 92px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-logo-footer {
	position: relative;
	min-width: 104px;
	min-height: 52px;
}
.sprite-logo-footer:before {
  position: absolute;
  background-position: 0px -256px;
  width: 104px;
  height: 52px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-logo {
	position: relative;
	min-width: 162px;
	min-height: 114px;
}
.sprite-logo:before {
  position: absolute;
  background-position: 0px -92px;
  width: 162px;
  height: 114px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-news {
	position: relative;
	min-width: 26px;
	min-height: 15px;
}
.sprite-news:before {
  position: absolute;
  background-position: -342px -121px;
  width: 26px;
  height: 15px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-pin {
	position: relative;
	min-width: 24px;
	min-height: 32px;
}
.sprite-pin:before {
  position: absolute;
  background-position: -370px -301px;
  width: 24px;
  height: 32px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-sanders {
	position: relative;
	min-width: 140px;
	min-height: 50px;
}
.sprite-sanders:before {
  position: absolute;
  background-position: 0px -206px;
  width: 140px;
  height: 50px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-search {
	position: relative;
	min-width: 25px;
	min-height: 25px;
}
.sprite-search:before {
  position: absolute;
  background-position: -343px -84px;
  width: 25px;
  height: 25px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-site-seguro {
	position: relative;
	min-width: 135px;
	min-height: 29px;
}
.sprite-site-seguro:before {
  position: absolute;
  background-position: -230px -256px;
  width: 135px;
  height: 29px;
  content: "";
  left: 0;
  top: 0;
}
.sprite-todecacho {
	position: relative;
	min-width: 169px;
	min-height: 84px;
}
.sprite-todecacho:before {
  position: absolute;
  background-position: -201px 0px;
  width: 169px;
  height: 84px;
  content: "";
  left: 0;
  top: 0;
}
@charset "UTF-8";
header.fixed .main-nav.fixed-active li .submenu:before,
header.fixed .main-nav.fixed-active li .sub-section:before,
header.fixed .wd-category-menu.fixed-active li .submenu:before,
header.fixed .wd-category-menu.fixed-active li .sub-section:before, .busca:before, .wd-marketing-newsletter form:before, header.fixed .main-nav.fixed-active li .submenu:after,
header.fixed .main-nav.fixed-active li .sub-section:after,
header.fixed .wd-category-menu.fixed-active li .submenu:after,
header.fixed .wd-category-menu.fixed-active li .sub-section:after, .busca:after, .wd-marketing-newsletter form:after {
  content: " ";
  display: table; }
header.fixed .main-nav.fixed-active li .submenu:after,
header.fixed .main-nav.fixed-active li .sub-section:after,
header.fixed .wd-category-menu.fixed-active li .submenu:after,
header.fixed .wd-category-menu.fixed-active li .sub-section:after, .busca:after, .wd-marketing-newsletter form:after {
  clear: both; }
header.fixed .main-nav.fixed-active li .submenu,
header.fixed .main-nav.fixed-active li .sub-section,
header.fixed .wd-category-menu.fixed-active li .submenu,
header.fixed .wd-category-menu.fixed-active li .sub-section, .busca, .wd-marketing-newsletter form {
  *zoom: 1; }

html {
  overflow-x: hidden;
  overflow-y: auto;
  width: 100%; }

body {
  font-family: "Quicksand", sans-serif !important;
  color: #3E3E3E;
  overflow-x: hidden;
  overflow-y: auto; }
  body.menu-opened {
    overflow: hidden; }
    body.menu-opened .overlay {
      display: block; }

@media screen and (max-width: 641px) {
	header .main-nav, header .wd-category-menu{top: 110px!important;}
	.col-sm-7.col--topo.col--header{margin-left:0;}
	.logo-container .open-mobile-menu{z-index:999999;}
	.logo-container .open-mobile-menu .fa.fa-bars{font-size: 1.5em;}
	.col-sm-7.col--topo.col--header .busca{    width: 95%; margin-top: 15px;}
	.col-sm-7.col--topo.col--header .busca input{width:100%;}
	.homepage .full-banner .wd-marketing-banner img, .HomeRoute .full-banner .wd-marketing-banner img{border-radius:0;}
	.marcas .slick-slider .slick-prev, .marcas .slick-slider .slick-next{display:none!important;}
	.table__cem{margin-bottom: 0!important;}
	.col__mosaico .col__mo__02{margin-bottom:0;}
	.col__mosaico .col__mo__04{margin-top:0;}
	.col__mosaico .wd-marketing-banner .banner-default{height:auto!important;}
	header .main-nav.active,
	header .wd-category-menu.active{left: 0; width: 100%; top: 110px;}
	header .wd-category-menu nav{padding-top:0px!important;}
	
	
  .wd-browsing-breadcrumbs {
    display: none; } }''

.instafeed .main-title {
  text-align: center; }

#middle, .wd-checkout-onepage section.step-1 .welcome div {
  padding: 0; }

.wd-profile-login .wd-content .email,
.wd-profile-login .wd-content .password {
  width: 350px;
  margin-bottom: 10px;
  border: 1px solid #ccc;
  padding-left: 10px; }

a.recover-password {
  margin-top: 20px;
  display: inline-block;
  margin-left: 50px; }

.wd-profile-login-modal .the-modal,
.wd-profile-login-recover-password-response-modal .the-modal {
  width: 540px; }
  .wd-profile-login-modal .the-modal input,
  .wd-profile-login-recover-password-response-modal .the-modal input {
    border: 1px solid #ccc;
    width: 70%;
    margin-bottom: 5px; }
  .wd-profile-login-modal .the-modal button,
  .wd-profile-login-recover-password-response-modal .the-modal button {
    margin-bottom: 10px; }
  .wd-profile-login-modal .the-modal .the-modal-container,
  .wd-profile-login-recover-password-response-modal .the-modal .the-modal-container {
    padding: 20px;
    padding-top: 1px; }

.wd-profile-login .wd-title {
  margin-top: 20px; }
.wd-profile-login .error {
  display: inline-block;
  padding-left: 50px; }
.wd-profile-login input {
  height: 40px;
  line-height: 40px;
  border-radius: 2px;
  width: 100%;
  border: none; }
  .wd-profile-login input[type=password] {
    width: 100%; }
.wd-profile-login button {
  background-color: #8d0c4f;
  color: white;
  width: 180px;
  height: 40px;
  line-height: 40px;
  display: inline-block;
  text-align: center;
  border: none;
  margin-left: 50px; }

.register .register-now {
  background-color: #8d0c4f;
  color: white;
  width: 180px;
  height: 40px;
  line-height: 40px;
  text-align: center;
  display: inline-block; }

.wd-title,
.main-title {
  /*font-family: "Flicker", sans-serif !important;*/
  font-family: "Quicksand", sans-serif !important;
  font-size: 42px;
  color: #A60550;
  margin-bottom: 30px;
  position: relative; }
  .wd-title small,
  .main-title small {
    display: block;
    font-family: "Quicksand", sans-serif !important;
    font-size: 14px; }
  .wd-title.white,
  .main-title.white {
    color: white; }

#middle header {
  display: none; }

* {
  box-sizing: border-box;
  outline: none !important; }

[class*='sprite-']:before {
  background-image: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/images/sprite.png?v=13'); }

h1 {
  margin: 0; }

.wd-browsing-breadcrumbs {
  padding: 10px 0;
  font-size: 12px; }

@media screen and (min-width: 641px) and (max-width: 1025px) {
  #header,
  #footer,
  #middle {
    min-width: 0; } }

a {
  color: #3E3E3E;
  transition: .5s all;
  text-decoration: none !important; }
  a:hover, a:active, a:visited {
    opacity: 1;
    color: inherit;
    text-decoration: none; }

ul {
  padding: 0;
  list-style: none;
  margin: 0;
  margin-top: 0;
  margin-bottom: 0 !important; }
  ul li {
    margin: 0; }
.button,
input[type=submit],
input[type=button] {
  background-color: #00ACBF;
  text-transform: uppercase;
  color: white;
  border-radius: 3px;
  box-shadow: none;
  border: none;
  transition: all 300ms; }
  .button:hover,
  input[type=submit]:hover,
  input[type=button]:hover {
    background-color: #007e8c; }

.overlay {
  position: fixed;
  width: 100%;
  height: 100%;
  left: 0;
  top: 0;
  background-color: rgba(0, 0, 0, 0.6);
  z-index: 999999;
  display: none;
  transition: all 300ms; }

.full-banner {
  display: block; }

.social-bar {
  text-align: center;
  margin-top: 30px;
  position: relative;
  color: white;
  margin-bottom: 30px; }
  .social-bar ul {
    display: inline-block;
    background-color: white;
    padding: 0 15px; }
  .social-bar li {
    display: inline-block; }
    .social-bar li:last-of-type a {
      margin-right: 0; }
  .social-bar .facebook {
    background: #3b5998; }
  .social-bar .pinterest {
    background: #CA3737; }
  .social-bar .twitter {
    background: #18B7EB; }
  .social-bar .youtube {
    background: #CA3737; }
  .social-bar .instagram {
    background: #d6249f;
    background: radial-gradient(circle at 30% 107%, #fdf497 0%, #fdf497 5%, #fd5949 45%, #d6249f 60%, #285AEB 90%); }
  .social-bar a {
    width: 50px;
    height: 50px;
    background-color: red;
    border-radius: 40px;
    display: inline-block;
    margin-right: 20px;
    line-height: 20px;
    font-size: 30px;
    padding-top: 10px;
    text-align: center;
    color: white; }
    @media screen and (max-width: 641px) {
      .social-bar a {
        margin-right: 10px; } }

.breadcrumb {
  background-color: transparent;
  color: #999;
  font-size: 12px; }
  .breadcrumb li {
    display: inline-block; }
    .breadcrumb li:after {
      content: '/';
      display: inline-block;
      margin: 0 15px; }

.pagination {
  width: 600px;
  max-width: 70%;
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
  text-align: center;
  margin: 20px auto;
  padding: 10px;
  display: block; }
  .pagination li {
    display: inline-block;
    margin-right: 10px;
    padding: 0 8px;
    border-radius: 2px; }
    .pagination li.prev:before {
      content: '\00ab';
      display: inline-block; }
    .pagination li.next:after {
      content: '\00bb';
      display: inline-block; }
    .pagination li.active {
      background-color: #00ACBF;
      color: white;
      font-weight: bold; }
    .pagination li:last-of-type {
      margin-right: 0; }

header {
  background-color: white;
  box-shadow: 0 0 14px 0 #999; }
  @media screen and (max-width: 1025px) {
    header .wd-marketing-banner {
      display: none !important; } }
  header .open-sticky-nav {
    display: none; }
  header .welcome {
    padding: 0; }
  header .shopper-authenticated {
    margin-top: 2px; }
  header .shopper-authenticated .click-here {
    font-size: 12px;
    margin-left: 3px;
    display: inline-block;
    line-height: 1.5; }
  header .shopper-authenticated .sign-out {
    float: right;
    font-size: 11px;
    padding: 0;
    padding-top: 3px; }
  header .shopper-authenticated b {
    font-size: 11px; }
  header.fixed {
    position: fixed;
    width: 100%;
    left: 0;
    top: 0;
    z-index: 99999999999;
    padding-top: 10px;
    padding-bottom: 10px;
    height: 80px; }
    header.fixed .wd-marketing-banner {
      display: none !important; }
    header.fixed .topbar {
      display: none; }
    header.fixed .wd-checkout-basket-summaryheader .wd-widget {
      top: 60px;
      right: 100px; }
    header.fixed .wd-profile-welcome-shopper {
      display: none !important; }
    header.fixed .open-sticky-nav {
      font-size: 30px;
      margin-left: 20px;
      display: inline-block;
      color: #8d0c4f; }
    header.fixed .busca {
      width: 90%;
      float: right; }
    header.fixed .wd-checkout-basket-summaryheader > a {
      background-color: transparent;
      color: white;
      border-radius: 0;
      width: 50px;
      height: auto; }
      header.fixed .wd-checkout-basket-summaryheader > a span {
        top: 32px; }
      header.fixed .wd-checkout-basket-summaryheader > a b {
        display: none; }
      header.fixed .wd-checkout-basket-summaryheader > a:before {
        margin-top: 20px; }
    header.fixed .user-nav {
      display: none; }
    header.fixed .main-nav,
    header.fixed .wd-category-menu {
      display: none;
      position: static; }
      header.fixed .main-nav.fixed-active,
      header.fixed .wd-category-menu.fixed-active {
        display: block;
        position: absolute;
        background: white;
        width: 200px; }
        header.fixed .main-nav.fixed-active ul,
        header.fixed .wd-category-menu.fixed-active ul {
          position: relative; }
        header.fixed .main-nav.fixed-active li,
        header.fixed .wd-category-menu.fixed-active li {
          border: none;
          height: 40px;
          line-height: 40px;
          display: block;
          width: 100%; }
          header.fixed .main-nav.fixed-active li .submenu,
          header.fixed .main-nav.fixed-active li .sub-section,
          header.fixed .wd-category-menu.fixed-active li .submenu,
          header.fixed .wd-category-menu.fixed-active li .sub-section {
            position: absolute;
            top: 0;
            right: auto;
            width: 600px;
            left: 200px; }
            @media screen and (max-width: 1025px) {
              header.fixed .main-nav.fixed-active li .submenu,
              header.fixed .main-nav.fixed-active li .sub-section,
              header.fixed .wd-category-menu.fixed-active li .submenu,
              header.fixed .wd-category-menu.fixed-active li .sub-section {
                display: none !important; } }
            header.fixed .main-nav.fixed-active li .submenu > li,
            header.fixed .main-nav.fixed-active li .sub-section > li,
            header.fixed .wd-category-menu.fixed-active li .submenu > li,
            header.fixed .wd-category-menu.fixed-active li .sub-section > li {
              width: 33%;
              height: auto; }
              header.fixed .main-nav.fixed-active li .submenu > li > h4 a:before,
              header.fixed .main-nav.fixed-active li .sub-section > li > h4 a:before,
              header.fixed .wd-category-menu.fixed-active li .submenu > li > h4 a:before,
              header.fixed .wd-category-menu.fixed-active li .sub-section > li > h4 a:before {
                display: none; }
            header.fixed .main-nav.fixed-active li .submenu a:before,
            header.fixed .main-nav.fixed-active li .sub-section a:before,
            header.fixed .wd-category-menu.fixed-active li .submenu a:before,
            header.fixed .wd-category-menu.fixed-active li .sub-section a:before {
              position: relative;
              left: auto;
              bottom: auto;
              top: auto;
              right: auto;
              display: inline-block; }
            header.fixed .main-nav.fixed-active li .submenu li,
            header.fixed .main-nav.fixed-active li .sub-section li,
            header.fixed .wd-category-menu.fixed-active li .submenu li,
            header.fixed .wd-category-menu.fixed-active li .sub-section li {
              line-height: 1.5;
              height: auto; }
  .topbar {
    background-color: #090909;
    color: #a4a4a4;
    padding: 8px 0;
    text-transform: uppercase;
    font-size: 14px;
    font-weight: bold;
    text-align: center;
	margin-top:5px;
    margin-bottom: 10px; }
    @media screen and (max-width: 1025px) {
       .topbar {
        display: none; } }
     .topbar [class*='sprite-'] {
      display: inline-block;
      margin-right: 4px;
      vertical-align: top; }
     .topbar strong {
      position: relative;
      display: inline-block;	
	  color:#fff;}
     .topbar div {
      padding: 0;
      text-align: center; }
  header .container {
    position: relative; }
  header .col-sm-7 {
    position: static; }
  header .user-nav {
    text-align: right;
    font-size: 12px; }
    @media screen and (max-width: 1025px) {
      header .user-nav {
        display: none; } }
    @media screen and (min-width: 641px) and (max-width: 1025px) {
      header .user-nav {
        font-size: 12px; } }
    header .user-nav li {
      display: inline-block;
      float: none; }
    header .user-nav .icon-central {
      width: 15px;
      height: 15px;
      display: inline-block;
      vertical-align: text-bottom;
      margin-right: 5px;
      background-image: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/images/icon-central.png');
      background-repeat: no-repeat;
      background-position: center; }
  @media screen and (max-width: 1025px) {
    header .cart-container {
      position: absolute;
      top: 0;
      right: -20px; } }
  @media screen and (min-width: 641px) and (max-width: 1025px) {
    header .cart-container {
      right: -20px;
      position: absolute;
      top: 0; } }
  header .wd-checkout-basket-summaryheader:hover:before {
    content: '';
    position: absolute;
    display: block;
    width: 20px;
    height: 20px;
    background: white;
    right: 90px;
    transform: rotate(45deg);
    margin-top: 0px;
    bottom: -10px;
    z-index: 99999; }
  header .wd-checkout-basket-summaryheader > a {
    width: 160px;
    height: 75px;
    background: #A60550;
    display: block;
    border-radius: 0 0 75px 75px;
    color: white;
    position: relative; }
    @media screen and (max-width: 1025px) {
      header .wd-checkout-basket-summaryheader > a {
        background-color: transparent;
        color: white;
        border-radius: 0;
        width: 50px;
        height: auto; } }
    header .wd-checkout-basket-summaryheader > a span {
      position: absolute;
      left: 49%;
      top: 41px;
      font-size: 10px; }
      @media screen and (max-width: 1025px) {
        header .wd-checkout-basket-summaryheader > a span {
          top: 32px; } }
    header .wd-checkout-basket-summaryheader > a b {
      font-weight: normal;
      display: block;
      text-align: center; }
      @media screen and (max-width: 1025px) {
        header .wd-checkout-basket-summaryheader > a b {
          display: none; } }
    header .wd-checkout-basket-summaryheader > a:before {
      content: '';
      width: 26px;
      height: 22px;
      background-image: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/images/cart-icon.png');
      background-position: center;
      background-repeat: no-repeat;
      display: block;
      position: absolute;
      top: 50%;
      left: 50%;
      margin-left: -23px;
      margin-top: -8px; }
      @media screen and (max-width: 1025px) {
        header .wd-checkout-basket-summaryheader > a:before {
          margin-top: 20px; } }
  header .wd-checkout-basket-summaryheader .wd-widget {
    background-color: white;
    box-shadow: 0 0 16px 0 #999;
    width: 500px;
    height: 250px;
    padding: 20px; }
    header .wd-checkout-basket-summaryheader .wd-widget .wd-header {
      display: none; }
    header .wd-checkout-basket-summaryheader .wd-widget del {
      display: block;
      line-height: 1.5; }
    header .wd-checkout-basket-summaryheader .wd-widget .price-content-full {
      line-height: 1.5; }
    header .wd-checkout-basket-summaryheader .wd-widget > .wd-content {
      height: 160px;
      overflow-x: auto; }
      header .wd-checkout-basket-summaryheader .wd-widget > .wd-content ul {
        border-bottom: 1px solid #eee; }
        header .wd-checkout-basket-summaryheader .wd-widget > .wd-content ul li.name {
          width: 290px; }
        header .wd-checkout-basket-summaryheader .wd-widget > .wd-content ul li.price {
          font-weight: bold; }
        header .wd-checkout-basket-summaryheader .wd-widget > .wd-content ul li.img {
          width: 40px;
          text-align: center; }
          header .wd-checkout-basket-summaryheader .wd-widget > .wd-content ul li.img img {
            max-height: 40px;
            width: auto; }
    header .wd-checkout-basket-summaryheader .wd-widget .wd-footer .left {
      float: left; }
    header .wd-checkout-basket-summaryheader .wd-widget .wd-footer .right {
      float: right; }
    header .wd-checkout-basket-summaryheader .wd-widget .wd-footer button {
      width: 240px;
      height: 45px;
      line-height: 45px;
      background-color: #6ebf55;
      font-family: "Flicker", sans-serif !important;
      border-radius: 45px;
      border: none;
      color: white;
      font-size: 22px;
      letter-spacing: 0.65px; }
  header .wd-profile-welcome-shopper .login-simple {
    color: #3E3E3E; }

@media screen and (max-width: 1025px) {
  .content-header {
    padding-bottom: 10px; } }

.open-mobile-menu {
  display: none; }

@media screen and (max-width: 1025px) {
  .logo-container {
    text-align: center; }
    .logo-container .open-mobile-menu {
      width: 50px;
      height: 60px;
      display: block;
      position: absolute;
      left: 0;
      top: 0;
      font-size: 30px;
      padding-top: 10px;
      background-color: white;
      color: #3E3E3E; }
      .logo-container .open-mobile-menu.active {
		color: white;}
    .logo-container .sprite-logo {
      display: inline-block; } }

.col-md-4.welcome {
  margin: 10px 0 0; }

.col-md-4.welcome + div {
  margin: 9px 0 0; }
.busca {
  position: relative;
  width: 97%; }
  @media screen and (max-width: 641px) {
    .busca {
      width: 90%;
      margin: 10px auto 0; } }
  .busca input {
    height: 42px;
    padding-left: 10px;
    border: 1px solid #a6064f;
    width: 100%;
    outline: none;
    border-radius: 42px;
    background: #f3f3f3; }
    @media screen and (max-width: 641px) {
      .busca input {
        width: 200px; } }
  .busca button {
    height: 42px;
    border: 0;
    position: relative;
    background-repeat: no-repeat;
    width: 42px;
    background-image: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/images/busca-icon.png');
    background-position: center;
    background-color: transparent;
    position: absolute;
    right: 0;
    top: 0; }
  .busca .wd-search .suggestion-box {
    margin-top: 0px;
    width: 820px; }
    .busca .wd-search .suggestion-box.hide {
      border-bottom: 0; }
  .busca .wd-search .suggestion-box-wrapper {
    padding: 20px; }
  .busca .wd-search .input-wrapper {
    margin-right: 0; }
  .busca .wd-search .suggestion-product-name {
    width: 40%;
    float: left;
    padding-top: 10px; }
  .busca .wd-search .suggestion-product-price {
    float: right;
    text-align: right;
    width: 45%;
    color: inherit;
    padding-top: 20px;
    font-weight: 600;
    font-size: 16px; }
    .busca .wd-search .suggestion-product-price .price-content-full {
      text-align: left;
      color: #8d0c4f;
      width: 60%;
      float: left;
      font-size: 13px;
      font-weight: bold; }
      .busca .wd-search .suggestion-product-price .price-content-full del {
        font-size: 10px;
        text-transform: lowercase;
        height: 15px;
        font-weight: normal; }
      .busca .wd-search .suggestion-product-price .price-content-full .label {
        color: #3E3E3E;
        font-size: 10px;
        padding: 0;
        font-weight: normal; }
      .busca .wd-search .suggestion-product-price .price-content-full em {
        color: #3E3E3E;
        text-transform: lowecase;
        font-size: 10px; }
    .busca .wd-search .suggestion-product-price .discount {
      float: left;
      width: 40%;
      color: #00ACBF;
      margin-top: 20px;
      font-size: 10px; }
      .busca .wd-search .suggestion-product-price .discount strong {
        display: inline-block; }
    .busca .wd-search .suggestion-product-price del,
    .busca .wd-search .suggestion-product-price strong {
      display: block; }
    .busca .wd-search .suggestion-product-price del {
      color: #999; }
    .busca .wd-search .suggestion-product-price .label {
      color: #3E3E3E; }
  .busca .wd-search .suggestion-title {
    display: none; }
  .busca .wd-search .suggestion-product-description {
    float: none; }
  .busca .wd-search .suggestion-product:hover {
    background-color: transparent; }
  .busca .wd-search .suggestion-product {
    border-bottom: 1px solid #eee; }
  .busca .wd-search .suggestion-terms ul {
    margin-left: 0 !important; }
    .busca .wd-search .suggestion-terms ul li {
      border-bottom: 1px solid #eee;
      padding: 5px 0;
      display: block;
      float: none; }

@media screen and (max-width: 1025px) {
  .pseudo-search {
    display: none; } }

header .main-nav,
header .wd-category-menu {
  text-transform: uppercase;
  padding: 10px 0 10px;
  padding-top: 5px;
  margin: 0px 0 0px;
  position: static;
  top: 2px; }
  header .main-nav .wd-title,
  header .wd-category-menu .wd-title {
    display: none; }
  @media screen and (max-width: 1025px) {
    header .main-nav,
    header .wd-category-menu {
      position: fixed;
      height: 100%;
      background: white;
      top: 60px;
      z-index: 99;
      width: 90%;
      left: -100%;
      box-shadow: 0 0 6px 0 #999;
      transition: left 300ms; }
      header .main-nav.active,
      header .wd-category-menu.active {
        left: 0; } }
  header .main-nav .container,
  header .wd-category-menu .container {
    position: relative; }
  header .main-nav a,
  header .wd-category-menu a {
    color: inherit; }
  header .main-nav [class*='sprite-'],
  header .wd-category-menu [class*='sprite-'] {
    vertical-align: bottom; }
  header .main-nav .container ul > li:last-of-type,
  header .wd-category-menu .container ul > li:last-of-type {
    position: relative;
    background-color: #363636; }
    header .main-nav .container ul > li:last-of-type:before,
    header .wd-category-menu .container ul > li:last-of-type:before {
      content: '';
      display: block;
      height: 100%;
      width: 2000px;
      position: absolute;
      top: 0;
      background: #363636;
      left: 100%; }
    header .main-nav .container ul > li:last-of-type:after,
    header .wd-category-menu .container ul > li:last-of-type:after {
      content: '';
      display: block;
      position: absolute;
      top: 0;
      left: -20px;
      width: 0;
      height: 0;
      border-style: solid;
      border-width: 0 0 44px 20px;
      border-color: transparent transparent #363636 transparent; }
  header .main-nav li:first-of-type a,
  header .wd-category-menu li:first-of-type a {
    padding-left: 0; }
    @media screen and (max-width: 1025px) {
      header .main-nav li:first-of-type a,
      header .wd-category-menu li:first-of-type a {
        padding-left: 20px; } }
  header .main-nav li:last-of-type,
  header .wd-category-menu li:last-of-type {
    border-right: none; }
    header .main-nav li:last-of-type a,
    header .wd-category-menu li:last-of-type a {
      padding-right: 0; }
  header .main-nav li,
  header .wd-category-menu li {
    border-right: 3px solid #3E3E3E;
    display: inline-block;
    padding: 0;
    font-size: 16px;
    color: #3E3E3E;
    font-weight: bold; }
    @media screen and (max-width: 1025px) {
      header .main-nav li,
      header .wd-category-menu li {
        display: block;
        width: 100%;
        padding: 0;
        text-align: left;
        padding-left: 20px;
        border-right: 0;
        border: none; } }
    header .main-nav li:last-of-type,
    header .wd-category-menu li:last-of-type {
      border-right: none; }
    header .main-nav li:hover > h3 > a:before,
    header .wd-category-menu li:hover > h3 > a:before {
      display: block;
      content: '';
      width: 0;
      height: 0;
      border-style: solid;
      border-width: 0 18px 12px 18px;
      border-color: transparent transparent white transparent;
      position: absolute;
      left: 50%;
      margin-left: -18px;
      bottom: -15px;
      z-index: 9999999; }
      @media screen and (max-width: 1025px) {
        header .main-nav li:hover > h3 > a:before,
        header .wd-category-menu li:hover > h3 > a:before {
          display: none; } }
    header .main-nav li:hover .sub-section,
    header .main-nav li:hover .submenu,
    header .wd-category-menu li:hover .sub-section,
    header .wd-category-menu li:hover .submenu {
      display: block;
      margin-top: 10px; }
      @media screen and (max-width: 1025px) {
        header .main-nav li:hover .sub-section,
        header .main-nav li:hover .submenu,
        header .wd-category-menu li:hover .sub-section,
        header .wd-category-menu li:hover .submenu {
          margin-top: 0; } }
    header .main-nav li > a,
    header .wd-category-menu li > a {
      display: block;
      width: 100%;
      height: 100%;
      padding: 0 11px;
      position: relative; }
      @media screen and (max-width: 1025px) {
        header .main-nav li > a,
        header .wd-category-menu li > a {
          height: 40px;
          line-height: 40px; } }
    header .main-nav li .sub-section,
    header .main-nav li .submenu,
    header .wd-category-menu li .sub-section,
    header .wd-category-menu li .submenu {
      background-color: white;
      position: absolute;
      left: 0;
      width: 100%;
      padding: 20px;
      z-index: 9999;
      color: #3E3E3E;
      transition: all 300ms;
      border-bottom: 5px solid #8d0c4f;
      display: none;
      margin-top: 40px;
      box-shadow: 0 0 50px 0 #999;
      min-height: 300px; }
      @media screen and (max-width: 1025px) {
        header .main-nav li .sub-section,
        header .main-nav li .submenu,
        header .wd-category-menu li .sub-section,
        header .wd-category-menu li .submenu {
          position: relative;
          margin-top: 0;
          display: none !important; } }
      header .main-nav li .sub-section a,
      header .main-nav li .submenu a,
      header .wd-category-menu li .sub-section a,
      header .wd-category-menu li .submenu a {
        color: #3E3E3E; }
      header .main-nav li .sub-section > li,
      header .main-nav li .submenu > li,
      header .wd-category-menu li .sub-section > li,
      header .wd-category-menu li .submenu > li {
        width: 20%;
        float: left; }
        header .main-nav li .sub-section > li > h4,
        header .main-nav li .submenu > li > h4,
        header .wd-category-menu li .sub-section > li > h4,
        header .wd-category-menu li .submenu > li > h4 {
          text-transform: uppercase;
          font-weight: bold; }
          header .main-nav li .sub-section > li > h4 a,
          header .main-nav li .submenu > li > h4 a,
          header .wd-category-menu li .sub-section > li > h4 a,
          header .wd-category-menu li .submenu > li > h4 a {
            color: #8d0c4f;
            font-weight: bold;
            font-size: 15px;
            margin-bottom: 15px; }
            header .main-nav li .sub-section > li > h4 a:before,
            header .main-nav li .submenu > li > h4 a:before,
            header .wd-category-menu li .sub-section > li > h4 a:before,
            header .wd-category-menu li .submenu > li > h4 a:before {
              display: none; }
        header .main-nav li .sub-section > li li,
        header .main-nav li .submenu > li li,
        header .wd-category-menu li .sub-section > li li,
        header .wd-category-menu li .submenu > li li {
          float: none;
          width: 100%; }
          header .main-nav li .sub-section > li li:hover,
          header .main-nav li .submenu > li li:hover,
          header .wd-category-menu li .sub-section > li li:hover,
          header .wd-category-menu li .submenu > li li:hover {
            font-weight: bold; }
      header .main-nav li .sub-section li,
      header .main-nav li .submenu li,
      header .wd-category-menu li .sub-section li,
      header .wd-category-menu li .submenu li {
        display: block;
        padding: 0;
        margin-bottom: 10px;
        text-transform: initial;
        color: #3E3E3E;
        border-right: none; }
        header .main-nav li .sub-section li a:hover:before,
        header .main-nav li .submenu li a:hover:before,
        header .wd-category-menu li .sub-section li a:hover:before,
        header .wd-category-menu li .submenu li a:hover:before {
          border-style: none;
          position: relative;
          bottom: auto;
          left: auto;
          top: auto;
          right: auto;
          margin: 0; }
        header .main-nav li .sub-section li:first-letter,
        header .main-nav li .submenu li:first-letter,
        header .wd-category-menu li .sub-section li:first-letter,
        header .wd-category-menu li .submenu li:first-letter {
          text-transform: uppercase; }
        header .main-nav li .sub-section li:last-of-type,
        header .main-nav li .submenu li:last-of-type,
        header .wd-category-menu li .sub-section li:last-of-type,
        header .wd-category-menu li .submenu li:last-of-type {
          background-color: transparent; }
          header .main-nav li .sub-section li:last-of-type:before, header .main-nav li .sub-section li:last-of-type:after,
          header .main-nav li .submenu li:last-of-type:before,
          header .main-nav li .submenu li:last-of-type:after,
          header .wd-category-menu li .sub-section li:last-of-type:before,
          header .wd-category-menu li .sub-section li:last-of-type:after,
          header .wd-category-menu li .submenu li:last-of-type:before,
          header .wd-category-menu li .submenu li:last-of-type:after {
            display: none; }

footer {
  background-image: url('//d830okm0xici6.cloudfront.net/Custom/Content/Themes/salon-line/bg-footer.png?v=2');
  background-repeat: no-repeat;
  background-position: top center;
  padding-top: 20px;
  border-top: 12px solid #8d0c4f;
  margin-top: 20px;
  color: #3a3a3a;
  background-size: cover; }
  @media screen and (max-width: 769px) {
    footer {
      font-size: 13px;
      background-size: cover; } }
  footer .row {
    margin-bottom: 10px; }
  footer #seloEbit {
    display: inline-block !important; }
  footer li:not(.titulo):before {
    display: inline-block;
    vertical-align: bottom;
    margin-right: 5px;
    width: 4px;
    height: 4px;
    border-radius: 4px;
    background-color: #3E3E3E; }
  @media screen and (max-width: 769px) {
    footer .logo-footer {
      text-align: center;
      margin-bottom: 10px;
      display: none; }
      footer .logo-footer a {
        display: inline-block; } }
  footer .texto-footer {
    padding-left: 40px; }
    @media screen and (max-width: 769px) {
      footer .texto-footer {
        padding-left: 15px; } }
  footer .titulo {
    text-transform: uppercase;
    margin-bottom: 20px; }
  @media screen and (max-width: 769px) {
    footer .seguranca {
      text-align: center; } }
  @media screen and (max-width: 769px) {
    footer .endereco {
      margin-top: 20px;
      text-align: center;
      margin-bottom: 20px; } }
  footer .endereco i {
    font-size: 28px;
    margin-right: 5px;
    display: inline-block;
    vertical-align: middle; }
  @media screen and (max-width: 769px) {
    footer .endereco b {
      display: block; } }
  @media screen and (max-width: 769px) {
    footer .endereco br:first-of-type {
      display: none; } }
  footer .endereco span {
    display: inline-block;
    vertical-align: top; }
  footer .endereco strong {
    display: inline-block;
    vertical-align: middle; }
  footer .footer-bottom li:before {
    display: none; }
  footer .footer-bottom span {
    display: inline-block; }
  footer .footer-bottom div {
    display: inline-block;
    margin-right: 10px;
    vertical-align: top; }
    @media screen and (max-width: 1025px) {
      footer .footer-bottom div {
        margin-right: 0; } }
  @media screen and (max-width: 769px) {
    footer .payment {
      text-align: center;
      margin-top: 20px; } }
  footer .payment li:not(.titulo) {
    width: 70%; }
    @media screen and (max-width: 769px) {
      footer .payment li:not(.titulo) {
        margin: 0 auto; } }
  @media screen and (max-width: 769px) {
    footer .tech {
      text-align: center;
      margin-top: 20px; } }
  footer .copyright {
    text-align: center;
    padding: 10px 0;
    color: #3E3E3E; }
    footer .copyright span {
      display: block; }
  footer .extra-info {
    position: absolute;
    text-align: right;
    width: 490px;
    bottom: -100px;
    right: 70px;
    font-size: 12px; }
    @media screen and (max-width: 769px) {
      footer .extra-info {
        text-align: center;
        width: 100%;
        bottom: -50px;
        right: 0; } }
    footer .extra-info strong {
      color: #8d0c4f;
      display: block; }

.footer-nav {
  padding-bottom: 20px;
  border-bottom: 1px solid #ddd;
  margin-bottom: 25px; }
  @media screen and (max-width: 769px) {
    .footer-nav {
      padding-left: 15px; } }
  @media screen and (max-width: 1025px) and (min-width: 769px) {
    .footer-nav .col-sm-4 {
      min-height: 200px; } }
  @media screen and (max-width: 769px) {
    .footer-nav .footer-nav-content,
    .footer-nav .news-content,
    .footer-nav .texto-footer {
      display: none; }
    .footer-nav .copyright {
      font-size: 10px; } }
  .footer-nav li.titulo { }
    @media screen and (max-width: 769px) {
      .footer-nav li.titulo {
        margin-left: 0; } }
  .footer-nav li:not(.titulo) {
    list-style: disc; }

@font-face {
  font-family: 'Quicksand';
  src: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/quicksand-bold-webfont.woff2') format("woff2"), url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/quicksand-bold-webfont.woff') format("woff");
  font-weight: bold;
  font-style: normal; }
@font-face {
  font-family: 'Quicksand';
  src: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/quicksand-light-webfont.woff2') format("woff2"), url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/quicksand-light-webfont.woff') format("woff");
  font-weight: lighter;
  font-style: normal; }
@font-face {
  font-family: 'Quicksand';
  src: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/quicksand-regular-webfont.woff2') format("woff2"), url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/quicksand-regular-webfont.woff') format("woff");
  font-weight: normal;
  font-style: normal; }
@font-face {
  font-family: 'Flicker';
  src: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/flicker_demo-webfont.woff2') format("woff2"), url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/flicker_demo-webfont.woff') format("woff");
  font-weight: normal;
  font-style: normal; }
.newsletter-title {
  margin-top: 0;
  margin-bottom: 5px;
  font-size: 22px;
  font-weight: bold;
  color: #8d0c4f;
  text-transform: uppercase; }
  .newsletter-title .sprite-news {
    display: inline-block; }

.wd-marketing-newsletter {
  margin: 0; }
  @media screen and (max-width: 1025px) and (min-width: 641px) {
    .wd-marketing-newsletter {
      margin-bottom: 40px; } }
  .wd-marketing-newsletter .wd-title {
    display: none; }
  .wd-marketing-newsletter form {
    padding: 0;
    margin: 0; }
    @media screen and (max-width: 641px) {
      .wd-marketing-newsletter form {
        padding: 10px 0;
        position: relative; } }
  .wd-marketing-newsletter .input-name-marketing-newsletter {
    display: none; }
  .wd-marketing-newsletter .sprite-news {
    float: left;
    margin-top: 10px; }
  .wd-marketing-newsletter label {
    display: none; }
  .wd-marketing-newsletter input {
    height: 59px;
    padding-left: 10px;
    border: 1px solid #999;
    width: 370px;
    outline: none;
    border-radius: 59px;
    background-color: white; }
    @media screen and (max-width: 641px) {
      .wd-marketing-newsletter input {
        width: 180px; } }
    @media screen and (max-width: 1025px) and (min-width: 641px) {
      .wd-marketing-newsletter input {
        width: 100%; } }
  .wd-marketing-newsletter button {
    height: 59px;
    color: white;
    background-color: #00ACBF;
    border: 0;
    font-size: 22px;
    text-transform: uppercase;
    border-radius: 59px;
    position: absolute;
    top: 60px;
    right: 0;
    width: 127px;
    text-align: center;
    font-family: "Flicker", sans-serif !important;
    letter-spacing: 1.1;
    margin-top: -1px; }
    @media screen and (max-width: 641px) {
      .wd-marketing-newsletter button {
        top: 57px; } }
    @media screen and (max-width: 1025px) and (min-width: 641px) {
      .wd-marketing-newsletter button {
        width: 60px; } }

.wd-product-associations li li,
.prateleira li {
  padding-bottom: 30px;
  padding-top: 30px; }
  .wd-product-associations li li a:hover,
  .prateleira li a:hover {
    color: #3E3E3E; }
  .wd-product-associations li li article,
  .prateleira li article {
    margin: 0 15px;
    border-radius: 4px;
    border: 1px solid #eee;
    text-align: center;
    padding: 15px;
    background-color: white;
    transition: all 300ms;
    height: 425px; }
    @media screen and (max-width: 769px) {
      .wd-product-associations li li article,
      .prateleira li article {
        margin: 0 5px !important;
        padding: 5px; } }
    .wd-product-associations li li article:hover,
    .prateleira li article:hover {
      box-shadow: 0 0 30px 0 #999; }
      .wd-product-associations li li article:hover .buy,
      .prateleira li article:hover .buy {
        margin-top: 15px;
        visibility: visible;
        opacity: 1; }
    .wd-product-associations li li article .product-name,
    .prateleira li article .product-name {
      font-size: 16px;
      /*text-transform: uppercase;*/
      text-align: center;
      height: 52px;
      border-bottom: 1px solid #eee; }
      @media screen and (max-width: 641px) {
        .wd-product-associations li li article .product-name,
        .prateleira li article .product-name {
          font-size: 12px;
          height: 70px;
          margin-bottom: 0; } }
    .wd-product-associations li li article .list-price,
    .prateleira li article .list-price {
      display: block;
      height: 20px; }
    .wd-product-associations li li article .sale-price,
    .prateleira li article .sale-price {
      font-size: 28px; }
      @media screen and (max-width: 769px) {
        .wd-product-associations li li article .sale-price,
        .prateleira li article .sale-price {
          font-size: 12px; } }
    .wd-product-associations li li article .condition,
    .prateleira li article .condition {
      font-size: 16px;
      font-weight: bold;
      color: #3E3E3E; }
      @media screen and (max-width: 641px) {
        .wd-product-associations li li article .condition,
        .prateleira li article .condition {
          font-size: 9px; } }
      .wd-product-associations li li article .condition .label,
      .prateleira li article .condition .label {
        color: #3E3E3E;
        font-size: 100%;
        padding: 0; }
    .wd-product-associations li li article .buy,
    .prateleira li article .buy {
      width: 203px;
      height: 46px;
      margin: 0 auto;
      border-radius: 23px;
      background-color: #6ebf55;
      font-family: "Flicker", sans-serif !important;
      color: white;
      text-align: center;
      font-size: 27px;
      display: block;
      line-height: 46px;
      margin-top: 0;
      opacity: 0;
      visibility: hidden;
      transition: all 300ms; }
      @media screen and (max-width: 769px) {
        .wd-product-associations li li article .buy,
        .prateleira li article .buy {
          margin-top: 15px;
          width: 90%;
          visibility: visible;
          opacity: 1;
          height: 36px;
          line-height: 36px;
          font-size: 17px; } }

.wd-product-line-medias a.thumb {
  padding: 0; }

.wd-product-medias-enlarger {
  display: none; }

.wd-product-media-selector {
  text-align: left; }

.wd-product-media-selector li.selected {
  border: 1px solid #eee; }

.zoom {
  border: 1px solid #eee;
  margin-bottom: 20px; }
  .zoom img {
    max-height: 100%; }

.wd-product-line-medias .variation img.current-img, .wd-product-line-medias .variation img.showing {
  margin: 0 auto; }

@media screen and (max-width: 769px) {
  .wd-product-list .wd-content > ul > li, .wd-product-list-set .wd-content .wd-panel > ul > li, .wd-product-list-set .wd-panel > ul > li, .wd-product-list > ul > li {
    width: 100% !important; } }
@media screen and (min-width: 641px) and (max-width: 1025px) {
  .wd-product-list .wd-content > ul > li, .wd-product-list-set .wd-content .wd-panel > ul > li, .wd-product-list-set .wd-panel > ul > li, .wd-product-list > ul > li {
    width: 50% !important; } }

.wd-product-line .variation img.fade.showing, .wd-product-line-medias .variation img.current-img, .wd-product-line-medias .variation img.showing {
  width: auto;
  width: auto;
  margin: 0 auto; }

@media screen and (max-width: 769px) {
  .wd-product-line .variation img.fade.showing, .wd-product-line-medias .variation img.current-img, .wd-product-line-medias .variation img.showing {
    width: auto !important;
    margin: 0 auto !important; } }

@media screen and (max-width: 769px) {
  .product-photo .wd-product-line-medias a {
    width: 100%;
    height: 100%; } }
/*
.homepage .full-banner .wd-marketing-banner .banner-wrapper,
.HomeRoute .full-banner .wd-marketing-banner .banner-wrapper {
  height: auto !important; }
@media screen and (max-width: 641px) {
  .homepage .full-banner .wd-marketing-banner img,
  .HomeRoute .full-banner .wd-marketing-banner img {
    width: 100%; } }
    */
.homepage .wd-marketing-banner.slider .slider-controller,
.HomeRoute .wd-marketing-banner.slider .slider-controller {
  bottom: -67px; }
.homepage .marcas,
.HomeRoute .marcas {
  margin-bottom: 80px;
  margin-top: 60px; }
.homepage .wd-product-list .wd-content > ul, .homepage .wd-product-list-set .wd-content .wd-panel > ul, .homepage .wd-product-list-set > wd-list, .homepage .wd-product-list > wd-list,
.HomeRoute .wd-product-list .wd-content > ul,
.HomeRoute .wd-product-list-set .wd-content .wd-panel > ul,
.HomeRoute .wd-product-list-set > wd-list,
.HomeRoute .wd-product-list > wd-list {
  margin: 0;
  padding: 0; }
.homepage .wd-marketing-banner.slider .slider-controller,
.HomeRoute .wd-marketing-banner.slider .slider-controller {
  width: 100%;
  text-align: center;
  height: 40px;
  line-height: 40px; }
  .homepage .wd-marketing-banner.slider .slider-controller li,
  .HomeRoute .wd-marketing-banner.slider .slider-controller li {
    float: none;
    display: inline-block;
    background-color: #8d0c4f;
    border-radius: 10px;
    font-size: 0;
    line-height: 1.5; }
    .homepage .wd-marketing-banner.slider .slider-controller li.current,
    .HomeRoute .wd-marketing-banner.slider .slider-controller li.current {
      width: 57px; }
.homepage .slider-legenda,
.HomeRoute .slider-legenda {
  margin-top: -10px;
  position: absolute;
  width: 100%; }
  @media screen and (max-width: 769px) {
    .homepage .slider-legenda,
    .HomeRoute .slider-legenda {
      white-space: nowrap;
      position: relative; } }
  .homepage .slider-legenda li,
  .HomeRoute .slider-legenda li {
    display: inline-block;
    text-align: center;
    margin-left: 20px;
    width: 260px;
    border-top: 1px solid white;
    padding-top: 5px;
    position: relative; }
    .homepage .slider-legenda li:before, .homepage .slider-legenda li:after,
    .HomeRoute .slider-legenda li:before,
    .HomeRoute .slider-legenda li:after {
      content: '';
      display: block;
      position: absolute;
      width: 1px;
      height: 10px;
      border: 1px solid white;
      top: -10px; }
    .homepage .slider-legenda li:before,
    .HomeRoute .slider-legenda li:before {
      left: 0; }
    .homepage .slider-legenda li:after,
    .HomeRoute .slider-legenda li:after {
      right: 0; }
    .homepage .slider-legenda li:first-of-type,
    .HomeRoute .slider-legenda li:first-of-type {
      width: 60px;
      margin-left: 0;
      text-align: left;
      padding-left: 10px; }
    .homepage .slider-legenda li:last-of-type,
    .HomeRoute .slider-legenda li:last-of-type {
      margin-right: 0; }
  .homepage .slider-legenda.dots,
  .HomeRoute .slider-legenda.dots {
    display: none; }
    .homepage .slider-legenda.dots:nth-of-type(2), .homepage .slider-legenda.dots:nth-of-type(3),
    .HomeRoute .slider-legenda.dots:nth-of-type(2),
    .HomeRoute .slider-legenda.dots:nth-of-type(3) {
      padding-left: 35px; }
.homepage .wd-brand-carousel li,
.HomeRoute .wd-brand-carousel li {
  width: auto;
  margin-right: 40px; }
  .homepage .wd-brand-carousel li img,
  .HomeRoute .wd-brand-carousel li img {
    width: auto; }
.homepage .prateleira article,
.HomeRoute .prateleira article {
  height: 425px; }
.homepage iframe,
.HomeRoute iframe {
  max-width: 100%;
  height: 210px; }
.homepage .bg-topo img,
.HomeRoute .bg-topo img {
  max-width: 1920px; }
@media screen and (max-width: 641px) {
  .homepage .bg-topo,
  .HomeRoute .bg-topo {
    position: absolute;
    opacity: .3; } }
@media screen and (max-width: 769px) {
  .homepage .scroll-legenda,
  .HomeRoute .scroll-legenda {
    overflow-x: auto; } }
.homepage .prateleira-filtro,
.HomeRoute .prateleira-filtro {
  background-color: #A60550;
  padding: 30px 0;
  position: relative;
  margin-top: 80px;
  margin-bottom: 80px; }
  .homepage .prateleira-filtro #slider,
  .HomeRoute .prateleira-filtro #slider {
    background: #684fb5;
    background: -moz-linear-gradient(left, #684fb5 0%, #9250b1 7%, #9250b1 15%, #9250b1 23%, #4abdbb 35%, #4abdbb 43%, #4abdbb 53%, #f59f12 63%, #f59f12 71%, #f59f12 79%, #1f9db6 87%, #1f9db6 95%, #1f9db6 100%);
    background: -webkit-linear-gradient(left, #684fb5 0%, #9250b1 7%, #9250b1 15%, #9250b1 23%, #4abdbb 35%, #4abdbb 43%, #4abdbb 53%, #f59f12 63%, #f59f12 71%, #f59f12 79%, #1f9db6 87%, #1f9db6 95%, #1f9db6 100%);
    background: linear-gradient(to right, #684fb5 0%, #9250b1 7%, #9250b1 15%, #9250b1 23%, #4abdbb 35%, #4abdbb 43%, #4abdbb 53%, #f59f12 63%, #f59f12 71%, #f59f12 79%, #1f9db6 87%, #1f9db6 95%, #1f9db6 100%);
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#684fb5', endColorstr='#1f9db6',GradientType=1 );
    height: 15px;
    border: 3px solid white;
    border-radius: 15px;
    margin-top: 30px;
    margin-bottom: 5px; }
  .homepage .prateleira-filtro .ui-slider-handle,
  .HomeRoute .prateleira-filtro .ui-slider-handle {
    width: 25px;
    height: 25px;
    border-radius: 20px;
    margin-top: -3px;
    background: white; }
  .homepage .prateleira-filtro:before, .homepage .prateleira-filtro:after,
  .HomeRoute .prateleira-filtro:before,
  .HomeRoute .prateleira-filtro:after {
    content: '';
    display: block;
    position: absolute;
    top: -34px;
    left: 0;
    background-image: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/images/borda-filtro.png?v=2');
    background-position: top center;
    background-repeat: no-repeat;
    width: 100%;
    height: 38px; }
  .homepage .prateleira-filtro:after,
  .HomeRoute .prateleira-filtro:after {
    top: auto;
    bottom: -34px;
    transform: rotate(180deg); }
  .homepage .prateleira-filtro .main-title,
  .HomeRoute .prateleira-filtro .main-title {
    text-align: center; }
  .homepage .prateleira-filtro .tabs,
  .HomeRoute .prateleira-filtro .tabs {
    color: white;
    position: relative; }
    .homepage .prateleira-filtro .tabs .tab-header,
    .HomeRoute .prateleira-filtro .tabs .tab-header {
      margin-bottom: 50px !important; }
      @media screen and (max-width: 769px) {
        .homepage .prateleira-filtro .tabs .tab-header,
        .HomeRoute .prateleira-filtro .tabs .tab-header {
          white-space: nowrap; } }
      .homepage .prateleira-filtro .tabs .tab-header li,
      .HomeRoute .prateleira-filtro .tabs .tab-header li {
        display: inline-block;
        margin-right: 56px;
        text-align: center;
        font-size: 11px; }
        .homepage .prateleira-filtro .tabs .tab-header li:first-of-type,
        .HomeRoute .prateleira-filtro .tabs .tab-header li:first-of-type {
          margin-right: 43px;
          margin-left: 10px; }
        .homepage .prateleira-filtro .tabs .tab-header li:nth-of-type(4), .homepage .prateleira-filtro .tabs .tab-header li:nth-of-type(7), .homepage .prateleira-filtro .tabs .tab-header li:nth-of-type(10),
        .HomeRoute .prateleira-filtro .tabs .tab-header li:nth-of-type(4),
        .HomeRoute .prateleira-filtro .tabs .tab-header li:nth-of-type(7),
        .HomeRoute .prateleira-filtro .tabs .tab-header li:nth-of-type(10) {
          margin-right: 50px; }
        .homepage .prateleira-filtro .tabs .tab-header li a,
        .HomeRoute .prateleira-filtro .tabs .tab-header li a {
          color: inherit; }
        .homepage .prateleira-filtro .tabs .tab-header li img,
        .HomeRoute .prateleira-filtro .tabs .tab-header li img {
          display: block; }
        .homepage .prateleira-filtro .tabs .tab-header li:last-of-type,
        .HomeRoute .prateleira-filtro .tabs .tab-header li:last-of-type {
          margin-right: 0; }
    .homepage .prateleira-filtro .tabs .tab-content,
    .HomeRoute .prateleira-filtro .tabs .tab-content {
      display: none; }
      .homepage .prateleira-filtro .tabs .tab-content.active,
      .HomeRoute .prateleira-filtro .tabs .tab-content.active {
        display: block; }
.homepage .prateleira-topo-2,
.HomeRoute .prateleira-topo-2 {
  margin-top: -20px; }
.homepage .prateleira-topo .wd-header,
.HomeRoute .prateleira-topo .wd-header {
  padding-left: 70px;
  text-transform: uppercase; }
.homepage .prateleira-topo .wd-footer,
.HomeRoute .prateleira-topo .wd-footer {
  display: none; }
.homepage .prateleira-topo .wd-icon,
.HomeRoute .prateleira-topo .wd-icon {
  width: 169px;
  height: 84px;
  background-image: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/images/todecacho.png');
  background-position: center;
  background-repeat: no-repeat;
  display: inline-block;
  margin-right: 10px;
  vertical-align: middle; }
.homepage .prateleira-topo .wd-title,
.HomeRoute .prateleira-topo .wd-title {
  display: inline-block;
  vertical-align: middle;
  margin-bottom: 0; }
.homepage .instafeed .main-title,
.HomeRoute .instafeed .main-title {
  text-align: center; }
.homepage .lancamento,
.HomeRoute .lancamento {
  padding-top: 40px;
  background-color: #f4f4f4;
  position: relative;
  margin-top: -50px;
  margin-bottom: 40px; }
  @media screen and (max-width: 641px) {
    .homepage .lancamento,
    .HomeRoute .lancamento {
      margin-top: 40px; } }
  .homepage .lancamento:before, .homepage .lancamento:after,
  .HomeRoute .lancamento:before,
  .HomeRoute .lancamento:after {
    content: '';
    display: block;
    position: absolute;
    top: -34px;
    left: 0;
    background-image: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/images/borda-produto.png');
    background-position: top center;
    background-repeat: no-repeat;
    width: 100%;
    height: 38px; }
  .homepage .lancamento:after,
  .HomeRoute .lancamento:after {
    top: auto;
    bottom: -34px;
    transform: rotate(180deg); }
  .homepage .lancamento .main-title,
  .homepage .lancamento .wd-title,
  .HomeRoute .lancamento .main-title,
  .HomeRoute .lancamento .wd-title {
    text-align: center; }
.homepage .videos .main-title,
.HomeRoute .videos .main-title {
  text-align: center; }
@media screen and (min-width: 480px) and (max-width: 641px) {
  .homepage .videos .col-sm-4,
  .HomeRoute .videos .col-sm-4 {
    width: 33%;
    float: left; } }
.homepage .wd-brand-carousel .wd-content .jcarousel-control-next span,
.HomeRoute .wd-brand-carousel .wd-content .jcarousel-control-next span {
  position: absolute;
  top: 20%;
  width: 29px;
  height: 67px;
  background-position: center;
  background-repeat: no-repeat;
  font-size: 0;
  background-color: #CDCDCD;
  box-shadow: none;
  border: none;
  z-index: 9999999;
  border-radius: 4px;
  right: 0;
  background-image: url('http://d830okm0xici6.cloudfront.net/custom/content/themes/salon-line/images/arrow-next.png'); }
.homepage .wd-brand-carousel .wd-content .jcarousel-control-prev span,
.HomeRoute .wd-brand-carousel .wd-content .jcarousel-control-prev span {
  position: absolute;
  top: 20%;
  width: 29px;
  height: 67px;
  background-position: center;
  background-repeat: no-repeat;
  font-size: 0;
  background-color: #CDCDCD;
  box-shadow: none;
  border: none;
  z-index: 9999999;
  border-radius: 4px;
  left: 0;
  background-image: url('http://d830okm0xici6.cloudfront.net/custom/content/themes/salon-line/images/arrow-prev.png'); }

.slick-slider {
  position: relative;
  display: block;
  box-sizing: border-box;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  -webkit-touch-callout: none;
  -khtml-user-select: none;
  -ms-touch-action: pan-y;
  touch-action: pan-y;
  -webkit-tap-highlight-color: transparent; }

.slick-list {
  position: relative;
  display: block;
  overflow: hidden;
  margin: 0;
  padding: 0; }

.slick-list:focus {
  outline: 0; }

.slick-list.dragging {
  cursor: pointer;
  cursor: hand; }

.slick-slider .slick-list, .slick-slider .slick-track {
  -webkit-transform: translate3d(0, 0, 0);
  -moz-transform: translate3d(0, 0, 0);
  -ms-transform: translate3d(0, 0, 0);
  -o-transform: translate3d(0, 0, 0);
  transform: translate3d(0, 0, 0); }

.slick-track {
  position: relative;
  top: 0;
  left: 0;
  display: block;
  margin-left: auto;
  margin-right: auto; }

.slick-track:after, .slick-track:before {
  display: table;
  content: ''; }

.slick-track:after {
  clear: both; }

.slick-loading .slick-track {
  visibility: hidden; }

.slick-slide {
  display: none;
  float: left;
  height: 100%;
  min-height: 1px; }

[dir=rtl] .slick-slide {
  float: right; }

.slick-slide img {
  display: block; }

.slick-slide.slick-loading img {
  display: none; }

.slick-slide.dragging img {
  pointer-events: none; }

.slick-initialized .slick-slide {
  display: block; }

.slick-loading .slick-slide {
  visibility: hidden; }

.slick-vertical .slick-slide {
  display: block;
  height: auto;
  border: 1px solid transparent; }

.slick-arrow.slick-hidden {
  display: none; }
.slick-slider {
  position: relative; }
  .slick-slider .slick-prev,
  .slick-slider .slick-next {
    position: absolute;
    top: 20%;
    width: 29px;
    height: 67px;
    background-position: center;
    background-repeat: no-repeat;
    font-size: 0;
    background-color: #CDCDCD;
    box-shadow: none;
    border: none;
    z-index: 9999999;
    border-radius: 4px; }
    @media screen and (min-width: 641px) and (max-width: 1025px) {
      .slick-slider .slick-prev,
      .slick-slider .slick-next {
        top: 35%;
        z-index: 99999; } }
  .slick-slider .slick-prev {
    left: 15px;
    background-image: url('https://d830okm0xici6.cloudfront.net/custom/content/themes/salon-line/images/arrow-prev.png'); }
    @media screen and (max-width: 641px) {
      .slick-slider .slick-prev {
        left: -20px; } }
    @media screen and (min-width: 641px) and (max-width: 1025px) {
      .slick-slider .slick-prev {
        left: 0; } }
  .slick-slider .slick-next {
    right: 15px;
    background-image: url('https://d830okm0xici6.cloudfront.net/custom/content/themes/salon-line/images/arrow-next.png'); }
    @media screen and (max-width: 641px) {
      .slick-slider .slick-next {
        right: -20px; } }
    @media screen and (min-width: 641px) and (max-width: 1025px) {
      .slick-slider .slick-next {
        right: 0; } }

.institutional .institutional-nav {
  text-align: center;
  border: 1px solid #ccc;
  margin-bottom: 20px; }
  .institutional .institutional-nav li {
    display: inline-block;
    margin-right: 30px;
    padding: 15px 0;
    position: relative;
    text-transform: uppercase; }
    @media screen and (max-width: 641px) {
      .institutional .institutional-nav li {
        display: block;
        margin-right: 0; } }
    .institutional .institutional-nav li:hover {
      font-weight: bold; }
      .institutional .institutional-nav li:hover .submenu {
        visibility: visible;
        opacity: 1;
        margin-top: 5px; }
    .institutional .institutional-nav li .submenu {
      position: absolute;
      padding: 10px;
      box-shadow: 0 0 10px 0 #999;
      margin-top: 30px;
      opacity: 0;
      visibility: hidden;
      z-index: 99999;
      min-width: 300px;
      transition: all 300ms;
      background-color: white; }
      .institutional .institutional-nav li .submenu li {
        display: block;
        padding: 0;
        text-align: left;
        width: 100%;
        margin: 0;
        margin-bottom: 10px; }
.institutional-title {
  text-transform: uppercase;
  margin-top: 0; }
  .institutional-title small {
    display: block;
    font-size: .4em; }
.institutional .institutional-form {
  background-color: #f3f3f3;
  padding: 25px;
  box-shadow: 0 0 24px 0 #ccc; }
  .institutional .institutional-form h3 {
    font-family: "Flicker", sans-serif !important;
    color: #8d0c4f; }
  .institutional .institutional-form span,
  .institutional .institutional-form strong {
    display: block; }
  .institutional .institutional-form .bt-clear {
    display: none; }
  .institutional .institutional-form label {
    margin-top: 10px; }
  .institutional .institutional-form .bt-submit {
    margin-top: 10px;
    display: block;
    margin: 10px auto;
    width: 150px;
    height: 36px;
    background-color: #8d0c4f;
    line-height: 36px;
    font-size: 18px;
    box-shadow: none;
    float: none; }
    .institutional .institutional-form .bt-submit:before, .institutional .institutional-form .bt-submit:after {
      display: none; }
  .institutional .institutional-form h2 {
    margin-top: 0; }
  .institutional .institutional-form label {
    display: block;
    font-weight: normal;
    margin-bottom: 0; }
  .institutional .institutional-form input,
  .institutional .institutional-form select,
  .institutional .institutional-form textarea {
    display: block;
    height: 38px;
    line-height: 38px;
    border-radius: 2px;
    width: 100%;
    box-shadow: 0 2px 0 0 #eee;
    border: none;
    padding-left: 10px; }
  .institutional .institutional-form textarea {
    height: 160px;
    resize: none; }
  .institutional .institutional-form .col-md-6 {
    margin-top: 20px; }
    .institutional .institutional-form .col-md-6:last-of-type {
      padding: 0; }
  .institutional .institutional-form .upload-file {
    margin-top: 10px;
    font-size: 13px; }
    .institutional .institutional-form .upload-file i {
      margin-right: 5px; }
  .institutional .institutional-form button {
    height: 38px;
    color: white;
    background-color: #00ACBF;
    float: left;
    box-shadow: 1px 2px 0px 0px #007e8c;
    border: 0;
    position: relative;
    text-transform: uppercase;
    width: 110px; }
    .institutional .institutional-form button:after {
      width: 0;
      height: 0;
      border-style: solid;
      border-width: 19px 0 19px 11px;
      border-color: transparent transparent transparent #00ACBF;
      content: '';
      position: absolute;
      right: -11px;
      top: 0; }
    .institutional .institutional-form button:before {
      width: 0;
      height: 0;
      border-style: solid;
      border-width: 19px 0 19px 11px;
      border-color: transparent transparent transparent #007e8c;
      content: '';
      position: absolute;
      right: -12px;
      top: 2px; }
  .institutional .institutional-form input[type=file] {
    position: absolute;
    width: 100%;
    height: 100%;
    left: 0;
    top: 0;
    opacity: 0; }

.accordion {
  margin-top: 20px; }
  .accordion-quest {
    cursor: pointer;
    margin: 0px;
    width: 100%;
    font-size: 15px;
    border-bottom: 1px solid #DCDCDC; }
    .accordion-quest.active {
      background-color: #F5F5F5;
      border: none; }
      .accordion-quest.active h5:before {
        transform: rotate(90deg);
        left: 10px; }
  .accordion h5 {
    display: block;
    padding: 13px 0px;
    font-weight: lighter;
    padding-left: 40px;
    position: relative;
    margin: 0; }
    .accordion h5:before {
      content: '\203A';
      position: absolute;
      font-size: 24px;
      transition: all 300ms;
      transform: rotate(-90deg);
      left: 10px;
      top: 10px;
      width: 20px;
      height: 20px;
      line-height: 10px;
      text-align: center;
      transform-origin: center; }
    .accordion h5 span {
      margin-right: 10px;
      top: 1px;
      transition: all .3s;
      margin-top: 4px;
      margin-right: 15px; }
  .accordion .accordion-content {
    padding: 0 40px 20px;
    display: none; }
    .accordion .accordion-content p {
      border-left: 3px solid #8d0c4f;
      padding-left: 20px;
      font-weight: 300;
      padding-bottom: 10px; }
      .accordion .accordion-content p strong {
        color: #00ACBF;
        margin-bottom: 10px;
        display: block; }

.politicas h1 {
  font-size: 40px;
  font-weight: lighter;
  margin: 9px 0px 20px 0px; }
.politicas p {
  font-weight: lighter; }

.filtro-coluna {
  padding: 0;
  width: 280px;
  float: left; }
  @media screen and (max-width: 1025px) {
    .filtro-coluna {
      width: 100%; } }
  .filtro-coluna .wd-facet-group .facets .facet-type .facet-type-list .option-count {
    color: #8d0c4f;
    float: right;
    display: block; }
  .filtro-coluna .wd-facet-group .facets .facet-type .facet-type-list .option-title {
    display: inline-block;
    max-width: 80%; }
  .filtro-coluna li {
    border-bottom: 1px solid #ddd; }
    .filtro-coluna li p {
      display: block;
      padding-top: 10px;
      margin-bottom: 10px;
      width: 100%; }
  .filtro-coluna .facets {
    padding-left: 0;
    padding-right: 0; }
  .filtro-coluna .wd-facet-type-range .range-wrapper {
    background-color: transparent;
    border: none; }
    .filtro-coluna .wd-facet-type-range .range-wrapper .range2h .defined-range {
      background-color: #00ACBF; }

.filtro-destaque {
  text-align: center;
  background-color: #f6f6f6;
  margin-top: 30px; }
  .filtro-destaque li {
    margin: 10px 15px;
    background-color: white;
    color: #3f3f3f;
    padding: 0 10px;
    display: inline-block;
    border-bottom: 1px solid #ddd; }
    .filtro-destaque li a {
      display: block;
      padding-top: 10px;
      margin-bottom: 10px; }
    .filtro-destaque li .option-name {
      display: inline-block; }
    .filtro-destaque li .option-count {
      color: #8d0c4f;
      float: right; }

.category-description {
  margin-top: 20px;
  overflow: hidden; }
  @media screen and (max-width: 1025px) {
    .category-description {
      display: none; } }
  .category-description .wd-title {
    text-align: center;
    margin-bottom: 20px; }
  .category-description .wd-custom-html {
    color: #3f3f3f;
    font-size: 12px;
    text-align: center; }
    .category-description .wd-custom-html .wd-content {
      height: 55px; }

.ver-mais {
  color: red;
  display: block;
  text-align: center;
  font-size: 12px; }

.prateleira-conteudo {
  float: left;
  width: 910px;
  margin-left: 30px;
  position: relative; }
  @media screen and (max-width: 1025px) {
    .prateleira-conteudo {
      width: 100%;
      margin-left: 0;
      margin: 0 auto; } }
  .prateleira-conteudo .wd-browsing-auction-list > ul > li, .prateleira-conteudo .wd-browsing-grid-list > ul > li, .prateleira-conteudo .wd-browsing-grid > ul > li {
    width: 33%; }
    @media screen and (max-width: 480px) {
      .prateleira-conteudo .wd-browsing-auction-list > ul > li, .prateleira-conteudo .wd-browsing-grid-list > ul > li, .prateleira-conteudo .wd-browsing-grid > ul > li {
        width: 50%;
        float: left;
        margin: 0 auto; } }
    @media screen and (min-width: 480px) and (max-width: 641px) {
      .prateleira-conteudo .wd-browsing-auction-list > ul > li, .prateleira-conteudo .wd-browsing-grid-list > ul > li, .prateleira-conteudo .wd-browsing-grid > ul > li {
        width: 50%;
        float: left;
        margin: 0 auto; } }
  .prateleira-conteudo .wd-browsing-grid-sorter {
    position: absolute;
    top: 32px;
    left: 0;
    width: 100%;
    background: #f2f2f2;
    padding: 5px;
    text-align: right;
    margin-top: -1px; }
    .prateleira-conteudo .wd-browsing-grid-sorter select {
      border: 1px solid #eee; }
  .prateleira-conteudo #content-wrapper {
    margin-left: 0;
    margin-right: 0; }
    .prateleira-conteudo #content-wrapper header {
      display: none; }
    .prateleira-conteudo #content-wrapper footer {
      border: none;
      background: transparent;
      margin-top: 0; }
      .prateleira-conteudo #content-wrapper footer .page-number {
        float: none;
        text-align: center;
        display: block; }
      .prateleira-conteudo #content-wrapper footer .pagination,
      .prateleira-conteudo #content-wrapper footer .product-count {
        display: none; }

.wd-facet-group .facets, .wd-facet-group .selected-facets {
  background-color: transparent;
  border: none; }

.wd-facet-group .facets h3 {
  font-weight: 600; }

.wd-facet-group .facets .facet-type {
  margin-bottom: 20px;
  color: #3E3E3E; }
  .wd-facet-group .facets .facet-type a {
    color: #3E3E3E; }

.wd-facet-group .facets .facet-type .facet-type-list .facet-title {
  border-bottom: 1px solid #8d0c4f;
  color: #8d0c4f;
  margin-bottom: 10px;
  text-transform: uppercase;
  border-top: none; }
  .wd-facet-group .facets .facet-type .facet-type-list .facet-title h3 {
    font-size: 20px;
    font-weight: normal;
    margin: 0; }
  .wd-facet-group .facets .facet-type .facet-type-list .facet-title:before {
    float: right;
    border: none;
    color: #8d0c4f; }

.wd-facet-group .facets .facet-type p {
  margin-bottom: 0;
  cursor: pointer; }
  .wd-facet-group .facets .facet-type p:before {
    content: '';
    width: 12px;
    height: 12px;
    border-radius: 2px;
    border: 1px solid #dbdbdb;
    display: inline-block;
    margin-right: 7px;
    vertical-align: middle;
    margin-bottom: 5px;
    font-size: 10px;
    font-weight: bold;
    text-align: center;
    line-height: 12px;
    transition: all 300ms; }

.wd-facet-group .facets .facet-type p.ativo {
  margin-bottom: 0; }
  .wd-facet-group .facets .facet-type p.ativo:before {
    content: "\2713 ";
    background-color: #8d0c4f;
    color: white; }

.wd-facet-group .facets .facet-type .facet-type-list .option-title {
  color: #3E3E3E;
  display: block;
  margin-bottom: 10px; }

.wd-facet-group .facets .facet-type .facet-type-list .option-count {
  display: none; }

@media screen and (max-width: 1025px) {
  .category-banner {
    height: auto !important; }
    .category-banner .banner-wrapper {
      height: auto !important; } }
.category-banner img {
  max-width: none;
  width: 1920px;
  position: absolute;
  left: 50%;
  margin-left: -960px;
  z-index: -1; }
  @media screen and (max-width: 1025px) {
    .category-banner img {
      height: auto !important;
      width: 100% !important; } }

@media screen and (max-width: 1025px) {
  .open-filter-mobile {
    text-align: center;
    display: block;
    height: 40px;
    line-height: 40px;
    background: #8d0c4f;
    color: white !important;
    font-size: 18px; } }

@media screen and (max-width: 1025px) {
  .filtro-coluna .wd-facet-group .facets, .filtro-coluna .wd-facet-group .selected-facets {
    background-color: white; }
  .filtro-coluna .wd-facet-group .facets .facet-type .facet-type-list .option-title {
    color: #3E3E3E; }
  .filtro-coluna .wd-facet-group .facets .facet-type .facet-type-list .facet-title::before {
    display: none; }

  .filtro-coluna > div {
    height: 0;
    overflow: hidden;
    display: none; }
    .filtro-coluna > div.active {
      height: auto;
      display: block; }
      .filtro-coluna > div.active nav {
        padding: 5px; }
      .filtro-coluna > div.active h3 {
        font-weight: bold;
        font-size: 14px;
        border-top: 1px solid #ccc;
        border-bottom: 1px solid #ccc;
        padding: 10px;
        margin-bottom: 10px; }
      .filtro-coluna > div.active h4 {
        line-height: 40px; }
      .filtro-coluna > div.active .wd-header {
        display: none; }
      .filtro-coluna > div.active .sub-section {
        position: relative; }

  .prateleira-conteudo .wd-browsing-grid-sorter {
    top: -40px;
    left: 0;
    display: block;
    width: 100%;
    text-align: center; } }
  @media screen and (max-width: 1025px) and (max-width: 1025px) {
    .prateleira-conteudo .wd-browsing-grid-sorter {
      display: none; } }

.detalhe-produto .wd-product-associations {
  position: relative; }
.detalhe-produto .produtos-relacionados .wd-product-associations:not(:first-of-type) {
  display: none; }
.detalhe-produto .label {
  color: #3E3E3E;
  padding: 0;
  font-weight: normal; }
.detalhe-produto .main-title,
.detalhe-produto .wd-title {
  text-align: center; }
.detalhe-produto .wd-flags {
  position: absolute;
  top: 10px;
  left: 30px;
  z-index: 99999999; }
.detalhe-produto .nome-produto {
  /*font-family: "Flicker", sans-serif !important;*/
  font-family: "Quicksand", sans-serif !important;
  font-size: 28px;
  margin-bottom: 30px; }
  @media screen and (max-width: 769px) {
    .detalhe-produto .nome-produto {
      margin-bottom: 10px; } }
@media screen and (max-width: 769px) {
  .detalhe-produto .produto-descricao-curta p {
    margin: 0; } }
.detalhe-produto .zoom img {
  max-height: auto; }
  @media screen and (max-width: 769px) {
    .detalhe-produto .zoom img {
      max-height: 100%;
      max-width: 100%;
      height: auto; } }
.detalhe-produto .wd-product-amount .js-qty.single {
  width: 64px;
  height: 36px;
  line-height: 36px;
  border-radius: 36px;
  text-align: center;
  padding-right: 5px;
  color: #3E3E3E;
  font-weight: bold;
  box-shadow: none;
  border: 1px solid #ccc; }
.detalhe-produto .js-qty-more,
.detalhe-produto .js-qty-less {
  width: 17px;
  height: 17px;
  border-radius: 17px;
  color: white;
  line-height: 15px;
  font-size: 14px;
  text-align: center;
  display: inline-block;
  background-color: #393939;
  padding: 0; }
.detalhe-produto .btn-buy {
  background-color: #6ebf55;
  width: 370px;
  height: 78px;
  line-height: 78px;
  border-radius: 78px;
  color: white;
  text-align: center;
  font-family: "Flicker", sans-serif !important;
  border: none;
  box-shadow: none;
  font-size: 40px; }
  @media screen and (max-width: 769px) {
    .detalhe-produto .btn-buy {
      width: 100%;
      height: 58px;
      line-height: 58px;
      border-radius: 58px;
      font-size: 30px; } }
.detalhe-produto .preco-produto {
  margin-top: 30px;
  margin-bottom: 40px; }
  @media screen and (max-width: 769px) {
    .detalhe-produto .preco-produto {
      margin-top: 0;
      margin-bottom: 10px; } }
  .detalhe-produto .preco-produto .prefix {
    display: block;
    font-size: 22px;
    font-weight: normal; }
  .detalhe-produto .preco-produto .list-price {
    font-size: .4em; }
    .detalhe-produto .preco-produto .list-price .prefix {
      display: inline-block;
      font-size: inherit; }
  .detalhe-produto .preco-produto .priceContainer {
    font-size: 40px; }
  .detalhe-produto .preco-produto .wd-product-price-description .condition,
  .detalhe-produto .preco-produto .wd-product-price-description .savings {
    font-size: 18px; }
.detalhe-produto .produto-comprar {
  text-align: center; }
  .detalhe-produto .produto-comprar .sprite-site-seguro {
    margin-top: 25px; }
    @media screen and (max-width: 769px) {
      .detalhe-produto .produto-comprar .sprite-site-seguro {
        margin-top: 0;
        margin-bottom: 20px;
        display: inline-block; } }
.detalhe-produto .wd-product-amount {
  margin-top: 30px;
  margin-left: 20px; }
.detalhe-produto .compre-junto,
.detalhe-produto .produtos-relacionados {
  background-color: #f4f4f4;
  position: relative;
  margin: 80px 0; }
  .detalhe-produto .compre-junto:before, .detalhe-produto .compre-junto:after,
  .detalhe-produto .produtos-relacionados:before,
  .detalhe-produto .produtos-relacionados:after {
    content: '';
    display: block;
    position: absolute;
    top: -34px;
    left: 0;
    background-image: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/images/borda-produto.png');
    background-position: top center;
    background-repeat: no-repeat;
    width: 100%;
    height: 38px; }
  .detalhe-produto .compre-junto:after,
  .detalhe-produto .produtos-relacionados:after {
    top: auto;
    bottom: -34px;
    transform: rotate(180deg); }
  .detalhe-produto .compre-junto .first,
  .detalhe-produto .produtos-relacionados .first {
    margin-right: 200px; }
    @media screen and (min-width: 641px) and (max-width: 1025px) {
      .detalhe-produto .compre-junto .first,
      .detalhe-produto .produtos-relacionados .first {
        margin-right: 100px; } }
  .detalhe-produto .compre-junto .wd-product-list-buytogether,
  .detalhe-produto .produtos-relacionados .wd-product-list-buytogether {
    position: relative; }
  .detalhe-produto .compre-junto li .wd-product-asyncprice,
  .detalhe-produto .produtos-relacionados li .wd-product-asyncprice {
    display: none; }
  .detalhe-produto .compre-junto .wd-product-list-buytogether.cross-sell .cross-sell-product,
  .detalhe-produto .produtos-relacionados .wd-product-list-buytogether.cross-sell .cross-sell-product {
    padding: 10px;
    border-radius: 4px;
    background: white;
    width: 269px;
    border: 1px solid #eee;
    transition: all 300ms; }
    @media screen and (min-width: 641px) and (max-width: 1025px) {
      .detalhe-produto .compre-junto .wd-product-list-buytogether.cross-sell .cross-sell-product,
      .detalhe-produto .produtos-relacionados .wd-product-list-buytogether.cross-sell .cross-sell-product {
        width: 190px; }
        .detalhe-produto .compre-junto .wd-product-list-buytogether.cross-sell .cross-sell-product .wd-flags img,
        .detalhe-produto .produtos-relacionados .wd-product-list-buytogether.cross-sell .cross-sell-product .wd-flags img {
          max-height: 50px;
          width: auto; }
        .detalhe-produto .compre-junto .wd-product-list-buytogether.cross-sell .cross-sell-product a.thumb,
        .detalhe-produto .produtos-relacionados .wd-product-list-buytogether.cross-sell .cross-sell-product a.thumb {
          width: 180px !important; }
          .detalhe-produto .compre-junto .wd-product-list-buytogether.cross-sell .cross-sell-product a.thumb img,
          .detalhe-produto .produtos-relacionados .wd-product-list-buytogether.cross-sell .cross-sell-product a.thumb img {
            width: auto;
            margin: 0 auto; } }
    .detalhe-produto .compre-junto .wd-product-list-buytogether.cross-sell .cross-sell-product:hover,
    .detalhe-produto .produtos-relacionados .wd-product-list-buytogether.cross-sell .cross-sell-product:hover {
      box-shadow: 0 0 16px 0 #999; }
    .detalhe-produto .compre-junto .wd-product-list-buytogether.cross-sell .cross-sell-product div.name,
    .detalhe-produto .produtos-relacionados .wd-product-list-buytogether.cross-sell .cross-sell-product div.name {
      padding-bottom: 10px;
      border-bottom: 1px solid #eee; }
    .detalhe-produto .compre-junto .wd-product-list-buytogether.cross-sell .cross-sell-product .produto-preco .sale-price,
    .detalhe-produto .produtos-relacionados .wd-product-list-buytogether.cross-sell .cross-sell-product .produto-preco .sale-price {
      font-size: 28px;
      color: #2c2c2c; }
    .detalhe-produto .compre-junto .wd-product-list-buytogether.cross-sell .cross-sell-product .produto-preco .label,
    .detalhe-produto .produtos-relacionados .wd-product-list-buytogether.cross-sell .cross-sell-product .produto-preco .label {
      font-weight: bold;
      font-size: 100%; }
    .detalhe-produto .compre-junto .wd-product-list-buytogether.cross-sell .cross-sell-product .produto-preco .condition,
    .detalhe-produto .produtos-relacionados .wd-product-list-buytogether.cross-sell .cross-sell-product .produto-preco .condition {
      font-size: 16px;
      font-weight: bold;
      color: #2c2c2c; }
  .detalhe-produto .compre-junto .wd-product-list-buytogether.cross-sell .plus,
  .detalhe-produto .produtos-relacionados .wd-product-list-buytogether.cross-sell .plus {
    left: 33%;
    top: 30%;
    font-weight: lighter;
    font-size: 61px; }
  .detalhe-produto .compre-junto .cross-sell-footer,
  .detalhe-produto .produtos-relacionados .cross-sell-footer {
    position: absolute;
    right: 0;
    top: 10px;
    width: 25%;
    height: 90%;
    background-color: transparent;
    overflow: visible; }
    .detalhe-produto .compre-junto .cross-sell-footer:before,
    .detalhe-produto .produtos-relacionados .cross-sell-footer:before {
      content: '=';
      display: block;
      font-size: 61px;
      color: black;
      z-index: 999;
      position: absolute;
      top: 56%;
      left: -89px;
      color: #3E3E3E; }
    .detalhe-produto .compre-junto .cross-sell-footer .total,
    .detalhe-produto .produtos-relacionados .cross-sell-footer .total {
      position: absolute;
      top: 170px;
      text-align: left;
      float: left; }
    .detalhe-produto .compre-junto .cross-sell-footer .no-variation-selected,
    .detalhe-produto .produtos-relacionados .cross-sell-footer .no-variation-selected {
      margin: 0;
      height: auto;
      line-height: 1.5;
      position: relative; }
    .detalhe-produto .compre-junto .cross-sell-footer .btn-buy,
    .detalhe-produto .produtos-relacionados .cross-sell-footer .btn-buy {
      background-color: transparent;
      color: #6ebf55;
      border: 2px solid #6ebf55;
      text-transform: uppercase;
      height: 78px;
      line-height: 78px;
      box-shadow: none;
      width: 307px;
      margin: 20px 0;
      padding: 0;
      font-size: 40px;
      margin-top: 280px; }
      @media screen and (min-width: 641px) and (max-width: 1025px) {
        .detalhe-produto .compre-junto .cross-sell-footer .btn-buy,
        .detalhe-produto .produtos-relacionados .cross-sell-footer .btn-buy {
          width: 237px;
          font-size: 30px; } }

.wd-product-notifymewhenavailable-modal .the-modal {
  max-width: 50%; }

.detalhe-produto .compre-junto .wd-product-list-buytogether.cross-sell .plus, .detalhe-produto .produtos-relacionados .wd-product-list-buytogether.cross-sell .plus {
  left: 28%;
  top: 50%;
  font-weight: 500; }
  @media screen and (min-width: 641px) and (max-width: 1025px) {
    .detalhe-produto .compre-junto .wd-product-list-buytogether.cross-sell .plus, .detalhe-produto .produtos-relacionados .wd-product-list-buytogether.cross-sell .plus {
      left: 31%; } }

@media screen and (max-width: 769px) {
  .wd-buy-button, .wd-buy-button .wd-content {
    display: block !important; } }

@media screen and (max-width: 769px) {
  .wd-product-medias {
    margin-top: 20px; } }

@media screen and (max-width: 769px) {
  .info {
    padding: 0 15px; } }

.login-page,
.signup-page {
  width: 80%;
  margin: 30px auto; }
  .login-page .wd-profile-login,
  .login-page .register,
  .signup-page .wd-profile-login,
  .signup-page .register {
    width: 45%;
    float: left; }
  .login-page .wd-profile-login,
  .signup-page .wd-profile-login {
    margin-right: 10%; }
  .login-page .wd-title,
  .signup-page .wd-title {
    font-size: 38px;
    text-transform: uppercase; }
  .login-page fieldset,
  .signup-page fieldset {
    margin-bottom: 40px; }
    .login-page fieldset > span,
    .signup-page fieldset > span {
      display: block;
      width: 100%;
      font-weight: bold;
      font-size: 24px; }
  .login-page .wd-subtitle,
  .signup-page .wd-subtitle {
    text-transform: uppercase;
    color: #999999;
    font-weight: lighter;
    font-size: 30px;
    margin-bottom: 25px;
    border-bottom: 1px solid #ccc; }
  .login-page fieldset .input-wrapper,
  .signup-page fieldset .input-wrapper {
    width: 48%;
    margin-right: 4%;
    float: left;
    margin-bottom: 30px; }
    .login-page fieldset .input-wrapper:nth-of-type(2n+2),
    .signup-page fieldset .input-wrapper:nth-of-type(2n+2) {
      margin-right: 0; }
      .login-page fieldset .input-wrapper:nth-of-type(2n+2).addorsetaddress-0-name, .login-page fieldset .input-wrapper:nth-of-type(2n+2).addorsetcustomer-name,
      .signup-page fieldset .input-wrapper:nth-of-type(2n+2).addorsetaddress-0-name,
      .signup-page fieldset .input-wrapper:nth-of-type(2n+2).addorsetcustomer-name {
        margin-right: 4%; }
  .login-page input:not([type=radio]),
  .login-page select,
  .signup-page input:not([type=radio]),
  .signup-page select {
    height: 40px;
    line-height: 40px;
    border-radius: 2px;
    border: 1px solid #ddd;
    display: block;
    width: 100%;
    padding-left: 10px; }
  .login-page .wd-profile-login label,
  .signup-page .wd-profile-login label {
    display: block;
    width: 100%;
    margin-top: 10px; }
  .login-page .customer-type,
  .signup-page .customer-type {
    width: 100%; }
  .login-page .customer-type-radio label,
  .signup-page .customer-type-radio label {
    padding: 5px 15px;
    background-color: #eee;
    border: 1px solid #ccc;
    margin-right: 10px; }
    .login-page .customer-type-radio label.active,
    .signup-page .customer-type-radio label.active {
      background-color: #00ACBF;
      color: white; }
  .login-page .customer-type-radio input[type=radio],
  .signup-page .customer-type-radio input[type=radio] {
    display: none; }
  .login-page button,
  .login-page .register-now,
  .signup-page button,
  .signup-page .register-now {
    border: none;
    box-shadow: none;
    color: white !important;
    width: 100%;
    font-weight: bold;
    height: 40px;
    line-height: 40px;
    background-color: #5dbfb5;
    display: block;
    margin-bottom: 10px;
    text-align: center; }
  .login-page .wd-profile-login .wd-content .password,
  .signup-page .wd-profile-login .wd-content .password {
    width: 100%; }

.wd-browsing-wishlist-search .wd-title {
  display: none; }

.open-lista:hover .wishlist-popup {
  opacity: 1;
  visibility: visible; }

.wishlist-popup {
  background-color: #ECECEC;
  width: 640px;
  height: 195px;
  position: absolute;
  z-index: 9;
  left: -250px;
  box-shadow: 0 0 16px 0 #999;
  opacity: 0;
  visibility: hidden;
  transition: all 300ms;
  border-bottom: 6px solid #8d0c4f; }
  .wishlist-popup .col-md-4 {
    background-color: white;
    box-shadow: 2px 0 4px 0 #ccc; }
  .wishlist-popup label {
    text-transform: uppercase; }
  .wishlist-popup button {
    text-transform: uppercase; }
  .wishlist-popup .button-create {
    box-shadow: none;
    background-color: transparent;
    width: 100%;
    text-align: left;
    border: none;
    margin-bottom: 24px;
    float: none !important;
    font-size: 13px; }
    .wishlist-popup .button-create:before {
      content: '';
      display: inline-block;
      margin-right: 5px;
      width: 20px;
      height: 20px;
      vertical-align: bottom;
      background-image: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/images/cria-lista.png');
      background-position: center center;
      background-repeat: no-repeat; }
  .wishlist-popup .gerencia-lista {
    border: 1px solid #999;
    display: block;
    height: 40px;
    line-height: 40px;
    text-align: center;
    text-transform: uppercase;
    font-weight: bold;
    font-size: 13px; }
    .wishlist-popup .gerencia-lista:before {
      content: '';
      display: inline-block;
      margin-right: 5px;
      width: 20px;
      height: 20px;
      vertical-align: middle;
      background-image: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/images/gerencia-lista.png');
      background-position: center center;
      background-repeat: no-repeat; }
  .wishlist-popup .busca-lista:before {
    content: '';
    display: inline-block;
    margin-right: 5px;
    width: 20px;
    height: 20px;
    vertical-align: bottom;
    background-image: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/images/busca-lista.png');
    background-position: center center;
    background-repeat: no-repeat; }
  .wishlist-popup .button-wrapper button {
    height: 38px;
    color: white;
    background-color: #5dbfb5;
    float: left;
    box-shadow: 1px 2px 0px 0px #42a79d;
    border: 0;
    position: relative;
    text-transform: uppercase;
    width: 171px;
    float: right; }
    .wishlist-popup .button-wrapper button:before {
      content: '';
      display: inline-block;
      margin-right: 10px;
      width: 20px;
      height: 20px;
      vertical-align: middle;
      background-image: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/images/icon-busca-branco.png');
      background-position: center center;
      background-repeat: no-repeat; }
  .wishlist-popup input {
    height: 40px;
    background-color: white;
    box-shadow: 1px 0 4px 0 #ccc;
    display: block;
    width: 100%;
    border: none;
    padding-left: 10px; }
  .wishlist-popup .col-md-4,
  .wishlist-popup .col-md-8 {
    padding: 30px;
    height: 100%; }

.page-account-wishlist input,
.page-account-wishlist select,
.page-account-wishlist textarea {
  padding-left: 10px; }
.page-account-wishlist .filtro-coluna {
  border: 1px solid #dcdcdc;
  margin-top: 25px;
  text-transform: uppercase; }
  .page-account-wishlist .filtro-coluna li {
    padding-left: 10px;
    margin-bottom: 15px; }
    .page-account-wishlist .filtro-coluna li.titulo {
      border-bottom: 1px solid #ccc;
      margin-bottom: 10px;
      padding: 10px 15px;
      display: block; }
  .page-account-wishlist .filtro-coluna .sub-menu {
    font-size: 14px; }
.page-account-wishlist .list-button-container button.open-mode-list {
  font-size: 16px;
  background-color: #b5b5b5;
  box-shadow: 1px 2px 0px 0px #919191; }
  .page-account-wishlist .list-button-container button.open-mode-list:after {
    border-color: transparent transparent transparent #b5b5b5; }
  .page-account-wishlist .list-button-container button.open-mode-list:before {
    border-color: transparent transparent transparent #919191; }
.page-account-wishlist .list-manage-tab .col-md-10 {
  padding-left: 0; }
.page-account-wishlist .list-manage-tab .tabs-list {
  background-color: #f6f6f6;
  padding: 13px 0; }
  .page-account-wishlist .list-manage-tab .tabs-list li {
    display: inline-block;
    height: 25px;
    padding: 0 15px;
    line-height: 25px;
    border-right: 1px solid #d2d2d2;
    text-transform: uppercase; }
    .page-account-wishlist .list-manage-tab .tabs-list li:last-of-type {
      border-right: none; }
.page-account-wishlist .wishlist-manager-pager .description {
  padding: 0; }
.page-account-wishlist .wishlist-manager-pager .product-count {
  display: none; }
.page-account-wishlist .wishlist-manager-pager .page-numbar {
  padding-left: 10px; }
.page-account-wishlist .wishlist-manager-data .wishlist-manager-pager .description .pagination {
  border: none;
  text-align: left;
  width: 200px;
  color: #999;
  float: none;
  margin: 0; }
.page-account-wishlist .list-title-container .wd-header {
  border-bottom: 1px solid #eeeeee;
  font-size: 35px;
  color: #858585;
  margin-bottom: 20px;
  margin-top: 20px;
  padding-bottom: 0; }
  .page-account-wishlist .list-title-container .wd-header .wd-icon {
    width: 44px;
    height: 46px;
    background-image: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/images/titulo-lista.png');
    background-position: center;
    background-repeat: no-repeat;
    display: inline-block; }
  .page-account-wishlist .list-title-container .wd-header .wd-title {
    display: inline-block;
    text-transform: uppercase;
    font-weight: 300; }
  .page-account-wishlist .list-title-container .wd-header .open-mode-list {
    display: none; }
.page-account-wishlist .wishlist-manager-data .col-md-9,
.page-account-wishlist .wishlist-manager-data .col-md-3 {
  height: 100%;
  padding: 0; }
.page-account-wishlist .wishlist-manager-data .product-item {
  border: 1px solid #eeeeee;
  border-top: 4px solid #959595;
  margin-bottom: 15px;
  height: 145px;
  border-radius: 4px; }
  .page-account-wishlist .wishlist-manager-data .product-item.item-was-acquired .share {
    display: none; }
  .page-account-wishlist .wishlist-manager-data .product-item.item-was-acquired .label-acquired {
    margin-top: 0;
    padding-top: 50px;
    display: block; }
  .page-account-wishlist .wishlist-manager-data .product-item a.link {
    height: 100%; }
    .page-account-wishlist .wishlist-manager-data .product-item a.link img {
      max-width: 160px;
      width: auto;
      height: auto;
      max-height: 140px;
      border: none; }
    .page-account-wishlist .wishlist-manager-data .product-item a.link .skuoptions {
      color: #999; }
    .page-account-wishlist .wishlist-manager-data .product-item a.link .price-content-full {
      margin-top: 20px;
      font-style: normal !important; }
      .page-account-wishlist .wishlist-manager-data .product-item a.link .price-content-full .label {
        color: #3E3E3E;
        font-size: 14px;
        font-style: normal;
        padding: 0 2px; }
      .page-account-wishlist .wishlist-manager-data .product-item a.link .price-content-full .parcels,
      .page-account-wishlist .wishlist-manager-data .product-item a.link .price-content-full .parcel-value {
        color: #8d0c4f;
        font-weight: bold; }
      .page-account-wishlist .wishlist-manager-data .product-item a.link .price-content-full .sale-price em {
        text-transform: lowercase;
        font-size: 14px; }
      .page-account-wishlist .wishlist-manager-data .product-item a.link .price-content-full .sale-price span {
        font-size: 20px;
        color: #8d0c4f;
        font-weight: 800; }
  .page-account-wishlist .wishlist-manager-data .product-item div.wishlist-col-action {
    height: 100%;
    position: relative;
    bottom: 0;
    white-space: normal;
    background-color: #eeeeee;
    text-align: center;
    padding-top: 1px; }
  .page-account-wishlist .wishlist-manager-data .product-item .quantity {
    position: absolute;
    bottom: 5px;
    left: 0;
    width: 50%;
    font-size: 11px; }
  .page-account-wishlist .wishlist-manager-data .product-item .wish-manage-field {
    margin-top: -5px; }
  .page-account-wishlist .wishlist-manager-data .product-item .delete {
    position: absolute;
    bottom: 10px;
    right: 10px;
    border: none;
    background: transparent;
    background-image: url('http://d1i8ct85wuzgz5.cloudfront.net/custom/content/themes/Zelo/images/remove-produto.png');
    background-position: left center;
    background-repeat: no-repeat;
    padding-left: 20px; }
  .page-account-wishlist .wishlist-manager-data .product-item .share {
    height: 48px;
    color: white;
    background-color: #5dbfb5;
    float: none;
    display: block;
    margin: 0 auto;
    box-shadow: 1px 2px 0px 0px #42a79d;
    border: 0;
    position: relative;
    text-transform: uppercase;
    font-size: 12px;
    font-weight: bold;
    width: 170px;
    margin-top: 20px; }
  .page-account-wishlist .wishlist-manager-data .product-item h3 {
    font-weight: normal;
    font-size: 18px;
    margin-top: 5px; }
.page-account-wishlist .lista-conteudo {
  margin-top: 25px;
  float: left;
  width: 960px;
  margin-left: 30px;
  position: relative; }
  .page-account-wishlist .lista-conteudo .wd-profile-wishlist-form .wd-header,
  .page-account-wishlist .lista-conteudo .wd-profile-wishlist-list .wd-header,
  .page-account-wishlist .lista-conteudo .wd-profile-wishlist-manage .wd-header {
    border-bottom: 1px solid #eeeeee;
    font-size: 35px;
    color: #858585;
    padding-bottom: 15px;
    margin-bottom: 20px; }
    .page-account-wishlist .lista-conteudo .wd-profile-wishlist-form .wd-header .wd-icon,
    .page-account-wishlist .lista-conteudo .wd-profile-wishlist-list .wd-header .wd-icon,
    .page-account-wishlist .lista-conteudo .wd-profile-wishlist-manage .wd-header .wd-icon {
      width: 44px;
      height: 46px;
      background-image: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/images/titulo-lista.png');
      background-position: center;
      background-repeat: no-repeat;
      display: inline-block; }
    .page-account-wishlist .lista-conteudo .wd-profile-wishlist-form .wd-header .wd-title,
    .page-account-wishlist .lista-conteudo .wd-profile-wishlist-list .wd-header .wd-title,
    .page-account-wishlist .lista-conteudo .wd-profile-wishlist-manage .wd-header .wd-title {
      display: inline-block;
      text-transform: uppercase;
      font-weight: 300; }
  .page-account-wishlist .lista-conteudo .wd-profile-wishlist-manage .wd-header {
    display: none; }
  .page-account-wishlist .lista-conteudo .input-wrapper {
    margin-bottom: 10px; }
  .page-account-wishlist .lista-conteudo .wd-profile-wishlist-form label {
    width: 130px;
    text-align: right;
    padding-right: 20px;
    float: none;
    font-weight: normal; }
    .page-account-wishlist .lista-conteudo .wd-profile-wishlist-form label[for=wishlistdescription] {
      vertical-align: top; }
  .page-account-wishlist .lista-conteudo .wd-profile-wishlist-form input[type=text],
  .page-account-wishlist .lista-conteudo .wd-profile-wishlist-form input[type=date],
  .page-account-wishlist .lista-conteudo .wd-profile-wishlist-form input[type=password],
  .page-account-wishlist .lista-conteudo .wd-profile-wishlist-form select,
  .page-account-wishlist .lista-conteudo .wd-profile-wishlist-form textarea {
    height: 37px;
    width: 480px;
    border: 1px solid #dcdcdc;
    border-radius: 2px; }
  .page-account-wishlist .lista-conteudo .wd-profile-wishlist-form textarea {
    height: 87px; }
  .page-account-wishlist .lista-conteudo .wd-profile-wishlist-form select {
    width: 270px;
    background-color: #eeeeee; }
  .page-account-wishlist .lista-conteudo .wd-profile-wishlist-form input[type=password],
  .page-account-wishlist .lista-conteudo .wd-profile-wishlist-form input[type=date],
  .page-account-wishlist .lista-conteudo .wd-profile-wishlist-form input.birthdate-masked {
    width: 270px; }
  .page-account-wishlist .lista-conteudo .private-type label:not(:first-of-type) {
    width: auto; }
  .page-account-wishlist .lista-conteudo .wd-content {
    width: 615px;
    margin-bottom: 60px; }
  .page-account-wishlist .lista-conteudo .wd-profile-wishlist-list .wd-content,
  .page-account-wishlist .lista-conteudo .wd-profile-wishlist-manage .wd-content {
    width: 100%;
    margin-bottom: 60px; }
.page-account-wishlist #send-list,
.page-account-wishlist .new-wishlist,
.page-account-wishlist .open-mode-list {
  height: 48px;
  color: white;
  background-color: #5dbfb5;
  float: right;
  box-shadow: 1px 2px 0px 0px #42a79d;
  border: 0;
  position: relative;
  text-transform: uppercase;
  font-size: 22px;
  font-weight: bold;
  width: 200px;
  margin-right: 30px; }
.page-account-wishlist .new-wishlist {
  width: 220px;
  padding: 0 10px;
  line-height: 48px;
  margin-right: 20px;
  font-size: 16px;
  font-weight: bold;
  text-align: center;
  background-image: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/images/plus.png');
  background-repeat: no-repeat;
  background-position: left 10px center; }
.page-account-wishlist .wishlist-lists {
  width: 100%; }
  .page-account-wishlist .wishlist-lists li {
    display: block;
    width: 100%;
    border-bottom: 1px solid #eee; }
  .page-account-wishlist .wishlist-lists div {
    display: inline-block;
    position: relative;
    border-right: 1px solid #eee;
    height: 110px;
    vertical-align: middle;
    font-size: 16px;
    color: #535353;
    padding-top: 30px; }
    .page-account-wishlist .wishlist-lists div:last-of-type, .page-account-wishlist .wishlist-lists div:first-of-type {
      border-right: none; }
    .page-account-wishlist .wishlist-lists div:nth-of-type(1) {
      width: 15%; }
    .page-account-wishlist .wishlist-lists div:nth-of-type(2) {
      width: 28%; }
    .page-account-wishlist .wishlist-lists div:nth-of-type(3) {
      width: 15%;
      text-align: center; }
    .page-account-wishlist .wishlist-lists div:nth-of-type(4) {
      width: 15%;
      text-align: center; }
    .page-account-wishlist .wishlist-lists div:nth-of-type(5) {
      width: 10%;
      text-align: center; }
    .page-account-wishlist .wishlist-lists div:nth-of-type(6) {
      width: 15%;
      text-align: center; }
  .page-account-wishlist .wishlist-lists h3,
  .page-account-wishlist .wishlist-lists h4 {
    display: inline-block;
    margin: 0;
    font-size: inherit;
    font-weight: normal; }
  .page-account-wishlist .wishlist-lists h3,
  .page-account-wishlist .wishlist-lists button {
    line-height: 1.5; }
  .page-account-wishlist .wishlist-lists button.manage {
    background-color: #f3f3f3;
    border: 1px solid #00ACBF;
    color: #00ACBF;
    width: 106px;
    height: 29px;
    text-transform: uppercase;
    font-size: 12px;
    font-weight: normal;
    padding-left: 20px;
    background-image: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/images/gerencia-lista-lapis.png');
    background-position: left 6px center;
    background-repeat: no-repeat; }
  .page-account-wishlist .wishlist-lists button.share {
    position: absolute;
    left: 7px;
    bottom: 10px;
    width: 125px;
    background: #f6f6f6;
    border: 1px solid #999;
    height: 30px;
    color: #999;
    text-transform: uppercase;
    font-size: 10px; }
  .page-account-wishlist .wishlist-lists button.delete {
    background: transparent;
    border: none;
    background-image: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/images/remove-lista.png');
    background-position: center;
    background-repeat: no-repeat;
    text-indent: -99999px;
    width: 20px; }
  .page-account-wishlist .wishlist-lists .header-list {
    background-color: #eeeeee;
    text-transform: uppercase;
    height: 37px;
    line-height: 37px; }
    .page-account-wishlist .wishlist-lists .header-list div {
      padding-top: 0;
      height: auto;
      border-right: none;
      line-height: 37px; }
  .page-account-wishlist .wishlist-lists .list-item {
    padding: 30px 0; }
    .page-account-wishlist .wishlist-lists .list-item.active .list-item-status {
      color: #00ACBF; }
    .page-account-wishlist .wishlist-lists .list-item.inactive div {
      color: #afafaf; }
    .page-account-wishlist .wishlist-lists .list-item.inactive .list-item-status {
      color: #afafaf; }
    .page-account-wishlist .wishlist-lists .list-item form {
      display: inline-block;
      line-height: 1.5;
      width: 20px;
      vertical-align: middle; }
  .page-account-wishlist .wishlist-lists .list-item-status {
    font-weight: bold;
    text-transform: uppercase; }
.page-account-wishlist .wd-profile-wishlist-share .subtitle {
  font-size: 16px;
  font-weight: bold;
  color: #999;
  margin-bottom: 20px; }
.page-account-wishlist .wd-profile-wishlist-share input {
  height: 40px;
  line-height: 40px;
  padding-left: 10px;
  border: 1px solid #999;
  box-shadow: none; }
.page-account-wishlist .wd-profile-wishlist-share textarea,
.page-account-wishlist .wd-profile-wishlist-share input {
  width: 100%;
  border-radius: 4px; }
.page-account-wishlist .wd-profile-wishlist-share .button-wrapper button {
  height: 48px;
  color: white;
  background-color: #5dbfb5;
  float: right;
  box-shadow: 1px 2px 0px 0px #42a79d;
  border: 0;
  position: relative;
  text-transform: uppercase;
  font-size: 22px;
  font-weight: bold;
  width: 200px;
  margin-right: 30px; }
.page-account-wishlist .wd-profile-wishlist-share .input-wrapper {
  margin-bottom: 40px; }
  .page-account-wishlist .wd-profile-wishlist-share .input-wrapper small {
    margin-left: 0; }
.page-account-wishlist .delete-list form > p {
  font-weight: bold;
  font-size: 28px;
  color: #999; }
.page-account-wishlist .delete-list .button-wrapper button {
  height: 48px;
  color: white;
  background-color: #8d0c4f;
  box-shadow: 1px 2px 0px 0px #5e0835;
  border: 0;
  position: relative;
  text-transform: uppercase;
  font-size: 16px;
  font-weight: bold;
  width: 250px;
  margin-right: 30px; }

.columns-2-right.WishlistRoute #content-wrapper {
  margin-right: 0; }

.wd-browsing-wishlist-product .col-md-9,
.wd-browsing-wishlist-product .col-md-3 {
  height: 100%;
  padding: 0; }
.wd-browsing-wishlist-product .wd-product-price-description .condition, .wd-browsing-wishlist-product .wd-product-price-description .savings {
  display: inline-block;
  font-size: 14px; }
.wd-browsing-wishlist-product .wd-product-line-medias {
  float: left;
  max-width: 220px;
  width: auto;
  height: auto;
  max-height: 140px;
  border: none;
  overflow: hidden;
  margin-right: 10px; }
  .wd-browsing-wishlist-product .wd-product-line-medias img {
    max-height: 100%;
    width: auto;
    height: auto; }
.wd-browsing-wishlist-product .product-item {
  border: 1px solid #eeeeee;
  border-top: 4px solid #959595;
  margin-bottom: 15px;
  height: 145px;
  border-radius: 4px; }
  .wd-browsing-wishlist-product .product-item .wd-product-price-description .sale-price,
  .wd-browsing-wishlist-product .product-item .wd-browsing-wishlist-product .wd-product-price-description .condition {
    display: inline-block; }
  .wd-browsing-wishlist-product .product-item .skuoptions {
    color: #999; }
  .wd-browsing-wishlist-product .product-item .price-content-full {
    margin-top: 20px;
    font-style: normal !important; }
    .wd-browsing-wishlist-product .product-item .price-content-full .label {
      color: #3E3E3E;
      font-size: 14px;
      font-style: normal;
      padding: 0 2px; }
    .wd-browsing-wishlist-product .product-item .price-content-full .parcels,
    .wd-browsing-wishlist-product .product-item .price-content-full .parcel-value {
      color: #8d0c4f;
      font-weight: bold; }
    .wd-browsing-wishlist-product .product-item .price-content-full .sale-price em {
      text-transform: lowercase;
      font-size: 14px; }
    .wd-browsing-wishlist-product .product-item .price-content-full .sale-price span {
      font-size: 20px;
      color: #8d0c4f;
      font-weight: 800; }
  .wd-browsing-wishlist-product .product-item div.wishlist-col-action {
    height: 100%;
    position: relative;
    bottom: 0;
    white-space: normal;
    background-color: #eeeeee;
    text-align: center;
    padding-top: 1px; }
  .wd-browsing-wishlist-product .product-item .go-to-product {
    height: 48px;
    color: white;
    background-color: #5dbfb5;
    float: none;
    display: block;
    margin: 0 auto;
    box-shadow: 1px 2px 0px 0px #42a79d;
    border: 0;
    position: relative;
    text-transform: uppercase;
    font-size: 20px;
    font-weight: bold;
    width: 170px;
    margin-top: 40px;
    margin-left: 20px;
    line-height: 48px; }
  .wd-browsing-wishlist-product .product-item .name {
    font-weight: normal;
    font-size: 18px;
    margin-top: 5px; }

.carrinho-cta-button-box {
  float: right;
  margin: 0 100px 0 0; }
  @media screen and (max-width: 641px) {
    .carrinho-cta-button-box {
      margin: 0; } }

.page-basket footer strong {
  display: inline-block;
  vertical-align: middle;
  font-size: 11px;
  width: 88%; }
.page-basket .social-bar {
  display: none !important; }
.page-basket header {
  box-shadow: none;
  margin-bottom: 50px; }
  .page-basket header .compra-segura-container {
    background-color: #8d0c4f;
    display: inline-block;
    margin-top: 20px;
    padding: 10px 30px;
    border-top-left-radius: 75px;
    border-bottom-left-radius: 75px;
    height: 75px;
    position: relative; }
    .page-basket header .compra-segura-container:after {
      content: '';
      display: block;
      position: absolute;
      right: 0;
      width: 2000px;
      height: 75px;
      background-color: #8d0c4f;
      top: 0;
      left: 90%; }
    .page-basket header .compra-segura-container span {
      display: inline-block; }

b.title {
  color: #7f7f7f;
  font-weight: lighter;
  text-transform: uppercase;
  font-size: 20px; }

.wd-checkout-basket-grid a.photo {
  min-width: 80px;
  text-align: center; }
.wd-checkout-basket-grid div.data {
  padding-top: 20px; }
.wd-checkout-basket-grid .warning {
  display: block; }
  .wd-checkout-basket-grid .quantity .change {
  	position: relative;
  	padding-right: 10px;
  }
.wd-checkout-basket-grid .quantity .change .js-qty-more {
  position: absolute;
  top: 5px;
  right: 0;
  width: 0;
  height: 0;
  border-style: solid;
  border-width: 0 4px 6px 4px;
  border-color: transparent transparent #000000 transparent;
  padding: 0;
  font-size: 0;
  background: transparent; }
.wd-checkout-basket-grid .quantity .change .js-qty-less {
  position: absolute;
  top: 15px;
  right: 0;
  width: 0;
  height: 0;
  border-style: solid;
  border-width: 6px 4px 0 4px;
  border-color: #000000 transparent transparent transparent;
  padding: 0;
  font-size: 0;
  background: transparent;
   }
.wd-checkout-basket-grid .quantity .change .js-qty {
  border-radius: 20px;
  border: 1px solid #eee;
  width: 40px; }
.wd-checkout-basket-grid table {
  margin-bottom: 40px;
  border-radius: 40px;
  border-top-right-radius: 0;
  background-color: #fafafa;
  overflow: hidden; }
  @media screen and (max-width: 641px) {
    .wd-checkout-basket-grid table {
      border-radius: 0;
      backgorund: transparent; } }
  .wd-checkout-basket-grid table thead {
    background-color: #c3c3c3;
    color: white;
    font-weight: normal;
    border-top-left-radius: 20px; }
    .wd-checkout-basket-grid table thead th {
      text-align: center !important;
      padding: 5px;
      font-weight: normal;
      text-transform: uppercase; }
      .wd-checkout-basket-grid table thead th th {
        border-right: 1px solid #eee; }
  .wd-checkout-basket-grid table tfoot {
    display: none; }
  .wd-checkout-basket-grid table td {
    border: 1px solid #eee; }
    .wd-checkout-basket-grid table td:first-of-type {
      border-left: none; }
    .wd-checkout-basket-grid table td.product {
      background-color: transparent; }
  .wd-checkout-basket-grid table tr {
    position: relative; }
    .wd-checkout-basket-grid table tr:last-of-type td {
      border-bottom: none; }
  .wd-checkout-basket-grid table .btn.remove {
    position: absolute;
    right: -20px;
    margin-top: -40px;
    background-color: transparent;
    width: 15px;
    height: 20px;
    font-size: 0;
    text-align: center;
    padding: 0;
    background-image: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/images/remove-cart.png');
    background-position: center;
    background-repeat: no-repeat; }

.wd-checkout-addresses, .wd-checkout-basket {
  overflow: visible; }

.wd-checkout-basket-discount, .wd-checkout-basket-deliveryoptions, .wd-checkout-basket-deliveryoptions-v2 {
  background-color: transparent;
  border: none;
  min-height: 160px; }
  @media screen and (max-width: 641px) {
    .wd-checkout-basket-discount, .wd-checkout-basket-deliveryoptions, .wd-checkout-basket-deliveryoptions-v2 {
      background: transparent !important; } }

@media screen and (max-width: 641px) {
  .wd-checkout-basket-deliveryoptions .input-group {
    display: block; } }

.wd-checkout-basket-deliveryoptions label,
.wd-checkout-basket-deliveryoptions-v2 label,
.wd-checkout-basket-discount label {
  width: auto; }

.delivery-options p {
  max-width: 70%; }

.btn-open-frete {
  display: block;
  margin: 0 auto;
  border: 1px solid #00ACBF;
  border-radius: 1px;
  background-color: #eee;
  width: 176px;
  height: 37px;
  color: #00ACBF;
  text-align: center;
  line-height: 37px;
  margin-bottom: 20px;
  margin-right: 0; }

#deliveryoptions-visible {
  display: none; }

.wd-checkout-basket-deliveryoptions .header {
  margin-top: 10px;
  padding-left: 15px; }
.wd-checkout-basket-deliveryoptions .description {
  padding-top: 0; }
  .wd-checkout-basket-deliveryoptions .description .input-group {
    width: 100%;
    padding: 15px;
    padding-top: 10px; }

.calcular-frete span {
  float: right; }

.buscaCepCorreios {
  display: block; }

.btn-calculate-delivery {
  float: right; }

.wd-checkout-basket-deliveryoptions input:not([type=radio]):not([type=checkbox]),
.wd-checkout-basket-deliveryoptions-v2 input:not([type=radio]):not([type=checkbox]),
.wd-checkout-basket-discount input:not([type=radio]):not([type=checkbox]) {
  margin: 0;
  margin-left: 0;
  padding-left: 5px;
  height: 36px;
  vertical-align: middle;
  border: 1px solid #ccc;
  width: 240px;
  border-radius: 36px; }

.wd-checkout-basket .js-coupon-calc,
.wd-checkout-basket .js-shipping-calc {
  height: 36px;
  color: white;
  background-color: #8d0c4f;
  border-radius: 36px;
  float: none;
  border: 0;
  position: relative;
  font-weight: bold;
  width: auto;
  text-transform: uppercase;
  border-radius: 0;
  position: absolute;
  right: 0;
  border-radius: 36px;
  font-family: "Quicksand", sans-serif !important;
  font-size: 14px;
  line-height: 14px; }
.wd-checkout-basket .total {
  height: auto;
  padding: 20px;
  border: none;
  background-color: #f6f6f6;
  border-radius: 20px;
  position: relative;
  padding-bottom: 40px; }
  .wd-checkout-basket .total .price-total {
    position: absolute;
    width: 100%;
    background: #eaedf0;
    left: 0;
    border-radius: 0 0 20px 20px;
    height: 40px;
    bottom: 0;
    line-height: 40px;
    padding-right: 20px; }
  .wd-checkout-basket .total span {
    display: inline-block;
    text-align: right; }
    .wd-checkout-basket .total span:first-of-type {
      width: 58%; }
    .wd-checkout-basket .total span:last-of-type {
      width: 38%; }

.wd-checkout-basket .total div.botao-finalizar {
  background-color: white;
  padding: 0; }
  .wd-checkout-basket .total div.botao-finalizar .wd-checkout-basket-buttons {
    background-color: white;
    margin: 0;
    padding: 0; }
  .wd-checkout-basket .total div.botao-finalizar button {
    display: none; }
    .wd-checkout-basket .total div.botao-finalizar button.bt-checkout {
      height: 48px;
      color: white;
      background-color: #5dbfb5;
      float: none;
      display: block;
      box-shadow: 1px 2px 0px 0px #42a79d;
      border: 0;
      position: relative;
      text-transform: uppercase;
      font-size: 20px;
      font-weight: bold;
      width: calc(100% - 10px);
      margin: 0;
      margin-top: 20px; }
      .wd-checkout-basket .total div.botao-finalizar button.bt-checkout:before {
        width: 0;
        height: 0;
        border-style: solid;
        border-width: 25px 0 25px 11px;
        border-color: transparent transparent transparent #42a79d;
        content: '';
        position: absolute;
        right: -12px;
        top: 2px; }
      .wd-checkout-basket .total div.botao-finalizar button.bt-checkout:after {
        width: 0;
        height: 0;
        border-style: solid;
        border-width: 25px 0 25px 11px;
        border-color: transparent transparent transparent #5dbfb5;
        content: '';
        position: absolute;
        right: -11px;
        top: 0; }

.botao-carrinho-footer button {
  display: none; }
  .botao-carrinho-footer button.bt-keep-buying {
    display: block;
    margin: 0 auto;
    height: 37px;
    color: #3E3E3E;
    text-align: left;
    line-height: 37px;
    float: left;
    margin-top: -20px;
    font-size: 0;
    background-color: transparent;
    border: none; }
    .botao-carrinho-footer button.bt-keep-buying:before {
      content: 'Comprar mais produtos';
      display: inline-block;
      font-size: 16px; }

.botao-carrinho-header button {
  display: none; }
  .botao-carrinho-header button.bt-checkout {
    display: block;
    height: 48px;
    color: white;
    background-color: #5dbfb5;
    float: right;
    display: block;
    box-shadow: 1px 2px 0px 0px #42a79d;
    border: 0;
    position: relative;
    text-transform: uppercase;
    font-size: 20px;
    font-weight: bold;
    width: 330px;
    margin-bottom: 40px;
    margin-right: 10px; }
    .botao-carrinho-header button.bt-checkout:before {
      width: 0;
      height: 0;
      border-style: solid;
      border-width: 25px 0 25px 11px;
      border-color: transparent transparent transparent #42a79d;
      content: '';
      position: absolute;
      right: -12px;
      top: 2px; }
    .botao-carrinho-header button.bt-checkout:after {
      width: 0;
      height: 0;
      border-style: solid;
      border-width: 25px 0 25px 11px;
      border-color: transparent transparent transparent #5dbfb5;
      content: '';
      position: absolute;
      right: -11px;
      top: 0; }

.wd-checkout-basket-discount table {
  border: 1px solid #e5e5e5;
  margin-top: 20px; }
  .wd-checkout-basket-discount table tr {
    border-top: 1px solid #e5e5e5;
    text-align: left; }
  .wd-checkout-basket-discount table th,
  .wd-checkout-basket-discount table td {
    padding: 5px; }
    .wd-checkout-basket-discount table th.price-item,
    .wd-checkout-basket-discount table td.price-item {
      text-align: left; }
    .wd-checkout-basket-discount table th.remove-item,
    .wd-checkout-basket-discount table td.remove-item {
      text-align: center; }
    .wd-checkout-basket-discount table th span,
    .wd-checkout-basket-discount table td span {
      font-weight: bold; }
  .wd-checkout-basket-discount table button {
    background-color: transparent;
    font-size: 0px;
    border: none;
    width: 20px;
    height: 20px;
    padding: 0;
    box-shadow: none; }
    .wd-checkout-basket-discount table button:before {
      content: 'X';
      width: 20px;
      height: 20px;
      font-size: 20px;
      color: #8d0c4f;
      font-weight: bold; }
.wd-checkout-basket-discount .wd-checkout-basket-grid td > div {
  padding: 20px; }

.col-md-3 .bt-keep-buying,
.col-md-3 .bt-clear-basket {
  display: none; }
.col-md-3 button {
  background-color: #6ebf55;
  font-family: "Flicker", sans-serif !important;
  color: white;
  text-align: center;
  width: 370px;
  height: 76px;
  line-height: 76px;
  border-radius: 76px;
  float: right;
  border: none;
  font-size: 29px; }
  @media screen and (max-width: 641px) {
    .col-md-3 button {
      width: 100%; } }
  .col-md-3 button small {
    display: none; }

@media screen and (max-width: 641px) {
  .wd-checkout-basket-deliveryoptions label,
  .wd-checkout-basket-discount label {
    display: none; } }

#checkout-basket-discount-visible,
label[for=checkout-basket-discount-visible],
.btn-calculate-delivery,
.calcular-frete label,
.fa.fa-tag {
  display: none; }

@media screen and (max-width: 641px) {
  .wd-checkout-basket-grid th,
  .wd-checkout-basket-grid td {
    float: left;
    width: 100% !important; }
    .wd-checkout-basket-grid th.price, .wd-checkout-basket-grid th.quantity,
    .wd-checkout-basket-grid td.price,
    .wd-checkout-basket-grid td.quantity {
      width: 50% !important; }
  .wd-checkout-basket-grid thead {
    display: none; } }

.wd-checkout-basket-deliveryoptions .content label {
  display: block; }

@media screen and (max-width: 641px) {
  .botao-carrinho-footer button.bt-keep-buying {
    float: none !important;
    width: 80%;
    margin: 0 auto !important;
    text-align: center; } }

.bg-gif {
  width: 1154px;
  height: 896px;
  background-image: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/images/modelo-4.gif');
  background-position: center;
  background-repeat: no-repeat;
  margin-left: -113px; }
  @media screen and (max-width: 641px) {
    .bg-gif {
      display: none; } }

.top-sobre {
  background-image: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/images/bg-quem-somos.png');
  background-position: center bottom;
  background-repeat: no-repeat; }
  @media screen and (max-width: 641px) {
    .top-sobre {
      background-size: 1340px; } }

.como-fazemos {
    margin-top: 125px;
    color: white;
    margin-bottom: 113px;}
  @media screen and (max-width: 641px) {
    .como-fazemos {
      margin-top: 60px; }
      .como-fazemos p {
        margin-bottom: 20px; } }

.quem-somos-video {
  margin-top: 40px;
  background-image: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/images/bg-video-quem-somos.png');
  background-repeat: no-repeat;
  background-size: contain;
  padding: 60px;
  height: 750px; }
  @media screen and (max-width: 641px) {
    .quem-somos-video {
      padding: 20px;
      height: 200px;
      background-size: cover; } }
  .quem-somos-video iframe {
    width: 100%;
    height: 100%; }

.quem-somos-marcas {
  margin-top: 20px; }
  @media screen and (max-width: 641px) {
    .quem-somos-marcas {
      margin-left: 0;
      margin-right: 0; } }
  .quem-somos-marcas .col-md-2 {
    margin-bottom: 20px;
    height: 110px;
    line-height: 110px; }
  .quem-somos-marcas img {
    max-width: 100%;
    height: auto; }

.banner-quem-somos img {
  max-width: inherit;
  margin-left: -295px; }
  @media screen and (min-width: 1440px) {
    .banner-quem-somos img {
      margin-left: 0; } }

.bg-error-page {
  text-align: center;
  position: relative;
  min-height: 760px;
  padding-top: 150px; }
  .bg-error-page:before {
    content: '';
    display: block;
    width: 471px;
    height: 399px;
    position: absolute;
    left: 0;
    top: 0;
    background-image: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/images/bg-error-top.png?v=2');
    background-position: top center;
    background-repeat: no-repeat;
    z-index: -1; }
    @media screen and (max-width: 641px) {
      .bg-error-page:before {
        opacity: .2; } }
  .bg-error-page:after {
    content: '';
    display: block;
    width: 461px;
    height: 394px;
    position: absolute;
    right: 0;
    bottom: 0;
    background-image: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/images/bg-error-bottom.png?v=2');
    background-position: bottom center;
    background-repeat: no-repeat;
    z-index: -1; }
    @media screen and (max-width: 641px) {
      .bg-error-page:after {
        opacity: .2; } }
  .bg-error-page.not-found .cta-error-page {
    width: auto;
    padding: 0 20px;
    display: inline-block;
    margin-right: 20px;
    font-family: "Flicker", sans-serif !important; }
    .bg-error-page.not-found .cta-error-page.transparent {
      box-shadow: 0 0 0 2px #00ACBF;
      color: #00ACBF;
      background-color: transparent;
      margin-right: 0; }
  .bg-error-page h2 {
    font-family: "Flicker", sans-serif !important;
    color: #8d0c4f;
    font-size: 170px; }
    .bg-error-page h2 small {
      display: block;
      margin-top: 20px;
      color: #5e0835;
      font-size: 22px; }
  .bg-error-page p {
    text-transform: uppercase;
    font-weight: bold; }
  .bg-error-page .cta-error-page {
    background-color: #00ACBF;
    width: 270px;
    height: 40px;
    line-height: 40px;
    color: white;
    border-radius: 20px;
    text-align: center;
    display: inline-block;
    margin: 40px auto;
    display: block; }

.ErrorRoute .social-bar {
  margin-top: -80px; }
  .ErrorRoute .social-bar ul {
    background-color: transparent; }

.page-account-index .lista-conteudo {
  margin-top: 25px;
  float: left;
  width: 960px;
  margin-left: 30px;
  position: relative; }
.page-account-index .order-link {
  height: 48px;
  color: white;
  background-color: #5dbfb5;
  float: right;
  box-shadow: 1px 2px 0px 0px #42a79d;
  border: 0;
  position: relative;
  text-transform: uppercase;
  font-size: 22px;
  font-weight: bold;
  width: 200px;
  margin-right: 30px; }

.order-lists {
  width: 100%; }
  .order-lists li {
    display: block;
    width: 100%;
    border-bottom: 1px solid #eee; }
  .order-lists div {
    display: inline-block;
    position: relative;
    border-right: 1px solid #eee;
    height: 110px;
    vertical-align: middle;
    font-size: 16px;
    color: #535353;
    padding-top: 30px; }
    .order-lists div:last-of-type {
      border-right: none; }
    .order-lists div:nth-of-type(1) {
      width: 28%;
      padding-left: 10px; }
    .order-lists div:nth-of-type(2) {
      width: 15%;
      text-align: center; }
    .order-lists div:nth-of-type(3) {
      width: 20%;
      text-align: center; }
    .order-lists div:nth-of-type(4) {
      width: 20%;
      text-align: center; }
    .order-lists div:nth-of-type(5) {
      width: 15%;
      text-align: center; }
  .order-lists h3,
  .order-lists h4 {
    display: inline-block;
    margin: 0;
    font-size: inherit;
    font-weight: normal; }
  .order-lists h3,
  .order-lists button {
    line-height: 1.5; }
  .order-lists button {
    background-color: #f3f3f3;
    border: 1px solid #00ACBF;
    color: #00ACBF;
    width: 130px;
    height: 36px;
    line-height: 36px;
    text-transform: uppercase;
    font-size: 14px;
    font-weight: normal;
    background-position: left 6px center;
    background-repeat: no-repeat;
    text-align: center; }
  .order-lists .header-list {
    background-color: #eeeeee;
    text-transform: uppercase;
    height: 37px;
    line-height: 37px; }
    .order-lists .header-list div {
      padding-top: 0;
      height: auto;
      border-right: none;
      line-height: 37px; }
      .order-lists .header-list div:nth-of-type(1) {
        width: 28%;
        padding-left: 10px; }
  .order-lists .list-item {
    padding: 30px 0; }

.wd-checkout-ordersummary .wd-checkout-ordernumber {
  border: 1px solid #00ACBF;
  background-color: #f3f3f3; }
  .wd-checkout-ordersummary .wd-checkout-ordernumber .order-code {
    font-weight: bold;
    text-transform: uppercase;
    color: #00ACBF; }
  .wd-checkout-ordersummary .wd-checkout-ordernumber .order-legend {
    color: #999; }
  .wd-checkout-ordersummary .wd-checkout-ordernumber .order-description {
    color: #999;
    font-size: 12px; }

.wd-checkout-ordertracking .wd-content ul li {
  list-style-type: none;
  float: left;
  display: block;
  width: 18%;
  position: relative;
  text-align: center;
  padding: 10px;
  font-size: 12px;
  border: 4px solid white;
  height: 120px;
  background: #fafafa;
  margin: 20px 1%;
  box-shadow: 0 0 2px 0 #999; }
  .wd-checkout-ordertracking .wd-content ul li strong {
    display: block;
    height: 40px; }
  .wd-checkout-ordertracking .wd-content ul li .count {
    font-size: 20px;
    font-weight: bold; }

.wd-checkout-ordersummary.short-mode .wd-content {
  padding: 0; }

.summary-data .order-status {
  top: 0 !important;
  padding: 10px;
  border-radius: 2px;
  border: 1px solid #00ACBF;
  color: #00ACBF;
  text-transform: uppercase; }
.summary-data ul.labels {
  width: 100%;
  margin-top: 40px !important; }
.summary-data li {
  border-bottom: 1px solid #eee;
  padding: 10px;
  font-weight: normal;
  line-height: 1.5 !important; }
  .summary-data li strong {
    display: inline-block;
    margin-left: 20px;
    font-weight: bold; }

.wd-checkout-orderdeliveryaddress .wd-subtitle,
.wd-checkout-orderpayment .wd-subtitle,
.summary-data .wd-subtitle {
  font-weight: bold;
  text-transform: uppercase;
  font-size: 16px; }

.wd-checkout-orderdeliveryaddress {
  padding-bottom: 40px;
  padding-top: 40px;
  margin-bottom: 40px;
  margin-top: 40px;
  border-bottom: 1px solid #eee;
  border-top: 1px solid #eee; }
  .wd-checkout-orderdeliveryaddress ul.content:first-of-type {
    padding: 20px;
    background: #fafafa;
    border: 10px solid white;
    box-shadow: 0 0 2px 0 #00ACBF;
    margin-left: 5px;
    margin-top: 10px; }
  .wd-checkout-orderdeliveryaddress ul.content:last-of-type {
    margin-left: 60px;
    line-height: 30px;
    padding-top: 40px; }

.wd-checkout-orderpayment {
  position: relative; }
  .wd-checkout-orderpayment .status {
    position: absolute;
    right: 10px;
    top: 10px;
    padding: 10px;
    border-radius: 2px;
    border: 1px solid #00ACBF;
    color: #00ACBF;
    text-transform: uppercase;
    min-width: auto; }
  .wd-checkout-orderpayment .payment-info {
    display: inline-block;
    vertical-align: middle; }

.wd-checkout-ordertracking .wd-content .completed .progress,
.wd-checkout-ordertracking .wd-content .started .progress:after {
  background-color: #00ACBF; }

.wd-checkout-ordersummary table thead th,
.wd-checkout-ordersummary table thead th,
.wd-checkout-ordersummary table tbody td,
.wd-checkout-ordersummary table tbody th {
  border: 1px solid #eee; }
.wd-checkout-ordersummary table .td-total {
  padding-right: 40px; }

body.area-profile #main > div.container #left,
body.area-profile #main > div.container #right {
  margin-left: 0; }
body.area-profile #main > div.container #left {
  width: 240px; }
body.area-profile #main > div.container #middle {
  min-width: 950px; }
body.area-profile #main > div.container #content-wrapper {
  margin-left: 40px; }
body.area-profile #main > div.container .wd-title {
  margin-bottom: 20px; }
body.area-profile #main > div.container .level-1 {
  padding: 10px; }
  body.area-profile #main > div.container .level-1 li {
    padding-left: 10px; }
  body.area-profile #main > div.container .level-1 > li:first-of-type {
    font-size: 16px;
    font-weight: bold; }
body.area-profile #main > div.container button {
  background-color: #00ACBF;
  border: none;
  border-radius: 4px;
  color: white;
  padding: 5px 20px; }
body.area-profile #main > div.container .wd-profile-panelmenu {
  border: 1px solid #eee; }
  body.area-profile #main > div.container .wd-profile-panelmenu .wd-header {
    display: none; }
  body.area-profile #main > div.container .wd-profile-panelmenu .sub-title {
    font-weight: bold; }
  body.area-profile #main > div.container .wd-profile-panelmenu a {
    height: 30px;
    line-height: 30px; }
  body.area-profile #main > div.container .wd-profile-panelmenu .submenu a {
    padding-left: 20px; }
body.area-profile #main > div.container .labels {
  width: 50%; }
  body.area-profile #main > div.container .labels + ul {
    margin-top: 40px; }
body.area-profile #main > div.container .payment-data {
  float: left;
  width: 50%;
  margin-left: 20px;
  margin-top: 10px; }
body.area-profile #main > div.container .print-payment-slip .button {
  padding: 5px 25px;
  margin-right: 10px; }
body.area-profile #main > div.container .wd-profile-reorder tr {
  border-bottom: 1px solid #ccc; }
body.area-profile #main > div.container .wd-profile-reorder thead th:nth-of-type(3) {
  width: 130px; }
body.area-profile #main > div.container .wd-profile-reorder th,
body.area-profile #main > div.container .wd-profile-reorder td {
  padding: 15px; }
body.area-profile #main > div.container .wd-profile-reorder .product-name img {
  float: none; }
body.area-profile #main > div.container .wd-profile-reorder .product-name .wrapper {
  max-width: 70%;
  vertical-align: middle;
  float: none;
  display: inline-block;
  height: auto; }
body.area-profile #main > div.container .wd-profile-reorder .buy-all {
  margin-top: 10px; }
body.area-profile #main > div.container .wd-profile-reorder form input.quantity {
  width: 110px;
  text-align: center;
  border-radius: 4px;
  margin-bottom: 10px;
  border: 1px solid #ccc; }
body.area-profile #main > div.container .wd-profile-orders td,
body.area-profile #main > div.container .wd-profile-orders th {
  padding: 10px; }
body.area-profile #main > div.container .wd-profile-register .wd-subtitle,
body.area-profile #main > div.container .wd-profile-addressform .wd-subtitle,
body.area-profile #main > div.container .wd-profile-wishlist-form .wd-subtitle {
  display: block;
  width: 100%;
  float: none;
  font-weight: bold;
  margin: 10px 0;
  border-bottom: 1px solid #eee; }
body.area-profile #main > div.container .wd-profile-register fieldset .input-wrapper,
body.area-profile #main > div.container .wd-profile-addressform fieldset .input-wrapper,
body.area-profile #main > div.container .wd-profile-wishlist-form fieldset .input-wrapper {
  width: 48%;
  float: left;
  margin-right: 4%; }
  body.area-profile #main > div.container .wd-profile-register fieldset .input-wrapper:nth-of-type(2n+2),
  body.area-profile #main > div.container .wd-profile-addressform fieldset .input-wrapper:nth-of-type(2n+2),
  body.area-profile #main > div.container .wd-profile-wishlist-form fieldset .input-wrapper:nth-of-type(2n+2) {
    margin-right: 0; }
body.area-profile #main > div.container .wd-profile-register input,
body.area-profile #main > div.container .wd-profile-register select,
body.area-profile #main > div.container .wd-profile-register textarea,
body.area-profile #main > div.container .wd-profile-addressform input,
body.area-profile #main > div.container .wd-profile-addressform select,
body.area-profile #main > div.container .wd-profile-addressform textarea,
body.area-profile #main > div.container .wd-profile-wishlist-form input,
body.area-profile #main > div.container .wd-profile-wishlist-form select,
body.area-profile #main > div.container .wd-profile-wishlist-form textarea {
  height: 30px;
  line-height: 30px;
  border: 1px solid #ccc;
  border-radius: 4px;
  padding-left: 10px;
  margin-bottom: 10px;
  width: 100%;
  max-width: 300px; }
body.area-profile #main > div.container .wd-profile-register textarea,
body.area-profile #main > div.container .wd-profile-addressform textarea,
body.area-profile #main > div.container .wd-profile-wishlist-form textarea {
  height: 120px; }
body.area-profile #main > div.container .wd-profile-register label,
body.area-profile #main > div.container .wd-profile-addressform label,
body.area-profile #main > div.container .wd-profile-wishlist-form label {
  display: block; }
body.area-profile #main > div.container .wd-profile-addresses thead {
  border-bottom: 1px solid #ccc; }
  body.area-profile #main > div.container .wd-profile-addresses thead th:nth-of-type(3) {
    width: 18%; }
  body.area-profile #main > div.container .wd-profile-addresses thead th:nth-of-type(4) {
    width: 13%; }
body.area-profile #main > div.container .wd-profile-addresses td,
body.area-profile #main > div.container .wd-profile-addresses th {
  padding: 10px; }
body.area-profile #main > div.container .wd-profile-addresses .main-address-label {
  display: block; }
body.area-profile #main > div.container .wd-profile-wishlist-form td,
body.area-profile #main > div.container .wd-profile-wishlist-form th {
  padding: 10px; }
body.area-profile #main > div.container .wd-profile-wishlist-form .show-address {
  padding: 10px 0;
  margin-bottom: 10px; }
  body.area-profile #main > div.container .wd-profile-wishlist-form .show-address .link-create-address {
    position: relative; }
body.area-profile #main > div.container .wd-profile-wishlist-form .input-wrapper {
  margin-bottom: 10px; }
body.area-profile #main > div.container .wd-profile-wishlist-manage button {
  font-size: 14px;
  margin-top: -42px; }


ul.level-4 {
    padding: 10px;
	display: none;
}
ul.level-3 li:hover ul.level-4 {
	display: block;
}

.wd-marketing-banner .previous {
	background-image: url('//d830okm0xici6.cloudfront.net/custom/content/themes/salon-line/images/arrow-prev.png');
    position: absolute;
    top: 40%;
    width: 29px;
    height: 67px;
    display: block; 
    left: 50%;
	margin-left: -600px;
    background-repeat: no-repeat;
    z-index: 10000;
    background-color: #CDCDCD;
    background-position: center;
    border-radius: 4px;
}
.wd-marketing-banner .next {
	background-image: url('//d830okm0xici6.cloudfront.net/custom/content/themes/salon-line/images/arrow-next.png');
    position: absolute;
    top: 40%;
    width: 29px;
    height: 67px;
    display: block;
    right: 50%;
	margin-right: -600px;
    background-repeat: no-repeat;
    z-index: 10000;
    background-color: #CDCDCD;
    background-position: center;
    border-radius: 4px;
} 
.wd-marketing-banner .nav-control {
	display: none;
}
.wd-marketing-banner:hover .nav-control {
    display: block;
}


/*File:~/custom/content/themes/Salon2020DESK/Styles/suporte-evolucao.css*/
@charset "UTF-8";
/* line 13, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.close {
  background-color: #A60550 !important;
  color: #fff !important;
  opacity: 1 !important; }

/* line 19, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.the-modal .the-modal-container {
  padding: 0; }

/* line 22, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.the-modal .the-modal-container .alert {
  margin: 0; }

/* line 26, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
#cboxLoadedContent {
  min-width: 200px;
  min-height: 100px; }

/* line 30, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.wd-checkout-basket-deliveryoptions .error-message {
  white-space: normal !important; }

/* line 34, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
header .user-nav li {
  padding: 0 2px; }

/* line 37, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
li.login.mobile {
  display: none; }

/* line 54, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.DataSourceRoute #middle {
  padding-top: 30px; }
  /* line 57, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
  .DataSourceRoute #middle .wd-header .wd-title {
    text-align: center;
    font-family: "Flicker", sans-serif !important;
    color: #8d0c4f;
    font-size: 50px; }
  /* line 65, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
  .DataSourceRoute #middle #content ul li {
    display: block;
    float: left;
    box-shadow: 0 0 0 2px #00ACBF;
    color: #00ACBF;
    background-color: transparent;
    margin-right: 0;
    width: 14%;
    margin: 1%;
    padding: 15px;
    border: 0;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    height: 100px;
    -moz-border-radius: 25px;
    -webkit-border-radius: 25px;
    border-radius: 25px;
    text-align: center; }
    /* line 80, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
    .DataSourceRoute #middle #content ul li a {
      font-size: 11px;
      text-transform: uppercase;
      color: #00ACBF;
      font-family: "Flicker", sans-serif !important; }
      /* line 85, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
      .DataSourceRoute #middle #content ul li a i {
        display: block;
        text-align: center;
        font-size: 25px;
        margin-bottom: 10px;
        color: #00ACBF; }
    /* line 93, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
    .DataSourceRoute #middle #content ul li img {
      max-height: 100%;
      max-width: 100%;
      margin: 0 auto;
      display: block; }
    /* line 99, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
    .DataSourceRoute #middle #content ul li:hover {
      background-color: #00ACBF; }
      /* line 101, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
      .DataSourceRoute #middle #content ul li:hover a, .DataSourceRoute #middle #content ul li:hover i {
        color: #fff; }

/* line 111, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.BrandRoute #middle {
  padding-top: 30px; }
  /* line 114, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
  .BrandRoute #middle .wd-header .wd-title {
    text-align: center;
    font-family: "Flicker", sans-serif !important;
    color: #8d0c4f;
    font-size: 50px; }
  /* line 122, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
  .BrandRoute #middle .wd-browsing-brand .wd-header {
    display: none; }
  /* line 127, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
  .BrandRoute #middle .wd-browsing-brand .wd-content ul li {
    display: block;
    float: left;
    width: 18%;
    margin: 1%;
    padding: 10px;
    border: 2px solid #A60550;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    height: 100px;
    -moz-border-radius: 25px;
    -webkit-border-radius: 25px;
    border-radius: 25px; }
    /* line 137, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
    .BrandRoute #middle .wd-browsing-brand .wd-content ul li img {
      max-height: 100%;
      max-width: 100%;
      margin: 0 auto;
      display: block; }
    /* line 143, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
    .BrandRoute #middle .wd-browsing-brand .wd-content ul li:hover {
      border-color: #00ACBF; }

/* line 156, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.ErrorRoute #middle .row-error h3 {
  color: #A60550;
  font-size: 30px;
  text-align: center;
  font-weight: bold;
  display: block;
  margin-bottom: 30px; }

/* line 164, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.ErrorRoute #middle .row-error p {
  text-align: center;
  font-size: 13px; }

/* line 168, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.ErrorRoute #middle .row-error a {
  background-color: #00ACBF;
  width: 270px;
  height: 40px;
  line-height: 40px;
  color: white;
  -moz-border-radius: 20px;
  -webkit-border-radius: 20px;
  border-radius: 20px;
  text-align: center;
  display: inline-block;
  margin: 40px auto;
  display: block; }

/* line 180, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.ErrorRoute #middle .row-error .cta-error-page {
  width: auto;
  padding: 0 20px;
  display: inline-block;
  margin-right: 20px;
  font-family: "Flicker", sans-serif !important; }

/* line 187, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.ErrorRoute #middle .row-error .cta-error-page.transparent {
  box-shadow: 0 0 0 2px #00ACBF;
  color: #00ACBF;
  background-color: transparent;
  margin-right: 0; }

/* line 195, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.ErrorRoute .social-bar {
  display: none; }

/* line 200, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.wd-profile-login-modal .input-wrapper {
  position: relative; }
  /* line 202, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
  .wd-profile-login-modal .input-wrapper span.error {
    color: #856404;
    background-color: #fff3cd;
    border-color: #ffeeba;
    font-size: 11px;
    padding: 5px 10px;
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    position: absolute;
    z-index: 1;
    top: 40px !important;
    margin-right: -5px;
    bottom: initial !important; }

/* line 217, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.wd-profile-login-modal .wd-profile-login-recover-password .input-wrapper {
  display: block;
  float: left;
  width: 345px; }
  /* line 221, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
  .wd-profile-login-modal .wd-profile-login-recover-password .input-wrapper label {
    display: none; }
  /* line 224, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
  .wd-profile-login-modal .wd-profile-login-recover-password .input-wrapper input {
    margin: 0;
    width: 90%; }

/* line 229, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.wd-profile-login-modal .wd-profile-login-recover-password .recover-password-button {
  display: block;
  float: right;
  width: 135px;
  margin: 0 0 20px;
  padding: 0;
  -moz-border-radius: 20px;
  -webkit-border-radius: 20px;
  border-radius: 20px; }

/* line 237, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.wd-profile-login-modal .wd-profile-login-recover-password p {
  clear: both;
  display: block;
  font-size: 12px; }

/* line 245, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.AccountRegisterRoute .input-wrapper {
  position: relative; }
  /* line 247, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
  .AccountRegisterRoute .input-wrapper span.error {
    color: #856404;
    background-color: #fff3cd;
    border-color: #ffeeba;
    font-size: 11px;
    padding: 5px 10px;
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    position: absolute;
    bottom: -25px; }

/* line 260, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.PasswordRecoveryRoute #middle {
  padding-top: 30px; }
  /* line 263, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
  .PasswordRecoveryRoute #middle .wd-header .wd-title {
    text-align: center;
    font-family: "Flicker", sans-serif !important;
    color: #8d0c4f;
    font-size: 50px; }
  /* line 270, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
  .PasswordRecoveryRoute #middle .wd-content {
    width: 545px;
    display: block;
    margin: 0 auto; }
    /* line 274, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
    .PasswordRecoveryRoute #middle .wd-content .input-wrapper {
      box-sizing: border-box;
      outline: none !important;
      display: block;
      margin: 10px 0; }
      /* line 279, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
      .PasswordRecoveryRoute #middle .wd-content .input-wrapper label {
        width: 190px;
        display: inline-block;
        max-width: 100%;
        margin-bottom: 5px;
        font-weight: bold; }
      /* line 286, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
      .PasswordRecoveryRoute #middle .wd-content .input-wrapper input {
        display: inline-block;
        width: 350px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        padding-left: 10px;
        height: 40px;
        line-height: 40px;
        -moz-border-radius: 2px;
        -webkit-border-radius: 2px;
        border-radius: 2px; }
    /* line 297, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
    .PasswordRecoveryRoute #middle .wd-content .js-btnsave {
      background-color: #A60550;
      width: 180px;
      height: 40px;
      line-height: 40px;
      padding: 0;
      color: white;
      -moz-border-radius: 20px;
      -webkit-border-radius: 20px;
      border-radius: 20px;
      text-align: center;
      float: right;
      clear: both;
      margin: 20px auto;
      display: block;
      font-family: "Flicker", sans-serif !important; }
  /* line 313, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
  .PasswordRecoveryRoute #middle .obrigatorios {
    display: block;
    float: right;
    clear: both;
    color: #A60550;
    font-size: 12px; }
  /* line 320, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
  .PasswordRecoveryRoute #middle p {
    display: block;
    margin-bottom: 40px;
    text-align: center;
    font-size: 13px; }

/* line 330, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.page-basket #cboxOverlay,
.page-basket .cboxIframe {
  background: #000; }

/* line 334, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.page-basket #cboxWrapper {
  border: 0; }
  /* line 336, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
  .page-basket #cboxWrapper #cboxClose {
    background-color: #A60550;
    color: #fff; }
  /* line 340, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
  .page-basket #cboxWrapper #cboxLoadedContent {
    border: 0; }
  /* line 343, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
  .page-basket #cboxWrapper .alert {
    border: 0;
    margin: 0 !important; }

/* line 350, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.wd-profile-welcome-shopper {
  margin: 6px 0 0; }
  /* line 353, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
  .wd-profile-welcome-shopper .login-simple .title {
    color: #3E3E3E;
    font-size: 12px;
    padding: 0;
    transition: .5s all;
    text-decoration: none !important; }
    /* line 359, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
    .wd-profile-welcome-shopper .login-simple .title b {
      font-weight: normal; }
  /* line 364, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
  .wd-profile-welcome-shopper .login-simple .login-wrapper .login-title {
    background-color: transparent;
    padding: 0;
    color: #3E3E3E;
    font-size: 12px;
    transition: .5s all;
    font-weight: normal;
    text-decoration: none !important; }
  /* line 373, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
  .wd-profile-welcome-shopper .login-simple .login-wrapper .wd-profile-login {
    width: 250px;
    height: 150px;
    border: 0;
    top: 27px;
    background-color: white;
    color: #3E3E3E;
    transition: all 300ms;
    border-bottom: 5px solid #8d0c4f;
    box-shadow: 0 0 10px 0 #999; }
    /* line 383, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
    .wd-profile-welcome-shopper .login-simple .login-wrapper .wd-profile-login:before {
      display: block;
      content: '';
      width: 0;
      height: 0;
      border-style: solid;
      border-width: 0 18px 12px 18px;
      border-color: transparent transparent white transparent;
      position: absolute;
      right: 5%;
      margin-left: -18px;
      top: -12px; }
    /* line 396, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
    .wd-profile-welcome-shopper .login-simple .login-wrapper .wd-profile-login .input-wrapper {
      position: relative; }
      /* line 398, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
      .wd-profile-welcome-shopper .login-simple .login-wrapper .wd-profile-login .input-wrapper span.error {
        color: #856404;
        background-color: #fff3cd;
        border-color: #ffeeba;
        font-size: 11px;
        padding: 5px 10px;
        -moz-border-radius: 2px;
        -webkit-border-radius: 2px;
        border-radius: 2px;
        position: absolute;
        z-index: 1;
        top: 35px !important;
        left: 0 !important;
        right: inherit !important;
        bottom: initial !important; }
      /* line 412, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
      .wd-profile-welcome-shopper .login-simple .login-wrapper .wd-profile-login .input-wrapper input {
        height: 35px;
        -moz-border-radius: 20px !important;
        -webkit-border-radius: 20px !important;
        border-radius: 20px !important;
        border: 1px solid #ccc; }
      /* line 417, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
      .wd-profile-welcome-shopper .login-simple .login-wrapper .wd-profile-login .input-wrapper button {
        -moz-border-radius: 20px !important;
        -webkit-border-radius: 20px !important;
        border-radius: 20px !important;
        height: 35px;
        line-height: 35px;
        width: 100px;
        padding: 0;
        font-size: 12px;
        margin: 10px 0 !important;
        float: right; }
    /* line 428, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
    .wd-profile-welcome-shopper .login-simple .login-wrapper .wd-profile-login .recover-password {
      margin: 0 !important;
      margin-top: 10px !important;
      float: left;
      text-decoration: underline !important;
      color: #bbbbbb; }
  /* line 437, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
  .wd-profile-welcome-shopper .login-simple .new-account {
    display: none; }

/* line 3, Core/Projetos/lojadasalonline.com.br/src/scss/painel/_painel.scss */
.area-profile.page-account-address .the-modal.putted-sizes {
  width: 300px;
  height: 100px; }
  /* line 6, Core/Projetos/lojadasalonline.com.br/src/scss/painel/_painel.scss */
  .area-profile.page-account-address .the-modal.putted-sizes .message {
    text-align: center;
    font-size: 13px;
    font-weight: bold;
    padding: 20px 0 15px; }
  /* line 12, Core/Projetos/lojadasalonline.com.br/src/scss/painel/_painel.scss */
  .area-profile.page-account-address .the-modal.putted-sizes .button-wrapper {
    text-align: center; }
    /* line 14, Core/Projetos/lojadasalonline.com.br/src/scss/painel/_painel.scss */
    .area-profile.page-account-address .the-modal.putted-sizes .button-wrapper button {
      background-color: #00ACBF;
      width: 80px;
      height: 30px;
      line-height: 30px;
      color: white;
      -moz-border-radius: 20px;
      -webkit-border-radius: 20px;
      border-radius: 20px;
      text-align: center;
      display: inline-block;
      margin: 0 5px;
      border: 0;
      box-shadow: 0 0 0 2px #00ACBF;
      display: inline-block;
      font-family: "Flicker", sans-serif !important; }
      /* line 28, Core/Projetos/lojadasalonline.com.br/src/scss/painel/_painel.scss */
      .area-profile.page-account-address .the-modal.putted-sizes .button-wrapper button.no {
        color: #00ACBF;
        background-color: transparent; }

/* line 38, Core/Projetos/lojadasalonline.com.br/src/scss/painel/_painel.scss */
.area-profile.page-account-edit .wd-success-message-modal .the-modal {
  max-width: 300px !important; }
  /* line 40, Core/Projetos/lojadasalonline.com.br/src/scss/painel/_painel.scss */
  .area-profile.page-account-edit .wd-success-message-modal .the-modal .the-modal-container {
    background-color: transparent; }
  /* line 43, Core/Projetos/lojadasalonline.com.br/src/scss/painel/_painel.scss */
  .area-profile.page-account-edit .wd-success-message-modal .the-modal .close {
    top: 9px !important;
    right: 11px !important;
    background-color: transparent !important;
    color: #3c763d !important; }

/* line 445, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.open-modal-wishlist .wd-modal.wd-product-wishlist-login-modal {
  padding-top: 30px; }
  /* line 447, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
  .open-modal-wishlist .wd-modal.wd-product-wishlist-login-modal .alert {
    padding: 10px !important;
    font-size: 12px;
    width: 95%;
    margin: 0 auto; }
  /* line 453, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
  .open-modal-wishlist .wd-modal.wd-product-wishlist-login-modal .container {
    width: 95%;
    margin: 0 auto; }

/* line 462, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.detalhe-produto .variacao .wd-product-variations span.error {
  color: #856404;
  background-color: #fff3cd;
  border-color: #ffeeba;
  font-size: 11px;
  padding: 5px 10px;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  position: absolute;
  z-index: 1;
  margin-left: 10px;
  top: 37px !important;
  right: 0 !important;
  right: inherit !important;
  bottom: initial !important; }

/* line 480, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.detalhe-produto .medias .wd-flags {
  z-index: 2 !important; }

/* line 485, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.detalhe-produto .medias .lista-de-desejos .wd-product-wishlist .btn-product-wishlist {
  position: absolute;
  right: 30px;
  z-index: 3;
  top: -10px;
  box-shadow: 0 0 0 2px #00ACBF;
  color: #00ACBF;
  background-color: transparent;
  width: 170px;
  height: 30px;
  line-height: 30px;
  padding: 0;
  font-size: 13px;
  -moz-border-radius: 20px;
  -webkit-border-radius: 20px;
  border-radius: 20px;
  text-align: center;
  clear: both;
  display: block;
  border: 0;
  margin: 20px auto;
  display: block;
  font-family: "Flicker", sans-serif !important; }
  /* line 506, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
  .detalhe-produto .medias .lista-de-desejos .wd-product-wishlist .btn-product-wishlist:before {
    content: '\f08a';
    font-family: fontAwesome;
    display: inline-block;
    margin-right: 5px; }
  /* line 512, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
  .detalhe-produto .medias .lista-de-desejos .wd-product-wishlist .btn-product-wishlist:hover {
    background-color: #00ACBF !important;
    color: #fff !important; }

/* line 520, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.detalhe-produto .rating {
  display: block;
  margin: 20px 0; }
  /* line 523, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
  .detalhe-produto .rating .wd-product-rating.wd-product-rating {
    display: inline;
    padding: 0;
    clear: none;
    overflow: inherit; }
    /* line 528, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
    .detalhe-produto .rating .wd-product-rating.wd-product-rating .rating-average,
    .detalhe-produto .rating .wd-product-rating.wd-product-rating .rating {
      position: relative;
      width: 100px;
      height: 18px;
      font-size: 0;
      background: none;
      text-indent: 0;
      padding: 0;
      margin: 0;
      padding-top: 18px; }
      /* line 539, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
      .detalhe-produto .rating .wd-product-rating.wd-product-rating .rating-average:before, .detalhe-produto .rating .wd-product-rating.wd-product-rating .rating-average:after,
      .detalhe-produto .rating .wd-product-rating.wd-product-rating .rating:before,
      .detalhe-produto .rating .wd-product-rating.wd-product-rating .rating:after {
        position: absolute;
        top: 0;
        font-size: 18px;
        letter-spacing: 3px;
        font-family: fontAwesome; }
      /* line 547, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
      .detalhe-produto .rating .wd-product-rating.wd-product-rating .rating-average:before,
      .detalhe-produto .rating .wd-product-rating.wd-product-rating .rating:before {
        left: 0;
        color: #A60550; }
      /* line 551, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
      .detalhe-produto .rating .wd-product-rating.wd-product-rating .rating-average:after,
      .detalhe-produto .rating .wd-product-rating.wd-product-rating .rating:after {
        right: 0;
        color: #ccc; }
    /* line 557, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
    .detalhe-produto .rating .wd-product-rating.wd-product-rating .rate-0:before {
      color: #ccc;
      content: "\f005\f005\f005\f005\f005"; }
    /* line 563, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
    .detalhe-produto .rating .wd-product-rating.wd-product-rating .rate-1:before {
      content: "\f005"; }
    /* line 566, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
    .detalhe-produto .rating .wd-product-rating.wd-product-rating .rate-1:after {
      content: "\f005\f005\f005\f005"; }
    /* line 571, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
    .detalhe-produto .rating .wd-product-rating.wd-product-rating .rate-2:before {
      content: "\f005\f005"; }
    /* line 574, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
    .detalhe-produto .rating .wd-product-rating.wd-product-rating .rate-2:after {
      content: "\f005\f005\f005"; }
    /* line 579, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
    .detalhe-produto .rating .wd-product-rating.wd-product-rating .rate-3:before {
      content: "\f005\f005\f005"; }
    /* line 582, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
    .detalhe-produto .rating .wd-product-rating.wd-product-rating .rate-3:after {
      content: "\f005\f005"; }
    /* line 587, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
    .detalhe-produto .rating .wd-product-rating.wd-product-rating .rate-4:before {
      content: "\f005\f005\f005\f005"; }
    /* line 590, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
    .detalhe-produto .rating .wd-product-rating.wd-product-rating .rate-4:after {
      content: "\f005"; }
    /* line 595, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
    .detalhe-produto .rating .wd-product-rating.wd-product-rating .rate-5:before {
      content: "" !important; }
  /* line 600, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
  .detalhe-produto .rating .link-avaliacao {
    text-decoration: underline !important;
    color: #A60550;
    font-size: 12px; }

/* line 608, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.detalhe-produto .avaliacao .wd-product-reviews .no-data {
  text-align: center;
  display: block; }

/* line 612, Core/Projetos/lojadasalonline.com.br/src/scss/desktop.scss */
.detalhe-produto .avaliacao .wd-product-reviews .review-create {
  background-color: #A60550;
  width: 150px;
  height: 30px;
  line-height: 30px;
  padding: 0;
  color: white;
  -moz-border-radius: 20px;
  -webkit-border-radius: 20px;
  border-radius: 20px;
  text-align: center;
  clear: both;
  display: block;
  margin: 20px auto;
  display: block;
  font-family: "Flicker", sans-serif !important; }




/* MENU TOPO */
.wd-category-menu nav > ul > li {
  padding: 0 4px 10px !important;
}
.wd-category-menu nav > ul > li + li:before {
    content: none !important;
}

.footer-nav {
    padding-bottom: 20px;
    border-bottom: 1px solid #ddd; 
}
.footer-nav-content > div {
    width: 14.1% !important;
} 

.wd-category-menu.wd-widget h3 {
    font-size: 13px;
}

.wd-category-menu.wd-widget li:not(.has-children) > h3 > a:before {
	content: none;
}
.wd-category-menu.wd-widget li.migs-do-dia > h3 {
    font-size: 13px;
    background: #000;
    color: #FFF;
    border-radius: 5px;
    padding: 5px 10px;
    margin-top: -5px;

    animation: fadeinphoto ..5s 5s infinite;
    -moz-animation: fadeinphoto .5s 5s infinite;
    -webkit-animation: fadeinphoto .5s 5s infinite;
    -o-animation: fadeinphoto .5s 5s infinite;
}


@keyframes fadeinphoto {
    0% { background: #000; }
    50% { background: #A60550; }
    100% { background: #000; }
}

@-moz-keyframes fadeinphoto {
    0% { background: #000; }
    50% { background: #A60550; }
    100% { background: #000; }
}

@-webkit-keyframes fadeinphoto {
    0% { background: #000; }
    50% { background: #A60550; }
    100% { background: #000; }
}

@-o-keyframes fadeinphoto {
    0% { background: #000; }
    50% { background: #A60550; }
    100% { background: #000; }
}

/*--MENU OUTLET*/


body .category-description .wd-custom-html .wd-content {
	font-size:14px;
}

body.r800 footer .tech li div {
    vertical-align: middle;
    margin: 0 10px;
}

body[class*="context-product-"] .brinde {
	display: none;
}




/*File:~/custom/content/themes/Salon2020DESK/Landings/meu-amor/css/meu-amor.css*/
@font-face {
    font-family: 'Isidora';
    src: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/Isidora-Light.eot');
    src: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/Isidora-Light.eot?#iefix') format('embedded-opentype'),
         url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/Isidora-Light.woff2') format('woff2'),
         url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/Isidora-Light.woff') format('woff'),
         url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/Isidora-Light.ttf') format('truetype'),
         url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/Isidora-Light.svg#Isidora-Light') format('svg');
    font-weight: normal;
    font-style: normal;
}

@font-face {
    font-family: 'isidoramedium';
    src: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/isidora-medium.woff2') format('woff2'),
         url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/isidora-medium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}


/*
@font-face {
    font-family: 'Isidora';
    src: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/Isidora-Medium.eot');
    src: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/Isidora-Medium.eot?#iefix') format('embedded-opentype'),
         url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/Isidora-Medium.woff2') format('woff2'),
         url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/Isidora-Medium.woff') format('woff'),
         url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/Isidora-Medium.ttf') format('truetype'),
         url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Styles/fonts/Isidora-Medium.svg#Isidora-Light') format('svg');
    font-weight: normal;
    font-style: normal;
}
*/

.img-preta.colun {
    width: 49%;
}
.colun {
    display: inline-block;
    vertical-align: top;
}
.colun.duasimg {
    width: 49%;
}
body.salonline-meu-amor #middle {
	background: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Landings/meu-amor/img/bg-middle-min.jpg') repeat center 0 transparent;
}
body.salonline-meu-amor.r800 #middle {
	margin-top: 105px !important;
}

body.salonline-meu-amor .wrapper {
	max-width: 1140px;
	margin: auto;
}
body.salonline-meu-amor .img-fullbanner img {
	max-width: 100%;
}

body.salonline-meu-amor .banners {
	background: #FFF;
}
body.salonline-meu-amor.r800 .banners {
	margin: 0 10px;
	padding: 1px;
	margin-top: -10px;
    position: relative;
}
body.salonline-meu-amor .banners a {
}
body.salonline-meu-amor.r800 .banners a {
    margin: 10px;
    box-sizing: border-box;
    display: block;
}
body.salonline-meu-amor .banners img {
	max-width: 100%;
	height: auto;
}
.img-karol {
    margin-bottom: 10px; 
}
body.salonline-meu-amor .banners .img-prod {}
body.salonline-meu-amor .banners .img-prod .colun:nth-child(1) {
	width: 47%;
    margin: 15px 13px;
}
body.salonline-meu-amor .banners .img-prod .colun:nth-child(2) {
	width: 50%;
    padding: 15px 7px;
}
body.salonline-meu-amor .banners .img-prod2 {
	text-align: center;
    margin-bottom: 14px;
}
body.salonline-meu-amor .banners .img-prod2 .colun:nth-child(1) {
	width: 31%;
	margin-right: 2%;
}
body.salonline-meu-amor .banners .img-prod2 .colun:nth-child(2) {
	width: 31%;
	margin-right: 2%;
}
body.salonline-meu-amor .banners .img-prod2 .colun:nth-child(3) {
	width: 31%;
}
body.salonline-meu-amor .banners .img-prod3 {
	text-align: center;
}
body.salonline-meu-amor .banners .img-prod3 .colun:nth-child(1) {
	width: 48%;
	margin-right: 1%;
}
body.salonline-meu-amor .banners .img-prod3 .colun:nth-child(2) {
	width: 48%;
	margin-bottom: 15px;
}

body.salonline-meu-amor .video-content {
	background: url('//d830okm0xici6.cloudfront.net/custom/content/themes/Salon2020DESK/Landings/meu-amor/img/bg-video-min.jpg') repeat center 0 transparent;
	padding: 50px 0;
	box-sizing: border-box;
	text-align: center;
}
body.salonline-meu-amor.r800 .video-content {
	background-size: cover;
}
body.salonline-meu-amor .video-content img {
	max-width: 100%;
	height: auto;
} 
body.salonline-meu-amor .video-content h2 {
	font-family: "Isidora", sans-serif !important;
	text-transform: uppercase;
	margin: 0 0 20px 0;
	padding: 0;
	text-align: center;
	font-weight: normal;
	font-size: 36px;
}
body.salonline-meu-amor .video-content .row:nth-child(1) > div:nth-child(1) {
	width: 44%;
	margin-right: 4%;
}
body.salonline-meu-amor .video-content .row:nth-child(1) > div:nth-child(2) {
	width: 40%;
}

body.salonline-meu-amor.r800 .video {
	margin: 0 0 -10px 0;
}
body.salonline-meu-amor.r800 .video-content .video {
	margin: 50px 0;
}


body.salonline-meu-amor .marcas {
	margin: 0 !important;
}
body.salonline-meu-amor .marcas li {
	margin: 0 !important;
}
body.salonline-meu-amor .marcas li a {
	margin: 0 !important;
}
body.salonline-meu-amor .list-brands {}
body.salonline-meu-amor .list-brands ul {
	text-align: center;
}

body.salonline-meu-amor.r800 .list-brands ul {
	text-align: left;
}
body.salonline-meu-amor .list-brands ul li {
	display: inline-block;
	vertical-align: middle;
	padding: 15px;
    box-sizing: border-box;
    width: 19%;
}
body.salonline-meu-amor.r800 .list-brands ul li {
	width: 100px;
	float: none;
	text-align: center;
	padding: 0px;
}

body.salonline-meu-amor .list-brands ul li img {
	max-width: 100%;
}
body.salonline-meu-amor.r800 .list-brands ul li img {
	max-width: 60%;
	display: inline-block;
}
.list-brands .slick-slider .slick-prev {
	left: 5px; 
	background: url('https://www.lojadasalonline.com.br/custom/content/themes/salon-line/images/arrow-prev.png') no-repeat center center #CDCDCD;
}
.list-brands .slick-slider .slick-next {
	right: 5px;
	background: url('https://www.lojadasalonline.com.br/custom/content/themes/salon-line/images/arrow-next.png') no-repeat center center #CDCDCD;
}
.list-brands .slick-slider .slick-prev,
.list-brands .slick-slider .slick-next {
	z-index: 2;
    background-color: #CDCDCD;
    background-size: 30%;
}
.list-brands .slick-slider .slick-prev:before,
.list-brands .slick-slider .slick-next:before {
	content: none;
}
/*File:~/custom/content/themes/Shared/Styles/ajustes.css*/
.detalhe-do-produto .multiple-variations thead tr{
	display: flex;
    flex-direction: column;
    align-items: flex-start;
}

.flagganhepontos {
	display: inline-block;
    position: absolute;
    left: 220px;
    top: 106px;
}

/*
li.product-1010608 .product-price,
li.product-1010608 .cta,
.carrinho-lateral .wd-checkout-basket-summaryheader .wd-widget > .wd-content ul.product a[href*="-43405-p1010608"] + .content-product,
.context-product-1010608 .detalhe-produto .produto-comprar {
	display: none !important;
}*/
/*File:~/custom/content/themes/Salon2020DESK/Styles/correcoes.css*/
.full-banner .wd-marketing-banner img{border-radius:0 0 10px 10px;}
.homepage .bg-topo img, .HomeRoute .bg-topo img{    border-radius: 10px;}
.cart-container{float:right;}
header .col-sm-7{}
.col--header{margin-left: 45px;}

.marcas {
    margin: 30px 0 0 !important;
    overflow: hidden;
    position: relative;
    height: 120px;
}
body.felipe-neto.page-basket .sprite-logo:before{
	background:url('http://d830okm0xici6.cloudfront.net/custom/content/themes/salon-line/Images/felipeneto/logo-footer.png') no-repeat;
	width:276px;
	height:120px;
}
body.felipe-neto.page-basket .footer-bottom .seguranca{
	display:none;
}
body.felipe-neto.page-basket .sprite-sanders:after {
    content: "AGÊNCIA";
    display: block;
    position: absolute;
    top: -37px;
    font-size: 11px;
    font-weight: bold;
}
body.felipe-neto.page-basket ul.col-md-4.payment{
	margin-left:150px;
}
body.felipe-neto.page-basket ul.col-md-4.tech{
	float:right;
	margin-right:50px;
}
body.felipe-neto.page-basket .sprite-sanders:before{
	display:none;
}
body.felipe-neto.page-basket .agencia-presenca{
	display:block !important;
}
.marcas .slick-slider .slick-prev,
.marcas .slick-slider .slick-next {
    display: block;
    border-radius: 100px;
    width: 40px;
    background-size: 20%;
    padding: 0;
    height: 40px;
    background-color: #607d8b5c;
    top: 40px!important;
}

.marcas .slick-slider .slick-prev {
    left: 0;
}

.marcas .slick-slider .slick-next {
    right: 0;
}

.marcas li a {
    vertical-align: middle;
    padding: 20px!important;
    border-radius: 100px!important;
    width: 120px!important;
    min-width: auto!important;
    height: 126px!important;
}

.marcas li a svg{
    filter: brightness(1.5) sepia(1) hue-rotate(62deg) saturate(0);
    transition: all .300s;
    -webkit-transition: all .300s;
    -ms-transition: all .300s;
    -moz-transition: all .300s;
    -o-transition: all .300s;
}

.marcas li a:hover svg{
        filter:none;

}

.marcas.slick-list {
    width: 1085px;
    margin: 0 auto;
    position: relative;
    overflow: hidden;
    padding: 30px 0 20px;
    padding-left: 20px;
}

.buscaCepCorreios {
  display: none !important;
}

.authenticated {
  float: left;
  margin-right: 10px;
}

.authenticated span.click-here {
  display: none;
}

header .wd-category-menu li,
header .wd-category-menu li {
    float: left;
    padding: 0 10px 10px;
    position: static;
    letter-spacing: -0.5px;
}

header .wd-marketing-banner div {
  height: auto !important;
}

header .wd-category-menu li,
header .wd-category-menu ul li {
  border: 0;
}


.calcular-frete span {
  display: none;
}

.wd-category-menu  nav > ul > li + li:before{
    content: '|';
    position: relative;
    left: 0;
    top: 2px;
    font-size: 10px;
    float: left;
    margin: 0 -10px;
}
.wd-profile-welcome-shopper a.signed-out {
    font-size: 0;
    position: relative;
}
.wd-profile-welcome-shopper a.signed-out:before {
    font-size: 12px;
    content: 'Olá visitante. Bem vindo! Faça seu login aqui';
    position: absolute;
    top: -9px;
    left: -8px;
    width: 350px;
}
.wd-profile-welcome-shopper a.signed-out {
    font-size: 0;
    position: relative;
}
.wd-profile-welcome-shopper a.signed-out:before {
    font-size: 12px;
    content: 'Olá visitante. Bem vindo! Faça seu login aqui';
    position: absolute;
    top: -9px;
    left: -8px;
    width: 350px;
}

.wd-checkout-basket-summaryheader.fi-arrow-down.align-fi-arrow-down.wd-widget-js em {
    font-style: normal;
    font-size: 16px;
}
.wd-profile-welcome-shopper a.signed-out {
    font-size: 0;
    position: relative;
}
.wd-profile-welcome-shopper a.signed-out:before {
    font-size: 12px;
    content: 'Olá visitante. Bem vindo! Faça seu login aqui';
    position: absolute;
    top: -9px;
    left: -8px;
    width: 350px;
}
.wd-category-menu li .sub-section li.titulo a{
    font-family: "Quicksand", sans-serif !important;
    color: #a71a50;
    font-weight: bold;
}
.wd-category-menu li .sub-section {
    width: 100%;
  position: absolute;
}
.wd-category-menu li .sub-section a{
    font-family: "Quicksand", sans-serif !important;
    color: #000;
    font-weight: normal;
    font-size: 13px;
}
.wd-category-menu li .sub-section li.titulo a:before{
    margin: 0;
    content: '';
}
.wd-category-menu li .sub-section li a:before{
    content: '»';
    margin: 0 10px 0;
}
.wd-category-menu li .sub-section li a:hover:before {
  margin: 0 10px 0 !important;
}
header .wd-checkout-basket-summaryheader .wd-widget {
    border-bottom: 6px solid #8d0c4f;
}
.wd-checkout-basket-summaryheader .wd-widget>.wd-footer strong.preco {
    font-size: 20px;
}

.wd-checkout-basket-summaryheader .wd-widget>.wd-footer {
    text-align: left;
}
.wd-product-line .variation img.fade.showing, .wd-product-line-medias .variation img.current-img, .wd-product-line-medias .variation img.showing {
    opacity: 1;
    filter: alpha(opacity=100);
    padding: 20px;
}
.detalhe-produto .zoom img{
  max-height:initial;
}
.wd-browsing-breadcrumbs .location {
    display: none;
}

.wd-browsing-breadcrumbs li {
    text-transform: uppercase;
    float: left;
    padding: 0 5px 0 0;
    position: relative;
}
.wd-browsing-breadcrumbs li + li{
    padding: 0 5px;
}
.wd-browsing-breadcrumbs li + li:before{
    content: '|';
    position:absolute;
    left: -5px;
    font-size: 12px;
    top: 1px;
}

.wd-browsing-breadcrumbs li strong{
    border-bottom: 1px solid #9c174f;
    color: #9c174f;
}

.linha-capilar li {
  float: none;
  width: 25px;
  padding: 0;
  margin: 6px;
  position: relative;
  display: inline-block;
}

.linha-capilar li img {
  width: 100%;
}

.linha-capilar li .hover {
  position: absolute;
  top: -30px;
  width: 150px;
  left: -20px;
  text-align: center;
  border-radius: 10px;
  border: 1px solid;
  color: #fff;
  background: #ccc;
  line-height: 22px;
}
.linha-capilar li .hover:before{
  border: 10px solid transparent;
  border-top-color: #bf3605;
  content: "";
  left: 21px;
  position: absolute;
  top: 20px;
}
.linha-capilar li.linha-3a .hover,
.linha-capilar li.linha-3b .hover,
.linha-capilar li.linha-3c .hover,
.linha-capilar li.linha-3abc .hover{
  background: #4abebc;
}
.linha-capilar li.linha-3a .hover:before,
.linha-capilar li.linha-3b .hover:before,
.linha-capilar li.linha-3c .hover:before,
.linha-capilar li.linha-3abc .hover:before{
  border-top-color: #4abebc;
}
.linha-capilar li.linha-4a .hover,
.linha-capilar li.linha-4b .hover,
.linha-capilar li.linha-4c .hover,
.linha-capilar li.linha-4abc .hover{
  background: #f5a00a;
}
.linha-capilar li.linha-4a .hover:before,
.linha-capilar li.linha-4b .hover:before,
.linha-capilar li.linha-4c .hover:before,
.linha-capilar li.linha-4abc .hover:before{
  border-top-color: #f5a00a;
}
.linha-capilar li.linha-1a .hover,
.linha-capilar li.linha-1b .hover,
.linha-capilar li.linha-1abc .hover,
.linha-capilar li.linha-2a .hover,
.linha-capilar li.linha-2b .hover,
.linha-capilar li.linha-2abc .hover{
  background: #624fb2;
}
.linha-capilar li.linha-1a .hover:before,
.linha-capilar li.linha-1b .hover:before,
.linha-capilar li.linha-1abc .hover:before,
.linha-capilar li.linha-2a .hover:before,
.linha-capilar li.linha-2b .hover:before,
.linha-capilar li.linha-2abc .hover:before{
  border-top-color: #624fb2;
}

.linha-capilar li .hover{
  opacity: 0;
  transition: 0.5s all;
  top: 0;
  z-index: -1;
}
.linha-capilar li:hover .hover{
  opacity: 1;
  top: -30px;
  z-index: 1;
}
ul.linha-capilar {
    float: left;
    width: 100%;
  text-align: center;
}
.wd-product-associations li li article, .prateleira li article {
    margin: 0 15px;
    border-radius: 4px;
    border: 1px solid #eee;
    text-align: center;
    padding: 15px;
    background-color: white;
    transition: all 300ms;
    height: 445px;
}
.footer-nav li:not(.titulo) {
    list-style: none;
}
header .wd-checkout-basket-summaryheader .wd-widget > .wd-content ul li.name {
    width: 270px;
}
.wd-checkout-basket-gift .tabs .wd-product-list ul li {
    width: 40%;
    min-height: 110px;
    padding: 15px;
    max-height: 110px;
}

.wd-checkout-basket-gift .tabs .wd-product-list .product-list-image {
    width: 30%;
    float: left;
}

.wd-checkout-basket-gift .tabs .wd-product-list .product-list-image img {
    max-width: 100%;
    max-height: 70px;
    width: auto;
}

.wd-checkout-basket-gift .tabs .wd-product-list .product-title {
    font-size: 11px;
    text-align: left;
    width: 310px;
    line-height: 20px;
}

.wd-checkout-basket-gift .tabs .divisor {
    min-height: 50px;
    max-height: 50px;
}

.wd-checkout-basket-gift .tabs .divisor div {
    min-height: 10px;
    max-height: 10px;
}

.wd-checkout-basket-gift .tabs .divisor .or {
    top: 37px;
}

.wd-checkout-basket-gift .tabs .wd-product-gift-line .button.select-gift {
    position: absolute;
    right: 0;
    bottom: 0;
    margin: 0;
    padding: 5px;
    color: #fff;
}
.wd-checkout-basket-gift .tabs .divisor div{
  display: none !Important;
}
header.fixed .wd-category-menu.fixed-active {
    box-shadow: 0 13px 20px #0000002e;
}

header.fixed .wd-category-menu.fixed-active li .sub-section {
    margin: 0;
}

header.fixed .wd-category-menu.fixed-active li h3 {
    line-height: 40px;
}

header.fixed .wd-category-menu.fixed-active li:hover {
    position: relative;
}

.main-nav li:hover > h3 > a:before, header.fixed .wd-category-menu.fixed-active li:hover > h3 > a:before {
    border-color: transparent white  transparent  transparent;
    top: 1px;
    left: 182px;
  border: 18px;
}
.main-nav li, .wd-category-menu li {
    border: 0;
}
.prateleira li article{
    height: 465px !important;
}
article .cta {
    position: absolute;
    width: 100%;
    left: 0;
    bottom: -20px;
}
.status-wrapper {
    max-width: 560px;
    width: 380px;
    line-height: 20px;
    margin: -5px 0 0;
}
.botao-carrinho-footer button.bt-keep-buying {
    float: right;
    margin: 0 89px;
    background: #eee;
    border-radius: 50px;
    color: #060606;
    padding: 0 30px;
}
.wd-profile-welcome-shopper a.signed-out {
    font-size: 0;
    position: relative;
    top: 10px;
}
.wd-product-associations li li article .list-price, .prateleira li article .list-price {
    width: 100%;
    float: left;
}
.detalhe-produto .nome-produto {
    font-size: 28px;
    margin-bottom: 30px;
    line-height: 34px;
}
header.fixed .wd-category-menu.fixed-active li .sub-section {
    width: 800px;
}
.loading-grid{
    display: none !important;
}
.percent-difference{
  display: none;
}
.prateleira li article li {
    padding: 0;
}
.preco-produto .sale-price .prefix{
  display: none;
}
header.fixed .wd-category-menu.fixed-active li:before{
    content: '';
}
label span.required{
  display: inline-block !important;
}
button.bt-notifyme {
    border-radius: 20px;
    background: #8c0c4f;
    color: #fff;
    padding: 10px 35px;
  float: right;
}
.notify-form.wd-widget form > div {
    display: none;
}
.notify-form.wd-widget form > div {
    display: none;
}
.notify-form.wd-widget form label{
    display: block;
}
.notify-form.wd-widget form input{
    height: 40px;
    margin: 0 0 10px;
    border-radius: 20px;
    border: 1px solid #ccc;
    width: 100%;
}

button.submit {
    float: right;
}

.notify-form.wd-widget form button {
    background: #A60550;
    border-radius: 20px;
    padding: 10px 30px 5px;
    color: #fff;
    text-transform: uppercase;
    font-weight: bold;
}

.notify-form.wd-widget form > div {
    display: none;
}
.notify-form.wd-widget form label{
    display: block;
}
.notify-form.wd-widget form input{
    height: 40px;
    margin: 0 0 10px;
    border-radius: 20px;
    border: 1px solid #ccc;
    width: 100%;
}

button.submit {
    float: right;
}

.notify-form.wd-widget form button {
    background: #A60550;
    border-radius: 20px;
    padding: 10px 30px;
    color: #fff;
}
.wd-facet-group .facets ul{
    padding: 0 !important;
}
.wd-facet-group .facets ul li a{
    width: 100%;
    font-size: 13px;
    margin: 10px 0;
}
.wd-facet-group .facets .facet-type .facet-type-list .facet-title:before{
    display: none;
}

.wd-facet-group .facets .facet-type .facet-type-list a:before {
    content: '';
    width: 10px;
    height: 10px;
    display: inline-block;
    border: 1px solid #ccc;
    margin: 0 10px 0 0;
    color: #8d0c4f;
    border-radius: 2px;
}
.marcas {
  margin: 30px 0 0 !important;
}
.marcas li{
  float: left;
  width: 150px;
  
}
.marcas li a{
    max-width: 150px;
    height: 150px;
    display: table-cell;
    vertical-align: middle;
    min-width: 150px;
    padding: 20px;
}

.marcas li img {
    max-width: 100%;
    max-height: 150px;
    padding: 30px;
    vertical-align: middle;
}
.homepage .prateleira-topo .wd-icon, .HomeRoute .prateleira-topo .wd-icon {
    display: none;
}

.homepage .prateleira-topo .wd-icon, .HomeRoute .prateleira-topo {
    text-align: center;
}

/*.HomeRoute .prateleira-filtro .slider-legenda*/
.homepage .prateleira-filtro #slider,
.HomeRoute .prateleira-filtro #slider {
    z-index: -1;
    display: none;
}

.wd-category-menu.wd-widget h3, .wd-category-menu.wd-widget h4, .wd-facet-group .facets h3, .wd-facet-group .facets h4{
  position: relative;
}
.main-nav li:hover > h3 > a:before, .wd-category-menu li:hover > h3 > a:before {
    display: block;
    content: '';
    width: 0;
    height: 0;
    border-style: solid;
    border-width: 0 18px 12px 18px;
    border-color: transparent transparent white transparent;
    position: absolute;
    left: 50%;
    bottom: -10px;
    z-index: 9999999;
}
.full-banner .wd-marketing-banner img {
    width: auto;
    left: 0;
    margin-left: 0;
  position: relative;
}
.row.line-top {
    padding: 30px 0 0;
    border-top: 1px solid #ccc;
}
.marcas .slick-slider{
  padding: 0 60px;
}
.wd-facet-group .facets .facet-type .facet-type-list .selected a:before {
    background: #8d0c4f;
    border-color: #8d0c4f;
}

.facet-type-selected.template ,
.selected-facets.show {
    display: none !important;
}

span.read-more__link {
    color: #8d0c4f;
}
.full-banner .wd-marketing-banner img{
  /*top: -2px;*/
}
header .prateleira {
    width: 530px;
    position: absolute;
    right: 0;
}

.wd-category-menu li .sub-section .prateleira a:before {
    content: '';
    margin: 0;
    display: none;
}

header .product-photo {
    width: 50%;
    float: left;
    position: relative;
}

header .product-price {
    float: right;
    width: 234px;
    text-align: left;
    padding: 90px 0 0;
}

header .prateleira li article .product-name {
    position: absolute;
    right: -240px;
    width: 240px;
    text-align: left;
    line-height: 20px;
    top: 0;
}

header .prateleira li article {
    width: 500px;
  height: 280px !important;
  text-transform: initial;
}
header article .cta {
    top: 170px;
    width: 290px;
    right: 10px;
    left: initial;
}
header .prateleira li article .buy {
    width: 230px;
    height: 46px;
    margin: 0 auto;
    border-radius: 23px;
    background-color: #6ebf55;
    font-family: "Flicker", sans-serif !important;
    color: #6ebf55 !important;
    text-align: center;
    font-size: 27px;
    display: block;
    line-height: 46px;
    margin-top: 0;
    opacity: 0;
    visibility: hidden;
    transition: all 300ms;
    background-color: #fff;
  border: 2px solid #6ebf55;
}
header .prateleira li article .buy:hover {
    background-color: #6ebf55;
    color: white !important;
}

header .prateleira li article .buy {
    margin: 20px 30px;
  opacity: 1;
  visibility: inherit;
  bottom: 0;
  margin-top: 20px !important;
}

header ul.linha-capilar {
    position: absolute;
    top: 70px;
    right: -98%;
}

header .wd-category-menu li .sub-section li {
    position: relative;
}
.show-cep input[type=text] {
    width: 100%;
    height: 36px;
    border-radius: 30px;
    border: 1px solid #ccc;
    float: left;
    padding: 0 20px;
  
}



.show-cep button{
    height: 36px;
    color: white;
    background-color: #8d0c4f;
    float: none;
    border: 0;
    position: relative;
    font-weight: bold;
    width: auto;
    text-transform: uppercase;
    right: 0;
    border-radius: 36px;
    font-family: "Quicksand", sans-serif !important;
    font-size: 14px;
    left: -50px;
    line-height: 39px;
}

.show-cep .input-wrapper {
    float: left;
    width: 200px;
}

form.show-cep {
  float: left;
  width: 100%;
  margin: 40px 0 0;
  padding-left: 20px;
  position: relative;
}
.tab-header li img {
    width: 100%;
}
.fixed-active .prateleira {
    display: none;
}
.HomeRoute .prateleira-filtro .tabs .tab-header li {
    padding: 0 5px;
    box-sizing: border-box;
    width: 37px;
  height: 20px;
  cursor: pointer;
    transition: all 0.5s;
  
}
.HomeRoute .prateleira-filtro .tabs .tab-header li.tab-active,
.HomeRoute .prateleira-filtro .tabs .tab-header li:hover{
  padding: 0;
}
.homepage .prateleira-filtro, .HomeRoute .prateleira-filtro{
  padding: 0 0 90px;
  margin: 30px 0 0;
}
.homepage .prateleira-topo .wd-header, .HomeRoute .prateleira-topo .wd-header{
  display: none;
}
header .main-nav li .sub-section, header .main-nav li .submenu, 
header .wd-category-menu li .sub-section, 
header .wd-category-menu li .submenu{
  min-height: 350px;
}
#middle{
  position: relative;
  z-index: 1;
}
header{
  position: relative;
  z-index: 2;
}
header .wd-product-line-medias .variation img.current-img{
  width: auto;
    height: auto;
}
.wd-profile-welcome-shopper a.signed-out:before{
  left:0;
}
li.tratamento.first.has-children {
    padding-left: 0;
}
img.right.calculo {
    float: right;
    margin: 10px 0;
}

img.right.frete {
    float: right;
}

.frete-cart .icon {
   background: url('//d830okm0xici6.cloudfront.net/Custom/Content/Themes/salon-line/Images/cart-icon.jpg') no-repeat;
   padding: 10px 0 0px 50px;
}
.desconto-cart b.title {
   background: url('//d830okm0xici6.cloudfront.net/Custom/Content/Themes/salon-line/Images/desconto-icon.jpg') no-repeat;
   padding: 10px 0 0px 40px;
}

.frete-simulate .wd-title {
   text-align: left;
   margin: 20px 0;
   font-size: 19px;
}

.frete-simulate table.result {
   width: 100%;
}

.loading-buy{display:none !important;}


header.fixed .sprite-logo:before {
  background: url('//d830okm0xici6.cloudfront.net/Custom/Content/Themes/salon-line/Images/logo-mobile.png') no-repeat center;
  width: 230px;
}

header.fixed {
  background: #a5045e;
}

header.fixed .open-sticky-nav {
  color: #fff;
}

header.fixed .wd-checkout-basket-summaryheader .wd-widget{
       right: 0px;
}
header.fixed .wd-checkout-basket-summaryheader:hover:before {
   top: 51px;
   left: 8px;
}

.fixed .wd-checkout-basket-summaryheader {
   height: 60px;
   display: inline-block;
}

header.fixed {
   transition: all 1s;
}

header .topbar{margin-bottom:0;}

header .shopper-authenticated .sign-out {
   float: left;
   font-size: 11px;
   padding: 0;
   padding-top: 1px;
   z-index: 99999;
}
.status-wrapper {
   /*max-width: 560px;
   width: 280px;*/
   line-height: 20px;
   margin: -5px 0 0;
}

.col-md-4.welcome {
   margin: 6px 0 0;
}

@media screen and (max-width: 1024px) {
  .wd-product-line .variation img.fade.showing,
  .wd-product-line-medias .variation img.current-img,
  .wd-product-line-medias .variation img.showing {
    width: 180px;
    height: 180px;
    margin: 0;
  }
  
  .wd-checkout-basket-deliveryoptions label {
    display: none !important;
  }
}


@media screen and (min-width: 768px) and (max-width: 1025px) {  
  .marcas li a {
    padding: 40px;
  }
  
  header .sprite-logo:before {  
    width: 180px;
    background-size: contain;
  } 
  
  .col-sm-7 {
    margin-top: 10px;
  }
  
  .wd-product-line-medias a.thumb {
    width: 100% !important;
  }
  
  .wd-product-line .variation img.fade.showing,
  .wd-product-line-medias .variation img.current-img,
  .wd-product-line-medias .variation img.showing {
    width: auto;
    height: 180px;
    margin: 0 auto;
  }
}

@media screen and (max-width: 1024px) {
  
  #middle {
    margin-top: 58px;
  }
  
  .full-banner .wd-marketing-banner img {
    width: 100%;
  }
  
  header {
    background: #a5045e;
  }
  
  header .open-sticky-nav {
    color: #fff;
  }
  
  header .wd-checkout-basket-summaryheader .wd-widget{
       right: 0px;
  }
  header .wd-checkout-basket-summaryheader:hover:before {
     top: 51px;
     left: 8px;
  }
  
  header .wd-checkout-basket-summaryheader {
     height: 60px;
     display: inline-block;
  }
  
  header {
     transition: all 1s;
  }
  
  header .sprite-logo {
    min-height: 60px;
  }
  
  header .sprite-logo:before {
    background: url('//d830okm0xici6.cloudfront.net/Custom/Content/Themes/salon-line/Images/logo-mobile.png') no-repeat center;
    width: 100%;
    height: 60px;
    background-size: contain;
  }
  
  .logo-container .open-mobile-menu {
    background-color: transparent;
    color: white;
    font-size: 16px;
      top: 13px;
  }
  
  
  
  header .main-nav, header .wd-category-menu {
    top: 55px;
  }
  
  header .wd-category-menu nav {
    padding-top: 20px;
  }
  
  header .main-nav li:first-of-type a, 
  header .wd-category-menu li:first-of-type a {
    padding-left: 0;
  }
  
  header .wd-category-menu li,
  header .wd-category-menu ul li {
    width: 100%;
    height: 60px !important;
    line-height: 60px !important;
    padding-left: 10px !important;
    border-bottom: 1px solid #eee;
  }
  
  header .wd-category-menu ul {
    padding: 0 5px;
  }
  
  .marcas li a {
    max-width: 130px;
    height: 130px;
    min-width: 130px;
    padding-left: 5px;
  }
  
  header .wd-category-menu h3 {
    display: inline-block;
  }
  
  
  header .sprite-logo {
    min-height: 40px;
  }
  
  header {
    position: fixed;
    width: 100%;
    top: 0;
  }
  
  
  .col-sm-7 > .row:first-of-type {
    display: none;
  }
  header .wd-category-menu nav {
    padding-top: 20px;
  }
  
  .wd-category-menu nav > ul > li + li:before {
    display: none;
  }
  
  header .main-nav li:first-of-type a, 
  header .wd-category-menu li:first-of-type a {
    padding-left: 0;
  }
  
  header .wd-category-menu li,
  header .wd-category-menu ul li {
    width: 100%;
    height: 40px;
    line-height: 40px;
    padding-left: 10px !important;  
  }
  
}

@media screen and (max-width: 640px) {
  #middle {
    margin-top: 139px !important;
  }
  .HomeRoute #middle,
  .grid-products #middle{
    margin-top: 111px !important;
  }
  .category-banner img {
    width: 100%;
    height: auto;
    left: 0;
    position: relative;
    margin-left: 0;
  }
  

  .slick-slider .slick-prev, 
  .slick-slider .slick-next {   
    top: 40%;
    width: 24px;
      height: 37px;
    background-size: 30%;
  }
  
  .category-description {
    margin-top: 20px;
    overflow: hidden;
    margin-bottom: 10px;
    padding: 0 5px;
  }
  
  .filtro-destaque {
    display: none;
  }
  
  .show-cep {
    float: none !important;
  }
  
  .prateleira li article{
    height: 345px !important;
  }
  
  .wd-product-line .variation img.fade.showing,
  .wd-product-line-medias .variation img.current-img,
  .wd-product-line-medias .variation img.showing {
    width: auto;
    height: 100%;
    margin: 0;
  }
  .wd-checkout-basket-discount .description label {
    display: none;
  }
  .wd-checkout-basket .total {
    height: auto;
  }
  
  .wd-checkout-basket-discount label {
    
    text-align: left;
    padding-left: 0;
  }
  
  .wd-checkout-basket-discount .input-group {
    position: relative;
    display: block;
    border-collapse: separate;
    width: 96%;
    
  }
  
  label.btn-calculate-delivery {
    display: none !important;
  }
  .frete-simulate .wd-title {
    text-align: center;
    padding-top: 0;
  }
  .frete-simulate thead {
    display: none;
  }
  .frete-simulate tbody tr {
    border: 1px solid #eee;
    
  }.frete-simulate tbody td:first-of-type {
    float: left;
    border-right: 1px solid #eee;
    
  }.frete-simulate tbody td:nth-of-type(2) {
    border-bottom: 1px solid #eee;
    
  }.frete-simulate tbody td {
    width: 50%;
    padding: 5px;
    text-align: center;
    float: right;
    
    
  }.frete-simulate td img {
    vertical-align: middle;
    max-width: 30%;
    height: auto;
    display: block;
    margin: 0 auto;
    
  }
  .form.show-cep {
    float: none !important;
    left: 17px !important;
  }
  
  .marcas .slick-slider {
    padding: 0 15px;
  }
  
  .wd-product-line-medias a.thumb {
    width: 100% !important;
    height: 120px !important;
    margin: 0 auto !important;
    padding: 0 !important;
  }
  
  
  
  
}

.sucesso-msg {
   margin: 10px 0 20px;
   color: #00b52a;
}

header.fixed .logo-container .sprite-logo {
    zoom: 0.75;
    top: -17px;
  -moz-transform: scale(0.75);  /* Firefox */

}
.wd-product-line .variation img.fade.showing, .wd-product-line-medias .variation img.current-img, .wd-product-line-medias .variation img.showing {
    opacity: 1;
    filter: alpha(opacity=100);
    padding: 0px;
}
.fixed li.tratamento.first.has-children {
    padding: 0 0 0 10px;
}

.wd-checkout-basket-deliveryoptions .description .input-group {
    padding: 0px 0;
}

.wd-checkout-basket-deliveryoptions .header {
    padding-left: 0;
}
.deliveryoptions-visible{display: none !important}


.themodal-overlay.wd-product-notifymewhenavailable-modal .the-modal {
    max-width: 35%;
}

.wd-flags {
    position: absolute;
    z-index: 2;
}

.wd-flags img {
    max-width: 50%;
}


.col-xs-12.erros {
    margin: 20px 0;
    background: #8c0c0c;
    padding: 10px;
    color: #fff;
    border-radius: 10px;
}
.wd-checkout-basket-deliveryoptions .js-delivery-choice .photo,
.delivery-list table td.icon{
    min-width: 70px;
    display: none;
}


.context-search-alem .category-description,
.context-search-alem .category-banner{display:none;}


@media (max-width:600px){
  .area-profile #left{
    margin-top:94px;
  }
.wd-profile-login .wd-title,
.wd-title, .main-title{
    text-align: center;
}
.register .register-now {
    background-color: #8d0c4f;
    color: white;
    width: 180px;
    height: 40px;
    line-height: 40px;
    text-align: center;
    display: block;
    margin: 0 auto;
}
.wd-profile-login button {
    background-color: #8d0c4f;
    color: white;
    width: 180px;
    height: 40px;
    line-height: 40px;
    display: block;
    text-align: center;
    border: none;
    margin: 0 auto;
}
a.recover-password {
    margin-top: 20px;
    display: block;
    margin: 30px auto 0;
    text-align: center;
}
body.area-profile #main > div.container button{
    position:initial;
}
body.area-profile #main > div.container #middle{
    min-width: 100%;
        margin-top: 30px !important;
}
.wd-checkout-ordersummary.short-mode .wd-content{
    clear:both;
}
.wd-profile-addressform label{
    font-size:12px;
}
body.area-profile #main > div.container #content-wrapper{
    margin-left:0;
}
.wd-profile-register label{
font-size:11px;
}
  body.area-profile.page-account-orderdetail .wd-profile-reorder.wd-widget-js td.product-name{
    width: 37%;
    padding: 0;
  }
  body .wd-profile-login .wd-content .email{
    width: 80%;
  }
  body.area-profile.page-account-edit #middle,
  body.area-profile.page-account-address #middle,
  body.area-profile.page-account-orders #middle
  {
      margin-top: 26px !important;
  min-width:100% !important;
  }
  body.area-profile.page-account-edit #main > div.container #content-wrapper,
  body.area-profile.page-account-address #main > div.container #content-wrapper,
body.area-profile.page-account-orders #main > div.container #content-wrapper{
      margin-left: 0;
  }
  body.area-profile #main > div.container .wd-profile-addresses td, body.area-profile #main > div.container .wd-profile-addresses th{
    font-size:10px !important;
        text-align: center;
  }
body.area-profile #main > div.container button{
         position: initial;
    margin: 0 auto;
    display: block;
    margin-bottom: 5px;
    float: initial !important;
}
.wd-profile-addresses .action form:nth-child(2){
  display:block !important;
}
body.area-profile #main > div.container .wd-profile-addresses .main-address-label{
  white-space:normal;
}
.wd-checkout-ordersummary .wd-checkout-ordernumber{
  width:100%;
}
.wd-checkout-ordersummary.short-mode .wd-header .order-link{
    top: 52px;  
}
body .wd-checkout-ordersummary.short-mode .wd-content .summary-data{
  position: relative;
    margin-left: 0;
    overflow: hidden;
    clear: both;
      padding-top: 13px;
}
.wd-checkout-ordersummary.short-mode .wd-content .summary-data .wd-subtitle .order-status{
    position: absolute;
    right: 10px;
        top: 43px !important;
    font-size: 9px;
}
body .wd-checkout-ordersummary.short-mode .wd-content .summary-data ul li {
    display: block;
    height: 40px;
    line-height: 40px;
    padding: 21px 5px;
    font-size: 11px;
}
body.area-profile #main div.container .labels,
body.area-profile #content .labels{
    width: 45% !important;
    margin-top: 0 !important;
}
body.area-profile #main > div.container .print-payment-slip .button,
body.area-profile #middle .print-payment-slip .button {
    padding: 5px 25px;
    margin-right: 10px;
    clear: both;
    width: 189px;
    font-size: 12px;
    display: block;
    text-align: center;
    margin: 0 auto;
}
body .wd-checkout-ordersummary.short-mode .wd-content .summary-data ul{
  margin-top:0;
}
body.area-profile #main > div.container .payment-data {
    float: left;
    width: 100%;
    margin-left: 0;
    margin-top: 20px;
}
body.area-profile #main > div.container .wd-profile-orders td, body.area-profile #main > div.container .wd-profile-orders th {
    padding: 10px 5px;
    font-size: 10px;
        text-align: center;
}
body.page-account-orders .wd-checkout-ordersummary.short-mode .wd-content .summary-data ul li{
    font-size: 10px;
}
.area-profile .payment-data{
      overflow: hidden;
    clear: both;
    padding-top: 17px;
}
.wd-title, .main-title{
  font-size:28px !important;
  margin-bottom:0;
}
.page-account-orderdetail .wd-checkout-orderpayment .content{
  min-width: 115px;
      font-size: 10px;
      top: 7px;
}
.page-account-orderdetail .wd-checkout-ordersummary.wd-widget-js{
  padding: 0 15px;
}
body.area-profile.page-account-orders #main > div.container button{
     top: 20px;
    display: block;
    text-align: center;
    margin: 0 auto;
}
body .wd-checkout-ordersummary.short-mode .wd-content .summary-data .wd-subtitle .order-status {
    position: initial;
    right: 10px;
    top: 10px;
    width: 80%;
    margin-bottom: 0;
    margin: 0 auto;
    margin-top: 13px;
}
.wd-checkout-orderdeliveryaddress .wd-subtitle, .wd-checkout-orderpayment .wd-subtitle, .summary-data .wd-subtitle {
    font-weight: bold;
    text-transform: uppercase;
    font-size: 16px;
    text-align: center;
}

body.area-profile.page-account-orders #main > div.container .labels + ul,
body.area-profile.page-account-orderdetail #content .labels + ul{
    margin-top: 0;
    float: left;
    width: 53%;
}
body.area-profile.page-account-orderdetail .wd-checkout-ordertracking .wd-content ul{
      margin: 0;
}
body.area-profile.page-account-orderdetail .wd-checkout-ordertracking{
  padding:0 15px;
}
body.area-profile.page-account-orderdetail .wd-checkout-ordertracking.wd-widget {
    padding: 0 !important;
}
body.area-profile.page-account-orderdetail .wd-checkout-ordertracking .wd-content ul li strong {
    display: block;
    height: 40px;
    font-size: 9px;
}
body.area-profile.page-account-orderdetail .wd-checkout-ordertracking .wd-content ul li {
    list-style-type: none;
    float: left;
    display: block;
    width: 18%;
    position: relative;
    text-align: center;
    padding: 0;
}
  body.area-profile.page-account-orderdetail .wd-checkout-ordertracking .wd-content small {
    display: block;
    font-size: 9px;
    padding-top: 5px;
  }
  button.buy-all.pull-right{
      background-color: #00ACBF;
    text-transform: uppercase;
    color: white;
    border-radius: 3px;
    box-shadow: none;
    border: none;
    transition: all 300ms;
    line-height: 29px;
    padding: 0 15px;
      margin-bottom: 15px;
  }
  body.area-profile.page-account-orderdetail .wd-profile-reorder.wd-widget-js{
    padding:0 15px;
  }
body.area-profile #main > div.container #left {
    width: 240px;
    margin: 102px auto 0;
}
  body.area-profile.page-account-orderdetail .wd-profile-reorder.wd-widget-js tr{

  }
  body.area-profile.page-account-orderdetail .wd-profile-reorder.wd-widget-js th,
  body.area-profile.page-account-orderdetail .wd-profile-reorder.wd-widget-js td
  {
           font-size: 8px;
    padding: 0 10px;
  }
body.area-profile.page-account-orderdetail .wd-profile-reorder.wd-widget-js button
  {
         display: block;
    margin-top: 9px;
    background-color: #00ACBF;
    text-transform: uppercase;
    color: white;
    border-radius: 3px;
    box-shadow: none;
    border: none;
    transition: all 300ms;
    line-height: 12px;
    padding: 6px 15px;
    margin-bottom: 15px;
  }
  body.area-profile.page-account-orderdetail .wd-profile-reorder.wd-widget-js form .input-wrap{
    float: initial;
  }
}
@media(min-width:320px) and (max-width:340px){
  body.area-profile.page-account-orderdetail .wd-checkout-ordertracking .wd-content ul li strong{
  font-size: 7px;
  }
}

@media (max-width:600px){
.felipe-neto.page-basket #middle{
        margin-top: 187px !important;
        width: 100%;
        max-width: 100%;
        min-width: 100%;
    }
    .felipe-neto .col-xs-2.hidden-md.hidden-lg.open-menu-mobile,
    .felipe-neto .top-header.row .col-md-4,
    .felipe-neto .col-md-5.text-right{
        display: none;
    }
    .felipe-neto .col-xs-12.col-md-3.main-logo{
        width: 100%;
    }
    .felipe-neto.page-basket header{
        background: none;
	    position: initial;
    }
    body.page-basket.felipe-neto{
         background: none;
    }
	body.page-basket footer{
		min-width:100% !important;
	}
body.felipe-neto.page-basket ul.col-md-4.payment{
        margin-left: 0;
    }
	body.felipe-neto.page-basket ul.col-md-4.tech strong{
		text-align:left;
	text-indent: 36px;
	}
	body.felipe-neto.page-basket div ul.col-md-4.tech{
		float: initial; 
    margin-right: 0;
	}
body.felipe-neto.page-basket .sprite-sanders:after{
	left:36px;
}
footer .copyright span{
	padding:0 15px;
}
}



.wd-product-media-selector li,
.wd-product-media-selector-carousel li {
	display: block !important;
}


.grid-empty #instafeed,
.grid-empty .prateleira-conteudo,
.grid-empty #IBY-vitrine-holder {
    display: none !important;
}


.grid-products .instafeed .main-title{
	text-align:center !important;
	display:none !important;
}

.grid-products .SBY-prev,
.grid-products .SBY-next{
	display:none !important;
}

.grid-empty #content-wrapper .container .row:first-child:before{
     content:"Que pena sua busca não encontrou nenhum resultado!";
    text-align: center;
    display: block;
    margin: 140px auto;
    font-weight: bold;
    font-size: 28px;
    color: #a5045e;
    width: 35%;
}






#cboxLoadedContent {
	min-width: 200px;
	min-height: 100px;
}
.wd-checkout-basket-deliveryoptions .error-message {
    white-space: normal !important;
}

header .user-nav li {
	padding: 0 2px;
}

.wd-profile-welcome-shopper .login-simple .login-wrapper .login-title {
    font-weight: bold;
}


.category-description .wd-custom-html .wd-content {
    height: auto;
    font-size: 13px;
}
.category-description .read-more__link {
    display: none;
}

body[class*="context-category-"] .category-description {
    display: block; 
}

body[class*="context-product-"] .customCategory {
    padding: 30px 10px;
}
body[class*="context-product-"] .customCategory a {
    color: #8d0c4f;
    font-weight: bold;
}



.flagganhepontoscart{
	width: 420px;
    position: relative;
    right: 36px;
    margin: 20px 0 0 0;
}


.wd-checkout-basket-gift .tabs .message-box {
    box-sizing: border-box;
    height: 100%;
}
.wd-checkout-basket-gift .tabs .message-box .wrapper {
    height: 100%;
    width: unset;
    top: 5px;
    right: unset;
    background: unset;
    box-shadow: unset;
}
.wd-checkout-basket-gift .tabs .message-box .wrapper .text {
    display: inline-block;
    padding: 4px 10px;
    background: #FFF;
    border: 1px solid #CCC;
    font-size: 12px;
}


    
.detalhe-produto .produto-comprar .sprite-site-seguro {
    margin-top: 5px;
    margin-bottom: 10px;
} 



.giftnew {
  /*display: block !important;*/
}

.giftnew .wd-checkout-basket-gift {
  display: block !important;
}

.giftnew .wd-checkout-basket-gift h3 {
  display: block;
  float: left;
}

.giftnew .wd-checkout-basket-gift .control {
  border-bottom: 1px solid #b7b7b7;
  margin-bottom: 20px;
}

.giftnew .wd-checkout-basket-gift .tabs {
  border-bottom: 1px solid #b7b7b7;
}

.giftnew .wd-checkout-basket-gift .tabs .wd-product-list > ul > li {
  width: 100%;
  padding: 0;
  margin: 0;
  border: 0;
}

.giftnew .wd-checkout-basket-gift .tabs .wd-product-list > ul {
  padding-top: 28px;
}

.giftnew .wd-checkout-basket-gift .tabs .product-list-image {
  width: 100%;
  float: none;
}

.giftnew .wd-checkout-basket-gift .tabs .product-list-image img {
  max-height: unset;
}

.giftnew .wd-checkout-basket-gift .ui-widget-content .ui-widget-content {
  border: 0;
}

.giftnew .tagspormais {
  width: 100%;
  display: table;
}

.giftnew .tagspormais .pormais {
  width: 15%;
  margin-right: 1.4%;
  display: inline-block;
}

.giftnew .tagspormais .pormais a {
  font-size: 13px;
  font-family: "Quicksand";
  color: black;
  line-height: 1.231;
  display: inline-table;
  padding: 4px 8px 1px;
  border: 1px solid #b7b7b7;
}

.giftnew .amount {
  display: table;
  width: 100%;
  border-bottom: 1px solid #b7b7b7;
  padding-bottom: 20px;
  margin-bottom: 30px;
}

.giftnew .amount > div:not(.message-box):not(.overlay) {
  width: 15%;
  margin-right: 1.4%;
  display: inline-block !important;
  vertical-align: top;
}

.giftnew .amount > div:not(.message-box):not(.overlay) .wd-product-gift-line .product-list-image img {
  max-width: 100%;
  height: auto;
}

.giftnew .amount > div:not(.message-box):not(.overlay) .wd-product-gift-line p {
  font-size: 13px;
  font-family: "Quicksand";
  color: #1e1e1e;
  font-weight: bold;
  line-height: 1.231;
  text-align: left;
  display: block;
  width: 100%;
}

.giftnew .amount > div:not(.message-box):not(.overlay) .wd-product-gift-line .button.select-gift {
  display: block;
  margin: 0 auto;
  position: relative;
  height: auto;
  display: block;
  font-size: 12px;
  text-transform: unset;
}

.giftnew .tab-container {
  position: relative;
}

.giftnew .tab-container::before {
  content: "";
  display: block;
  width: 14px;
  height: 14px;
  border: 1px solid #b7b7b7;
  position: absolute;
  right: 10px;
  top: 35px;
  z-index: 9;
}

.giftnew .tab-container.selectable::before {
  background: #a5a5a5;
  border: 1px solid #fff;
  -webkit-box-shadow: 0px 0px 0px 2px rgba(0, 0, 0, 0.42);
  -moz-box-shadow: 0px 0px 0px 2px rgba(0, 0, 0, 0.42);
  box-shadow: 0px 0px 0px 2px rgba(0, 0, 0, 0.42);
  width: 11px;
  height: 11px;
}

.giftnew .pormais {
  border: 1px solid #b7b7b7;
  padding: 2px 10px;
  display: table;
  position: absolute;
  z-index: 9;
}

.giftnew .tagspormais {
  display: none;
}

.wd-checkout-basket-gift .overlay,
.wd-checkout-basket-gift .tabs .message-box {
  display: none;
}

.wd-checkout-basket-gift.hide-previous .tabs .pormais.over {
  display: block !important;
}

.wd-checkout-basket-gift .control .right {
  margin-top: 14px;
}

.wd-checkout-basket-gift .tabs .wd-product-list .wd-product-list {
  opacity: 1 !important;
}



.marcas li img {
    padding: 0;
}

.HomeRoute .lancamento:before,
.HomeRoute .lancamento:after {
	display: none;
}
.HomeRoute .lancamento {
	background-color: #ffffff!important;
	margin-top: -100px!important;
	padding-top: 0;
}
#content-wrapper .social-bar {
	margin-top: -40px;
}

.HomeRoute .lancamento .wd-title {
	margin-right: 25%;
	bottom: -27px;
}

.mosaico_vitrine .row__mos .col__vitrine .wd-title {
    background: #00AFA6 !important;
    color: #FFC600 !important;
} 
.mosaico_vitrine .row__mos:nth-child(2) .wd-marketing-banner .next {
	right: 82%;
	margin-right: -602px;
}
.mosaico_vitrine .row__mos:nth-child(2) .wd-marketing-banner .previous {
	left: 82%;
	margin-left: -602px;
}
.mosaico_vitrine .row__mos:last-child .next {
	right: 82%;
	margin-right: -602px;
}
.mosaico_vitrine .row__mos:last-child .previous {
	left: 82%;
	margin-left: -602px;
}



/* DESCONTO PROGRESSIVO */
.js-basket-holder .wd-checkout-basket-discount-progressive ul li .values {
    font-size: 12px;
    width: 100%;
}
.js-basket-holder .wd-checkout-basket-discount-progressive ul li .warning {
    font-size: 11px;
    line-height: 25px;
    padding: 0;
}



/* COMPRE JUNTO */
body[class*="context-product-"] .compre-junto ul li[class*="product-"]  > div {
	background: none;
}
body[class*="context-product-"] .compre-junto ul li[class*="product-"] .info,
body[class*="context-product-"] .compre-junto ul li[class*="product-"] .produto-preco,
body[class*="context-product-"] .compre-junto ul li[class*="product-"] .cross-sell-form-data {
	display: none;
}


#main #middle + .social-bar {
	display: none;
}



body.home1219 .mosaico .wd-marketing-banner .banner-wrapper {
	display: block;
    width: auto;
    margin: 10px 0px;
    float: left;
}
body.home1219 .mosaico .wd-marketing-banner .banner-wrapper:last-child {
	float: right;
}



/*File:~/custom/content/themes/Salon2020DESK/Styles/ajustes2020.css*/
@charset "UTF-8";
/* bordas arredondadas */
/* largura de wrapper */
/* calcula a largura de um elemento dividindo a quantidade de itens pela largura total disponível */
/* flags */
/* usado no carrinho e detalhe do produto para estilizar o input de quantidade */
@import url('https://fonts.googleapis.com/css?family=Quicksand&display=swap');
@font-face {
  font-family: 'Flicker';
  src: url('https://www.lojadasalonline.com.br/custom/content/themes/Shared/Fonts/flicker_demo-webfont.woff2') format("woff2"), url('https://www.lojadasalonline.com.br/custom/content/themes/Shared/Fonts/flicker_demo-webfont.woff') format("woff"), url('https://www.lojadasalonline.com.br/custom/content/themes/Shared/Fonts/flicker_demo-webfont.ttf') format("truetype");
  font-style: normal; }

/* line 3, Core/Projetos/salon2020.com.br/src/scss/_home.scss */    
.list-nossas-marcar,
.list-para-seu-cabelo,
.mosaico {
  text-align: center; }
  /* line 8, Core/Projetos/salon2020.com.br/src/scss/_home.scss */
  .list-nossas-marcar .wd-marketing-banner .banner-wrapper,
  .list-para-seu-cabelo .wd-marketing-banner .banner-wrapper,
  .mosaico .wd-marketing-banner .banner-wrapper {
    display: inline-block;
    width: auto;
    margin: 10px 5px; }

/* line 2, Core/Projetos/salon2020.com.br/src/scss/_componentes.scss */
.wrapper {
  max-width: 1140px;
  margin: auto; 
}
.desc-produto {
	padding-left:20px;
}


header .shopper-authenticated a {
    color: #FFF;
}

.topbar .sprite-confiavel:before {
background-image: url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGhlaWdodD0iNTEycHQiIHZlcnNpb249IjEuMSIgdmlld0JveD0iLTM4IDAgNTEyIDUxMi4wMDE0MiIgd2lkdGg9IjUxMnB0Ij48ZyBpZD0ic3VyZmFjZTEiPjxwYXRoIGQ9Ik0gMjE3Ljk5NjA5NCAxNTguNDU3MDMxIEMgMTY0LjIwMzEyNSAxNTguNDU3MDMxIDEyMC40NDE0MDYgMjAyLjIxODc1IDEyMC40NDE0MDYgMjU2LjAwNzgxMiBDIDEyMC40NDE0MDYgMzA5LjgwMDc4MSAxNjQuMjAzMTI1IDM1My41NjI1IDIxNy45OTYwOTQgMzUzLjU2MjUgQyAyNzEuNzg1MTU2IDM1My41NjI1IDMxNS41NDY4NzUgMzA5LjgwMDc4MSAzMTUuNTQ2ODc1IDI1Ni4wMDc4MTIgQyAzMTUuNTQ2ODc1IDIwMi4yMTg3NSAyNzEuNzg1MTU2IDE1OC40NTcwMzEgMjE3Ljk5NjA5NCAxNTguNDU3MDMxIFogTSAyNzUuOTE0MDYyIDIzNy42MzY3MTkgTCAyMDYuMDI3MzQ0IDMwNy41MjM0MzggQyAyMDMuMDkzNzUgMzEwLjQ1NzAzMSAxOTkuMjQ2MDk0IDMxMS45MjU3ODEgMTk1LjQwMjM0NCAzMTEuOTI1NzgxIEMgMTkxLjU1ODU5NCAzMTEuOTI1NzgxIDE4Ny43MTQ4NDQgMzEwLjQ2MDkzOCAxODQuNzgxMjUgMzA3LjUyMzQzOCBMIDE1OC4wNzQyMTkgMjgwLjgxNjQwNiBDIDE1Mi4yMDcwMzEgMjc0Ljk1MzEyNSAxNTIuMjA3MDMxIDI2NS40NDE0MDYgMTU4LjA3NDIxOSAyNTkuNTc0MjE5IEMgMTYzLjkzNzUgMjUzLjcwNzAzMSAxNzMuNDQ5MjE5IDI1My43MDcwMzEgMTc5LjMxNjQwNiAyNTkuNTc0MjE5IEwgMTk1LjQwMjM0NCAyNzUuNjYwMTU2IEwgMjU0LjY3MTg3NSAyMTYuMzk0NTMxIEMgMjYwLjUzNTE1NiAyMTAuNTI3MzQ0IDI3MC4wNDY4NzUgMjEwLjUyNzM0NCAyNzUuOTE0MDYyIDIxNi4zOTQ1MzEgQyAyODEuNzgxMjUgMjIyLjI1NzgxMiAyODEuNzgxMjUgMjMxLjc2OTUzMSAyNzUuOTE0MDYyIDIzNy42MzY3MTkgWiBNIDI3NS45MTQwNjIgMjM3LjYzNjcxOSAiIHN0eWxlPSIgc3Ryb2tlOm5vbmU7ZmlsbC1ydWxlOm5vbnplcm87ZmlsbDpyZ2IoMCUsMCUsMCUpO2ZpbGwtb3BhY2l0eToxOyIgLz48cGF0aCBkPSJNIDQzNS40ODgyODEgMTM4LjkxNzk2OSBMIDQzNS40NzI2NTYgMTM4LjUxOTUzMSBDIDQzNS4yNSAxMzMuNjAxNTYyIDQzNS4xMDE1NjIgMTI4LjM5ODQzOCA0MzUuMDExNzE5IDEyMi42MDkzNzUgQyA0MzQuNTkzNzUgOTQuMzc4OTA2IDQxMi4xNTIzNDQgNzEuMDI3MzQ0IDM4My45MTc5NjkgNjkuNDQ5MjE5IEMgMzI1LjA1MDc4MSA2Ni4xNjQwNjIgMjc5LjUxMTcxOSA0Ni45Njg3NSAyNDAuNjAxNTYyIDkuMDQyOTY5IEwgMjQwLjI2OTUzMSA4LjcyNjU2MiBDIDIyNy41NzgxMjUgLTIuOTEwMTU2IDIwOC40MzM1OTQgLTIuOTEwMTU2IDE5NS43MzgyODEgOC43MjY1NjIgTCAxOTUuNDA2MjUgOS4wNDI5NjkgQyAxNTYuNDk2MDk0IDQ2Ljk2ODc1IDExMC45NTcwMzEgNjYuMTY0MDYyIDUyLjA4OTg0NCA2OS40NTMxMjUgQyAyMy44NTkzNzUgNzEuMDI3MzQ0IDEuNDE0MDYyIDk0LjM3ODkwNiAwLjk5NjA5NCAxMjIuNjEzMjgxIEMgMC45MTAxNTYgMTI4LjM2MzI4MSAwLjc1NzgxMiAxMzMuNTY2NDA2IDAuNTM1MTU2IDEzOC41MTk1MzEgTCAwLjUxMTcxOSAxMzkuNDQ1MzEyIEMgLTAuNjMyODEyIDE5OS40NzI2NTYgLTIuMDU0Njg4IDI3NC4xNzk2ODggMjIuOTM3NSAzNDEuOTg4MjgxIEMgMzYuNjc5Njg4IDM3OS4yNzczNDQgNTcuNDkyMTg4IDQxMS42OTE0MDYgODQuNzkyOTY5IDQzOC4zMzU5MzggQyAxMTUuODg2NzE5IDQ2OC42Nzk2ODggMTU2LjYxMzI4MSA0OTIuNzY5NTMxIDIwNS44Mzk4NDQgNTA5LjkzMzU5NCBDIDIwNy40NDE0MDYgNTEwLjQ5MjE4OCAyMDkuMTA1NDY5IDUxMC45NDUzMTIgMjEwLjgwMDc4MSA1MTEuMjg1MTU2IEMgMjEzLjE5MTQwNiA1MTEuNzYxNzE5IDIxNS41OTc2NTYgNTEyIDIxOC4wMDM5MDYgNTEyIEMgMjIwLjQxMDE1NiA1MTIgMjIyLjgyMDMxMiA1MTEuNzYxNzE5IDIyNS4yMDcwMzEgNTExLjI4NTE1NiBDIDIyNi45MDIzNDQgNTEwLjk0NTMxMiAyMjguNTc4MTI1IDUxMC40ODgyODEgMjMwLjE4NzUgNTA5LjkyNTc4MSBDIDI3OS4zNTU0NjkgNDkyLjczMDQ2OSAzMjAuMDM5MDYyIDQ2OC42Mjg5MDYgMzUxLjEwNTQ2OSA0MzguMjg5MDYyIEMgMzc4LjM5NDUzMSA0MTEuNjM2NzE5IDM5OS4yMDcwMzEgMzc5LjIxNDg0NCA0MTIuOTYwOTM4IDM0MS45MTc5NjkgQyA0MzguMDQ2ODc1IDI3My45MDYyNSA0MzYuNjI4OTA2IDE5OS4wNTg1OTQgNDM1LjQ4ODI4MSAxMzguOTE3OTY5IFogTSAyMTcuOTk2MDk0IDM4My42MDU0NjkgQyAxNDcuNjM2NzE5IDM4My42MDU0NjkgOTAuMzk4NDM4IDMyNi4zNjcxODggOTAuMzk4NDM4IDI1Ni4wMDc4MTIgQyA5MC4zOTg0MzggMTg1LjY0ODQzOCAxNDcuNjM2NzE5IDEyOC40MTAxNTYgMjE3Ljk5NjA5NCAxMjguNDEwMTU2IEMgMjg4LjM1MTU2MiAxMjguNDEwMTU2IDM0NS41OTM3NSAxODUuNjQ4NDM4IDM0NS41OTM3NSAyNTYuMDA3ODEyIEMgMzQ1LjU5Mzc1IDMyNi4zNjcxODggMjg4LjM1MTU2MiAzODMuNjA1NDY5IDIxNy45OTYwOTQgMzgzLjYwNTQ2OSBaIE0gMjE3Ljk5NjA5NCAzODMuNjA1NDY5ICIgc3R5bGU9IiBzdHJva2U6bm9uZTtmaWxsLXJ1bGU6bm9uemVybztmaWxsOnJnYigwJSwwJSwwJSk7ZmlsbC1vcGFjaXR5OjE7IiAvPjwvZz48L3N2Zz4=');    background-position: 0;
    width: 16px;
    height: 19px;
	background-size: contain;
}
.topbar .sprite-juros:before {
	background-image: url('data:image/svg+xml;base64,PHN2ZyBpZD0iTGF5ZXJfMSIgZW5hYmxlLWJhY2tncm91bmQ9Im5ldyAwIDAgNTExLjMzNCA1MTEuMzM0IiBoZWlnaHQ9IjUxMiIgdmlld0JveD0iMCAwIDUxMS4zMzQgNTExLjMzNCIgd2lkdGg9IjUxMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48cGF0aCBkPSJtMCAyMjQuNjY3djEzMi4zMzNjMCAzOC4xMDggMzAuODkyIDY5IDY5IDY5aDM3My4zMzRjMzguMTA4IDAgNjktMzAuODkyIDY5LTY5di0xMzIuMzMzYzAtNi42MjctNS4zNzMtMTItMTItMTJoLTQ4Ny4zMzRjLTYuNjI3IDAtMTIgNS4zNzMtMTIgMTJ6bTEyNy42NjcgODRoLTMyYy0xMS41OTggMC0yMS05LjQwMi0yMS0yMXM5LjQwMi0yMSAyMS0yMWgzMmMxMS41OTggMCAyMSA5LjQwMiAyMSAyMXMtOS40MDIgMjEtMjEgMjF6Ii8+PHBhdGggZD0ibTUxMS4zMzQgMTU4LjY2N3YtNC4zMzNjMC0zOC4xMDgtMzAuODkyLTY5LTY5LTY5aC0zNzMuMzM0Yy0zOC4xMDggMC02OSAzMC44OTItNjkgNjl2NC4zMzNjMCA2LjYyNyA1LjM3MyAxMiAxMiAxMmg0ODcuMzM0YzYuNjI3IDAgMTItNS4zNzMgMTItMTJ6Ii8+PC9zdmc+');position: absolute;
    background-position: 0;
    width: 15px;
    height: 15px;
	background-size: contain;
}
.topbar .sprite-frete:before {
	width: 17px;
	background-position: 0;
	background-size: contain;
	background-image: url('data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/PjxzdmcgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDQ2OS4zMzMgNDY5LjMzMyIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNDY5LjMzMyA0NjkuMzMzOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+PGc+PGc+PHBhdGggZD0iTTQwNS4zMzMsMTQ5LjMzM2gtNjRWNjRINDIuNjY3QzE5LjA5Myw2NCwwLDgzLjA5MywwLDEwNi42Njd2MjM0LjY2N2g0Mi42NjdjMCwzNS4zMDcsMjguNjkzLDY0LDY0LDY0czY0LTI4LjY5Myw2NC02NGgxMjhjMCwzNS4zMDcsMjguNjkzLDY0LDY0LDY0YzM1LjMwNywwLDY0LTI4LjY5Myw2NC02NGg0Mi42NjdWMjM0LjY2N0w0MDUuMzMzLDE0OS4zMzN6IE0xMDYuNjY3LDM3My4zMzNjLTE3LjcwNywwLTMyLTE0LjI5My0zMi0zMnMxNC4yOTMtMzIsMzItMzJzMzIsMTQuMjkzLDMyLDMyUzEyNC4zNzMsMzczLjMzMywxMDYuNjY3LDM3My4zMzN6IE0zNjIuNjY3LDM3My4zMzNjLTE3LjcwNywwLTMyLTE0LjI5My0zMi0zMnMxNC4yOTMtMzIsMzItMzJzMzIsMTQuMjkzLDMyLDMyUzM4MC4zNzMsMzczLjMzMywzNjIuNjY3LDM3My4zMzN6IE0zNDEuMzMzLDIzNC42Njd2LTUzLjMzM2g1My4zMzNsNDEuOTIsNTMuMzMzSDM0MS4zMzN6Ii8+PC9nPjwvZz48Zz48L2c+PGc+PC9nPjxnPjwvZz48Zz48L2c+PGc+PC9nPjxnPjwvZz48Zz48L2c+PGc+PC9nPjxnPjwvZz48Zz48L2c+PGc+PC9nPjxnPjwvZz48Zz48L2c+PGc+PC9nPjxnPjwvZz48L3N2Zz4=');
}


.topbar {
    background-color: #fff;
    color: #000;
    padding: 8px 0;
    text-transform: uppercase;
    font-size: 14px;
    font-weight: bold;
    text-align: center;
    margin-top: 5px;
    margin-bottom: 10px;
}
.logo-container {
	display:inline-block;
}
 
header .wd-checkout-basket-summaryheader > a b {
    font-weight: normal;
    display: block;
    display: none;
    text-align: center;
}
.wd-buy-button, .wd-buy-button .wd-content, .wd-product-deliveryfee .modal input.error {
    display: table;
    float: left;
    margin-bottom: 20px;
}

.content-header {
    background: #000;
    padding-top: 20px;
}

/*header .wd-checkout-basket-summaryheader,*/
header .wd-checkout-basket-summaryheader > a,
header.fixed .wd-checkout-basket-summaryheader > a {
    display: none;
}
header .cart-container > a {
    width: 40px;
    height: 40px;
    background: #A60550;
    display: block;
    border-radius: 100%;
    color: white;
    position: relative;
}
header .cart-container > a:before {
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABcAAAAYCAYAAAARfGZ1AAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEgAACxIB0t1+/AAAABx0RVh0U29mdHdhcmUAQWRvYmUgRmlyZXdvcmtzIENTNui8sowAAAAWdEVYdENyZWF0aW9uIFRpbWUAMDUvMDUvMjBJDVp3AAABnUlEQVRIid2VPUscURSGn83KhhTxowhpzBIEjYKQyip26eIPSBkh5AfYBEIqwdbGFBaCtTYGC02VKgQihECwUUHFtPmAkLASZfexmCOu61xhd6fKC4c7c+ad95575pwzJXUX2AcWgU2gTkG4AcwAFWAdOARehb97qOc2oi6bodrk79iaI9wDlguJOJA6/lPgMXAfKHcq3pPwzwK34voUOAIOEva7XfFR4BgYarFR4AkwyMWpfyQ23UmJA3wP28p5ViFLWevmU7HeBmqtX3iyoGp5rlpMPV/FMRTVLAn8f+LVLnWrwN9UKa4CK2QN1C76gGlgKSX+AZiks9b/B7wGFlLiL4FvHQhfQmvOT2Id6FYYoKQ231eAbaAGvAH+tKnXiPf3APJa94H6Tj2NUVCPtaH+Sli9idtQ59RccdRetabOq2X1Rbw8nsO9G4HMBXcmNhhO1fkg2TxfJ/thr4V/OId7j2x0n3PfAiVgKBV5Wd1Xv6jT6ob6U72Tw72pHqqf1Gfq+0hV/3Vjc0z9GHn8qj66hvtQ3Yp0fFYnVM4AU+b/YuNUNyAAAAAASUVORK5CYII=');
    width: 23px;
    height: 24px;
    margin-top: -11px;
    margin-left: -14px;
    background-position: center;
    background-repeat: no-repeat;
    display: block;
    position: absolute;
    top: 50%;
    left: 50%;
    content: "";
}
header .cart-container > a span {
    position: absolute;
    left: 61%;
    top: 0px;
    border-radius: 100%;
    font-size: 10px;
    padding: 1px 4px;
    height: 15px;
    width: 15px;
    background: #490022;
}

header.fixed .wd-profile-welcome-shopper {
    display: block !important;
}
header.fixed .wd-checkout-basket-summaryheader > a:before {
    margin-top: -8px;
}
.sprite-logo {
    position: relative;
    min-width: 162px;
    min-height: 28px;
    margin: 10px 0;
}
.icone-atendimento:before {
		content:"";
		background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA8AAAAPCAMAAAAMCGV4AAAA9lBMVEXDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlFgB2bmAAAAUnRSTlMAAQIDBAUGBwgJCgsMDxATFBUWGBkaGxweIigpLTAzNDVAQUtNUlNVVl5gbnBzdHd5fZSVlqepq6yxsra4ub7DxMbKy87Q0dPU1tfY2drb3N3gdhS8ygAAALBJREFUCNc1z9lWQQEAQNHtVkRxE40IFWkQpUGDFJVravj/n+nB6jzut4N0HKno4Qg4+4qKULl93kDjNV0aFyUOAicfWaYhpXkqdz8+VO/xjdX3LfZHVXfHBnnLvSYUoqD8qH1pZxID3UosEs7X3bRALiHJ+bVU/xS7ayD2VJd+awdXw2kBZD+rkp2f7kp5soC9UY38EuVRADZfOhkI5/HFQ3Axa20LBw3/ZZrD31mNP6DrE/+HhvEpAAAAAElFTkSuQmCC');
    background-size: cover;
    width: 15px;
    height: 15px;
    margin-right: 5px;
        display: inline-block;
    vertical-align: sub;
}
.sprite-logo:before {
		background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKQAAAAcCAMAAADY8uRrAAACuFBMVEX////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////up14bAAAA53RSTlMAAQIDBAUGBwgJCgsMDQ4PEBESExQVFhcYGRobHB0eHyEiIyQlJigqKywtLjAxMjM0NTY3ODk6Ozw9Pj9AQUJDRUZHSUpLTE1OUFFSU1RVVldYWVpbXF1eX2BhYmNlZmdpamtsbm9wcXJzdHV2d3h5ent8fX5/gIGCg4SFh4iJiouMjY6PkJGSk5SVlpeYmZqbnZ+goqOkpaanqKmqq6ytrq+wsbKztLW2uLu8v8DBwsPExcbHyMnLzM7P0NHT1NXW19jZ29zd3uDh4uPk5ebn6Onq6+zt7u/w8fLz9PX29/j5+vv8/f5VfT7UAAAE8UlEQVR4Ac3Y+VdV5R7H8Y94rwjIBedrAqEiZmIoOAcO5iCmCEoGYpoKmkEOOeCQDUpSWQ7lYA4pbDNNDAfLxEEEGoocxMg8ICBpn3+j/Xz3cA5wYBEL1/L121l77+e813c9+/lho+l8rzscjnu5HdE8CY6SWDx2fhQL0TxzyRKY2i1MwuPxPweVZWieJLLIaiwiNz/WyMXNj7wMQzh1T3pku2tk5pMeCZ/5CXiSI5svMDZt3drFM8LbwBYwKun1NetXzJsQ1FhkQEzqmvVLEsNh8wwJ6dU7ALqn4pasezMx1F1kYAiER29Zve2E1Vs3JofAle/Eldu2vDYEllFfPaTh1pEUX1l/XyEtf3+b7ttA5Oxc68Hi94Jh6E/dwyx03/0XxfHI+pHfsSBYSqq4CT0O0JATCkuHDysprsyEyKRy/fuCauqkfRh1jsKCPyhKX3QXOegSlaILNdQ9WgkRTrHMQVaXUMTVi8wnl8iSNaSeeHCkv2evdeSj562lS8msvp7ekRq5Bbq3qDs88D9Ax6EpRxxyX//TG6b09QV8wpZKOafVj4yncnU40G0TlYNQwmiqSOnUKrqKSq+6kWfINJnkXfVcAMRUssYfSj+Sk+0JvgEMpQKLnx90rWELLafSuW5kBJWytlA2U9npGpkfCN0aKpqbyEVW5BxYjpHvyL/fIdNgKiYDkUUlAw3aT2V1nchWpVSSYTB+TXJG5nlAGWFsa79GIkNhmUoWQ5dO/gRLMpmFAxR50/4L97KoHK8TuYBKhQcMG6iUOCOH19qhgxuJjIJlEFnhDeCO69vZlSzF2zT9tjEMtXn3GPbSqh0lVHLrRBZQOQrTSIoIO/IFiAiKsU2NrOxkvLV9YCsm8Rydvp4I2+is/DI6nagd2Y3iXZiCKDLsyEkQkRRjmhQ5lKzoACwlf4bTIRJYSxfHAiEGnqGo/GZ1ntFfO3IsRTpMvvep7G0gcvS/idxGXuzTz3aCBLCdLsoHQBdLcS2hA5DlLjKeYj5MnqVUvmyJyEOsC7qZRXSq8gdCKC60hm6Pu8ipFCkweZVRyW6JyGyyMDl5tiUhLh4iRqNtFbCPIgjKbneRkRQrYOpYQ2V7S0TuIE/BrZAVl2k4B48yKmdRO9KvwhnpWUXlE5j6UMxpicjlZHkbNGBCIZWL8KfYCvGpFel9zxkJzbzXNIOiSyORs5oaOYRkNBri+St1GrwfUPkYYqcVCbnMVNcDMBCGo1QOo5HIV8iLTYpECfkFGnSauulAPpWTUILu2pHHqMyD2EflM4ieFF0bi4wlrzUtMo7kALgaPKU9TPGPSF4FMI+iN4Dg27QjY6xjRlyhEg9d+2Iq41EvcpAzsjNZ49ekSGSTd3vCxQcsP5U5Z1zUuAVHqfuxC3TnqNyMi0p/wGo7EmeprHo6MKor4JNLZdv46NQb1D2YjPqRI5yReJ/c32jkKCsSh8mq6TB4AEihq4+8oLT+nJbMZ6kUQed1kqYx0C26Sae9PWrNLgHi/xQx1sY9mxwV/6oHrpNrre8N42AJJdkZIvUWeWfXyrSMXbdnAfCKWKTdqqisriz//fjCnrBEb/3F4bhffT4RGL1b07QMiKQ8h6OCPN8diveMvTcclVXlf55a/gxMwZqWk6NpETAM26PpwiDmXiUf8odW2KBpMmov/Wpf2BKzD/rC4PNyDsWlcOAfg/OjOEehqioAAAAASUVORK5CYII=');
    position: absolute;
    background-position: 0;
    width: 164px;
    height: 28px;
    content: "";
    left: 0;
    top: 0;
}
.busca {
    position: relative;
    width: 45%; 
    margin-left: 30px;
    display: inline-block;
	    vertical-align: top;
}
.topbar {
    padding: 0px 0;
}
.topbar strong {
    text-transform: capitalize;
    position: relative;
    display: inline-block;
    color: #000;
    font-size: 10px;
	    font-weight: 500;
}
.topbar strong b {

	    font-weight: 900;
}
.redes-sociais li {
	float:left;
	margin-left:10px;
	
}
.redes-sociais li.youtube a {
		background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABMAAAAMCAMAAAC3DnawAAAAV1BMVEXDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHd0BTlAAAAHHRSTlMAARUWHicoKVhZW3uCla6w1tvc6+7w8/j6+/z+DJkUkAAAAGBJREFUeNptj1kOgCAMBR+uqCguIC69/znFVIIhvJ9OJ2naQqjZ+FxEdPi6zUqgpzQdNIOJTmNhqIc9uBWWoUIxnowWd3BAMzH/Xfu5OFvG2cyO7C2S0sjwm/ONe8H/9gCXVBRxG9DJhgAAAABJRU5ErkJggg==');
		width:19px;
		height:12px;
		float:left;
}
.redes-sociais li.twiter a {
		background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABEAAAAOCAMAAAD+MweGAAAAxlBMVEXDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHq4IY6AAAAQXRSTlMAAQIDBggKDBUbHR4fISQmLC4xMjk+P0BBQ0VSY3V8goqLj5WWmJuwvL7Aw8nLztLU2+Pm5+ns7/Dx8vf4+fr9/lgd6goAAACOSURBVHjaTc3XEoJAEETRFuOac8CAAcQsohhQWef/f0p2p4riPE3flwFKYM3N+2rl+m3UL1UdKg+KfbYNmHQzVVmQ5o8hJJE7zMLlMgEytjrCo8+lCwwOX0qpAfkgHQLERq9UsVUx5mESZAv8N+FAM6ae5HAugon1TwdP6Nlz9pHe0aoA1lmennTfzcpgf+DfI9FZGOLeAAAAAElFTkSuQmCC');
		width:17px;
		height:14px;
		float:left;
}

.redes-sociais li.instagram a {
	background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAMAAAAolt3jAAAAYFBMVEXDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlEOSUXYAAAAH3RSTlMABBQxMjw/QEFCQ0RLUYyOkaiptba3ubq7vPX29/v8sP8vLgAAAGtJREFUeNplj9kOgzAMBIebUmIIFEJNIf//l1xCkei8jbSydyEZZ38yjwmk2tXvk7rTFGe5iKSyDjXAS6SMf61RfAbNOnzXJo4yf2ix5JAvBZfKBDDJrR+AXvgPh1PsGh4BRkMNwLpHyceEDfxHCZAQByZDAAAAAElFTkSuQmCC');
		width:14px;
		height:14px;
		float:left;
}
.redes-sociais li.blog a {
	background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAMAAAAolt3jAAAAn1BMVEXDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlHDAlGpqmTwAAAANHRSTlMAAQMYGSQxMjZEU1RVVldeY3B4fIaQlpmdn6yvsLa3ubvDzNvd4OLk5+nr8PP19/r7/P3+8QPY/gAAAHdJREFUeAFVx+kSgQAYRuG3LNl3yh4SIaRz/9fmmxiT58+ZI3mbK5AdRq5MPeUrkNlCfoyis6Vme4OhxVlBywoMZAJof/axC8M9sOi7omz6v4kAv9sxvTk89SJ1VHAzMiUwbhYmEGtNyUyNOz9xRfKWFzD5ya/qDVdxGlsBUEGpAAAAAElFTkSuQmCC');
		width:14px;
		height:14px;
		float:left;
}

header .welcome {
    padding: 0;
    width: 200px;
    display: inline-block;
    vertical-align: top;
    margin-left: 15px;
}
.box-top {
    padding: 5px 0 !important;
    display: table;
}
.box-top:last-child {
	border-left:1px solid #ccc;
}

.redes-sociais {
	padding-top:5px;
}
header .wd-checkout-basket-summaryheader > a {
    width: 40px;
    height: 40px;
    background: #A60550;
    display: block;
    border-radius: 100%;
    color: white;
    position: relative;
}
header .wd-checkout-basket-summaryheader > a:before {
  background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABcAAAAYCAYAAAARfGZ1AAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEgAACxIB0t1+/AAAABx0RVh0U29mdHdhcmUAQWRvYmUgRmlyZXdvcmtzIENTNui8sowAAAAWdEVYdENyZWF0aW9uIFRpbWUAMDUvMDUvMjBJDVp3AAABnUlEQVRIid2VPUscURSGn83KhhTxowhpzBIEjYKQyip26eIPSBkh5AfYBEIqwdbGFBaCtTYGC02VKgQihECwUUHFtPmAkLASZfexmCOu61xhd6fKC4c7c+ad95575pwzJXUX2AcWgU2gTkG4AcwAFWAdOARehb97qOc2oi6bodrk79iaI9wDlguJOJA6/lPgMXAfKHcq3pPwzwK34voUOAIOEva7XfFR4BgYarFR4AkwyMWpfyQ23UmJA3wP28p5ViFLWevmU7HeBmqtX3iyoGp5rlpMPV/FMRTVLAn8f+LVLnWrwN9UKa4CK2QN1C76gGlgKSX+AZiks9b/B7wGFlLiL4FvHQhfQmvOT2Id6FYYoKQ231eAbaAGvAH+tKnXiPf3APJa94H6Tj2NUVCPtaH+Sli9idtQ59RccdRetabOq2X1Rbw8nsO9G4HMBXcmNhhO1fkg2TxfJ/thr4V/OId7j2x0n3PfAiVgKBV5Wd1Xv6jT6ob6U72Tw72pHqqf1Gfq+0hV/3Vjc0z9GHn8qj66hvtQ3Yp0fFYnVM4AU+b/YuNUNyAAAAAASUVORK5CYII=');
width: 23px;
    height: 24px;
    margin-top: -11px;
    margin-left: -14px;
}
header .wd-checkout-basket-summaryheader > a span {
    position: absolute;
    left: 61%;
    top: 0px;
    border-radius: 100%;
    font-size: 10px;
    padding: 1px 4px;
    height: 15px;
    width: 15px;
    background: #000;
}
header .wd-checkout-basket-summaryheader:hover:before {
    content: none;
}
.menu {
	display: table;
    margin: auto;
}
#header {
	    background: #000;
}
#header .wd-category-menu nav > ul > li > h3 {
    font-size: 13px;
    color: #fff;
}
.newsletter-topo {
    background: #a60550;
    padding: 10px 0;
}
.newsletter-topo h3 {
    display: inline-block;
    color: #FFF;
    font-size: 14px;
    margin-right: 52px;
}
.newsletter-topo .wd-marketing-newsletter {
    padding: 0;
}
.newsletter-topo .message {
        font-size: 14px;
    color: #FFF;
    line-height: 40px;
    padding: 0;
    margin: 0;
}
.newsletter-topo .form-wrapper > p {
    display: none;
}


.wd-marketing-newsletter .input-name-marketing-newsletter , .wd-marketing-newsletter .input-email-marketing-newsletter {
    display: inline-block;
}
.wd-marketing-newsletter button {
    height: 33px;
    color: white;
    background-color: #000;
    border: 0;
    font-size: 14px;
    text-transform: uppercase;
    border-radius: 59px;
    position: absolute;
    top: 0;
    right: 0;
    width: 139px;
    text-align: center;
    font-family: "Quicksand", sans-serif !important;
    letter-spacing: 0;
    margin-top: -1px;
    float: right;
}

.wd-marketing-newsletter .input-wrapper:last-child {
    text-align: right;
    padding-bottom: 0;
    position: relative;
    display: inline-block;
    float: right;   
}
.wd-product-list .wd-content>ul>li, .wd-product-list-set .wd-content .wd-panel>ul>li, .wd-product-list-set .wd-panel>ul>li, .wd-product-list>ul>li {
    float: left;
    width: 23%;
    min-height: 250px;
	padding:35px 20px 35px;
    background: #FFF;
  margin-right: 20px;
}
.vitrine_contador .wd-product-line {
    position: relative;
    padding: 25px 0 0;
}
.wd-product-price-description .sale-price {
    color: #333;
    text-align: center;
}
.social-bar ul {
    display: inline-block;
    background-color: transparent;
    padding: 0 15px;
    margin-top: 30px;
}
footer {
	background-image:none;
	background: #f7f7f7;
	margin-top:0;
	border:0;
}


.wd-title, .main-title {
    /* font-family: "Flicker", sans-serif !important; */
    font-family: "Quicksand", sans-serif !important;
    font-size: 42px;
    color: #A60550;
    margin-bottom: 30px;
    position: relative;
    text-align: center;
}

article .cta {
    display: none;
    bottom: -20px !important;

}
.wd-checkout-basket-deliveryoptions .js-delivery-choice .photo, .delivery-list table td.icon {
    min-width: 70px;
    display: block;
}
body[class*="context-product-"] .detalhe-produto .desc-produto .btn-buy {
    height: 70px !important;
    line-height: 50px !important;
    font-weight: bold !important;
    width: 50% !important;
    font-size:22px;
}
.list-nossas-marcar, .list-para-seu-cabelo, .mosaico {
    text-align: center;
    margin-top: 50px;
}
.wd-product-price-description .condition, .wd-product-price-description .savings {
    font-size: .8em;
    display: table;
    margin: auto;
}


#middle {
    position: relative;
    z-index: 1;
    background: #f7f7f7;
}
.homepage .wd-marketing-banner.slider .slider-controller, .HomeRoute .wd-marketing-banner.slider .slider-controller {
    bottom: 19px;
}
.banner-arrasa-na-oferta {
	position:relative;
}
.banner-arrasa-na-oferta .list {
	    position: absolute;
    top: 15px;
    right: 15px;
	width:290px;
}
.banner-arrasa-na-oferta .product-photo {
    margin-top: 40px !important;
    display: table;
    margin-bottom: 10px;
}
.main-nav li:hover > h3 > a:before, .wd-category-menu li:hover > h3 > a:before {
    display: none;
}
.vitrine_contador {
    position: absolute;
    top: 45px;
    right: 15px;
    z-index: 99;
    width: 290px;
    text-align: center;
}

.vitrine_contador .timer {
    position:relative;
}
.vitrine_contador .timer div  {
	display:inline-block;
    margin-right: 7px;
    position:relative;
    width: 50px;
    height: 80px;
} 
.vitrine_contador .timer div:last-child {
    margin-right: 0;
}
.vitrine_contador .timer div span:last-child {
	background: #000;
	padding: 0;
	border-radius:3px;
	clear:both;
	display:block;
	color:#fff;
    text-align:center;
    width:50px;
    top:0;
    position: absolute; 
    font-size: 24px;
    height: 60px;
    line-height: 60px;
	
}
.vitrine_contador .timer div span:first-child {
	color:#000;
	text-align:center;
	display:block;
    width: 100%;
    margin:auto;
    position: absolute;
    bottom: 0;
}
 header.fixed .wd-category-menu {
    display: block;
    position: static;
}
.vitrine_contador .timer  small {
	display:none !important;
}
.banner-arrasa-na-oferta .list li:first-child {
	width:100% !important;
    border-radius: 10px;  
}
.banner-arrasa-na-oferta .list .linha-capilar li {
	width:auto !important;
    border-radius: 10px;  
}
.slick-initialized .slick-slide .cta,
.banner-arrasa-na-oferta .list li .cta {
    /*display: none;*/
    bottom: -10px !important;
}


.banner-arrasa-na-oferta .list li .product-photo {
    padding-top: 60px !important;
}
.wd-marketing-newsletter {
    margin: 0;
    display: inline-block;
    width: 750px;
	    padding-bottom: 10px;
}
.wd-category-menu nav > ul > li {
    padding: 0 4px 10px !important;
    margin-left: 15px;
}

.menu li a:before {
	display:none;
}
header .main-nav a, header .wd-category-menu a {
    color: inherit;
    font-size: 16px; 
    font-family: "Quicksand", sans-serif !important;
    text-transform: capitalize;
    font-weight: 500; 
}
/*
.carrinho-lateral .wd-checkout-basket-summaryheader .wd-widget>.wd-footer .close-carrinho-lateral {
    color: transparent;
}
.carrinho-lateral .wd-checkout-basket-summaryheader .wd-widget>.wd-footer .close-carrinho-lateral:before {
    text-transform: uppercase;
    font-weight: 900;
    color: #CCC;
    padding: 0;
    width: 100%;
    opacity: 10px;
    display: block;
    content:"continuar comprando";
}*/
.carrinho-lateral .wd-checkout-basket-summaryheader .wd-widget .wd-footer button {
    border-radius: 2px;
    font-family: "Quicksand", sans-serif !important;
}
.carrinho-lateral .wd-checkout-basket-summaryheader .wd-widget .wd-footer button.close-carrinho-lateral {
    background: #F0F0F0;
    color: #888;
}
#mapa-site .wd-category-menu li .sub-section a {
    font-family: "Quicksand", sans-serif !important;
    color: #000;
    font-weight: normal;
    font-size: 11px;
}
.menu ul.level-1 > li > ul.level-2 > li > ul.level-3 > li {
    margin: 0 0 5px !important;
}

article .cta {
    display: block;coo
}
.wd-product-associations li li article .buy, .prateleira li article .buy {
    width: 203px;
    height: 35px;
    margin: 0 auto;
    border-radius: 12px;
    background-color: #6ebf55;

    color: white;
    text-align: center;
    font-family: "Quicksand", sans-serif !important;
    text-transform: capitalize;
    font-size: 17px;
    display: block;
    line-height: 35px;
    margin-top: 0;
    opacity: 0;
    visibility: hidden;
    transition: all 300ms;
    z-index: 999;
}
#mapa-site .wd-category-menu nav > ul > li {
    padding: 0 !important;
    display: inline-block;
    vertical-align: top;
    width: 19%;
    margin: 20px 0 10px 0;
}
#mapa-site .wd-category-menu nav > ul > li.tratamento {
    width: 60%;
}
#mapa-site .wd-category-menu nav > ul > li.tratamento > ul {
    -moz-column-count: 3;
    -webkit-column-count:3;
    column-count:3 ;
    -moz-column-gap: 30px;
    -webkit-column-gap:30px;
    column-gap:30px;
}

#banner-524 img, #banner-527 img {
    width: 100%;
    float: left;
}
footer .payment li:not(.titulo) {
    width: 99%;
}
.topbar div {
    padding: 0;
    text-align: left;
}
footer .copyright span {
    display: block;
    font-size: 12px;
}
.pdf-10 {
    padding-left:10px;
}
footer .copyright {
    text-align: center;
    padding: 10px 0;
    color: #fff;
	font-size:12px;
    background: #000;
    box-shadow: 1000px 0px 0px 0px #000, -1000px 0px 0px 0px #000;
}
footer .copyright:before {
    /* height: 80px; */
    display: table;
    left: 0;
    top: 46px;
    position: relative;
    content: "";
    bottom: 0;
    box-shadow: -47px 0px 0px 56px #000;
}
footer .titulo {
    text-transform: uppercase;
    margin-bottom: 20px;
    font-weight: 900;
	font-size:12px;
}
.row.line-top {
    padding: 30px 0 0;
     border-top: 0;
}
footer .container {
    width: 1120px !important;
}
.container {
    width: 1120px;
}
.box-top:last-child {
    border-left: 1px solid #ccc;
    float: right;
}
.texto-seo {
	border-top:1px solid #ccc;
}
footer .copyright:before {
    /* height: 80px; */
    display: table;
    left: 0;
    top: 71px;
    position: relative;
    content: "";
    bottom: 0;
    box-shadow: -63px 0px 0px 81px #000;
}
header.fixed .busca {
    width: 50%;
    float: none;
    display: inline-block;
}
.wd-profile-welcome-shopper .login-simple .title {
    color: #fff;
    font-size: 12px;
    padding: 0;
    transition: .5s all;
    text-decoration: none !important;
}
.lista-desejos {
    display: inline-block;
    vertical-align: top;
    margin-top: 10px;
}

.status-wrapper:before {
	float:left;
	content:"";
	margin-right:10px;
		background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABUAAAAVCAMAAACeyVWkAAAA3lBMVEX///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////82KaFZAAAASXRSTlMAAQIGCAkKCwwPEB0gISovOD1VVl1fYmNmZ21yc3SCg4WIiZKTmZqbnKGjqaqusLGys7bDxMbHyMvN2dze4ePr7fDy9fj5+vz+zmfe3gAAANFJREFUeNplzdUWglAQheERCwxssQO7u8UW3O//QqKcdQD9b2av72aIFeudnqdejFyVDGMz3BhGyYkZbGXzyFtkbBTPR+k7pMNZ5JqCwpaCFNcKomxFUeFaRZitMGpc00iylXS8k+4773d4d3eJeEVMQuYJTVAmO6GBa7/ev6IpODQ+hdU0zs3ffumzfEJO5Gb6q+W3MLDEPEJWkTkWgc/wjKAK9gcVI495C+iQsy4KROJF87nUp11EUqCQu6wp40fwR4OPMe1X9Ntao9vgT4fPN39sGmOvemvdAAAAAElFTkSuQmCC');
	width:21px;
	height:21px;
}
.wd-profile-welcome-shopper .login-simple {
    position: relative;
    display: block;
    white-space: normal;
    color: #fff;
}
.status-wrapper {
    max-width: 560px;
    width: 150px;
}
.wd-profile-welcome-shopper .login-simple .login-wrapper .login-title {
    background-color: transparent;
    padding: 0;
    color: #fff;
    font-size: 12px;
    transition: .5s all;
    font-weight: normal;
    text-decoration: none !important;
}
header .wd-profile-welcome-shopper .login-simple {

    line-height: 14px;
    margin-top: 15px;
}
header.fixed .sprite-logo:before {
  width: 222px;
    height: 51px;
}

header.fixed .logo-container {
    display: inline-block;
    width: 200px;
}
.lista-desejos {
	display:inline-block;
}
.lista-desejos a  .icon {
	width:23px;
	height:21px;
	display:table;
		background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABcAAAAVCAMAAACaPIWZAAABR1BMVEX///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9+58QEAAAAbHRSTlMAAQQFBgcKDQ8TFRcYGxweIiQmKC0xMjM3ODs+P0BFRlBUVVhZWltcYGZoamt1eHl9foCIi5KTlJaXmaClp6qsra6ys7a4ubq+wMPExsfIzM3S09bX2drb3N7f4eLj5ujp6uvw8vX2+Pr8/f6xRkttAAAA70lEQVR4AWXPeTcyYQBA8dv7PlpCiSyRXfZddspCZIksNJq01GQy8/3/djrTpDy/D3DPuQCjJ3ld2Q8A/p2M/hkLU/f/wLxZW9hSvuaZq35EF9dT5t4/YFubAhBR49iICoDZ6i4MGdNYNsxNLDPmMEe32ILYUoeoK8hWVfQIskiNwjKypRIXp8jil0x8D/JXf20Sx1XWR7vuzLUDPE+vnbTyPr94Abre0l5+edLvjYBPeXRjcz9k/TT05O5dWFx3uQBNvfmkkzpnsthHi2AxIYCORClIm4HymUCcl6WZUCUm4pUQkrCmaiMgGy+M0fQDUOQjdMOtmG8AAAAASUVORK5CYII=');
}
.busca {
    position: relative;
    width: 60%;
    margin-left: 30px;
    display: inline-block;
    vertical-align: top;
}
.newsletter-topo h3:before {
	content:"";
		background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACIAAAAbCAMAAAAu7K2VAAABPlBMVEX///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+lso7hAAAAaXRSTlMAAQIFBgcICgsMEBEWFxkaGxwdHh8gIScqKzU2Nzg5Oz4/Q0VHSEpMTU5PUlNXZ2lscHJ9f4KDhIWHiIqLlpianqGjrrCztb2+wMHMzc7P1tfY2drb3N3e3+Dh6ert7/L19vf4+fr7/P0H4KSNAAABQElEQVR4AYXK6fYKcRzA4c+/BZUpRSKElpJClmTJIouURaNSGI1pZvS9/xvw69BJnWnmef0QefJTfBiPw9yXAI/4FlQM3KDyiw9BZcCNoFKD5/7jBRB55TdeHoPjhO66h4J7L6RCPw4XdO8xvgTxATK9DCeeeo1nMSh8FUR+P4zAte/74cd1CHdcEUT5eB5Ovt4dbzQ4917kXxHrTghumttg3jri6LYl2yLSz0BuuBnDHKTfiuyUTxoQ7a5EWXWjgPZ5t4yScCUGF9+JDAoQuwrJ0f9FT0HT+ZIHNA3I604TUvq2jE9BwxZxOgmAxANHxG5AerwpkzTU1VAWvVart5A1u67O5G+ZZqCmxj67BpnpuszOQFUNj1OF0zNhnoXKUjwtK5CdcxbKlhxglVkHSqYcZJYAimr4nCLQNvyK0eYPdtUvEcKJHF4AAAAASUVORK5CYII=');
	width:34px;
	height:27px;
	float: left;
	margin-top: -5px;
    margin-right: 10px;
}
header .welcome {
    padding: 0;
    width: 136px;
}
.newsletter-topo h3 {
    display: inline-block;
    vertical-align: middle;
    color: #FFF;
    font-size: 14px;
    line-height: 18px;
    margin: 0 30px 0 0;
}
.banner-arrasa-na-oferta {
    position: relative;
    margin-top: 70px;
}
.list-para-seu-cabelo h2 {
	margin-bottom:30px;
}
.slick-initialized .slick-slide {
    display: block;
    background: #FFF;
    margin-right: 10px;
    width: 271px !important;
}
.footer-nav {
    padding-bottom: 20px;
    border-bottom: 0;
}
.home1, .home3{
    margin-top: 70px;
}
.wd-marketing-newsletter input {
    height: 33px;
    padding-left: 10px;
    border: 1px solid #999;
    width: 262px;
    outline: none;
    border-radius: 59px;
    margin-right: 20px;
    background-color: white;
}

.list-nossas-marcar, .list-para-seu-cabelo, .mosaico {
    text-align: center;
    margin-top: 70px;
}
.wd-marketing-newsletter {
    margin: 0;
    display: inline-block;
    width: 705px;
    padding-bottom: 5px;
}
.slick-initialized .slick-slide {
    display: block;
    background: #FFF;
    margin-right: 10px;
    padding-bottom: 20px;
    width: 271px !important;
}
header.fixed .busca {
    width: 60%;
    float: none;
    display: inline-block;
}
.product-name {
    font-size: 14px;
    font-family: "Quicksand", sans-serif !important;
    font-weight: 400;
    color: #000;
    text-align:center;
}
.box-top:last-child {
    border-left: 1px solid #ccc;
    padding-left: 10px !important;
}
.category-banner img {
    width: auto;
    position: initial;
    height: auto;
    margin: 0 auto;
    display: block;
    width: 1234px;
}
.prateleira li article {
    height: 395px !important;
}
.wd-product-associations li li article .condition .label, .prateleira li article .condition .label {
    color: #3E3E3E;
    font-size: 100%;
    padding: 0;
    font-weight: 500;
}
.page-basket header .compra-segura-container {
    background-color: transparent;
    display: inline-block;
    margin-top: 0;
    padding: 10px 30px;
    border-top-left-radius: 75px;
    border-bottom-left-radius: 75px;
    height: 75px;
    position: relative;
}
.col-md-3 button {
    font-family: "Quicksand", sans-serif !important;
    background-color: #6ebf55;
    font-family: ubunto;
    color: white;
    text-align: center;
    width: 314px;
    height: 55px;
    line-height: 55px;
    border-radius: 76px;
    float: right;
    border: none;
    text-transform: uppercase;
    font-size: 22px;
}
.botao-carrinho-footer button.bt-keep-buying {
    float: right;
    margin: 0 89px;
    background: #eee;
    border-radius: 50px; 
    color: #060606;
    padding: 0 66px;
}
.col-md-3 button {
    font-family: "Quicksand", sans-serif !important;
    background-color: #6ebf55;
    font-family: ubunto;
    color: white;
    text-align: center;
    width: 370px;
    height: 55px;
    line-height: 55px;
    border-radius: 76px;
    float: right;
    border: none;
    text-transform: uppercase;
    font-size: 29px;
}
.page-basket header .compra-segura-container:after {
    display:none;
}
.prefix {
    display: none;
}
.grid-products  .wd-product-price-description .condition {
    margin:0 auto; 
    font-family: "Quicksand", sans-serif !important;

}
.grid-products  .prateleira li article .product-name {
    font-size: 14px;
}
.grid-products  .wd-product-price-description .sale-price {
    text-align: center;
    font-size: 16px;
}
.wd-product-price-description .sale-price {
    font-size: 18px;
    font-weight: bold;
    font-family: "Quicksand", sans-serif !important;
}
.label {
    display: inline;
    padding: .2em .6em .3em;
    font-size: 14px;
    font-weight: 400;
    line-height: 1;
    color: #000;
    text-align: center;
    white-space: nowrap;
    vertical-align: baseline;
    border-radius: .25em;
}
.parcels {
    font-weight: 900;
    font-size: 14px;
}
ul.linha-capilar {
    float: left;
    width: 100%;
    text-align: center;
    display: block;
}
body[class*="context-category-"] .category-description {
    display: block;
    padding-bottom: 20px;
    display: none;
}
.parcels {
	    font-weight: 900;
}
.wd-title, .main-title {
    /* font-family: "Flicker", sans-serif !important; */
    font-family: "Quicksand", sans-serif !important;
    font-size: 30px;
    color: #000000;
    margin-bottom: 30px;
    position: relative;
    text-align: center;
}
.parcel-value {
	font-weight: 900;
}
#content-wrapper .home2, .margintop70 {
	margin-top:70px;
}
.texto-seo {
    border-top: 1px solid #ccc;
    padding: 30px 0;
}
#content-wrapper .social-bar {
    margin-top: 0;
}
.slick-initialized .slick-slide {
    display: block;
    background: #FFF;
    margin-right: 10px;
    border-radius: 15px;
    padding-bottom: 20px;
    width: 271px !important;
}
.fa {
    display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    font-size: inherit;
    color: #a60550;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}
.social-bar li a {
	background: transparent !important;
}

.slick-initialized .slick-slide {
    display: block;
    background: #FFF;
    margin-right: 5px;
    margin-left: 5px;
    border-radius: 15px;
    padding-bottom: 20px;
    width: 271px !important;
}

.wd-facet-group .facets .facet-type .facet-type-list .facet-title h3 {
    font-size: 12px;
    font-weight: 800;
    color: #000;
    margin: 0;
}
.wd-facet-group .facets .facet-type .facet-type-list .facet-title h3:after {
  content: "";
  display: inline-block;
  vertical-align: baseline;
  margin-left: 5px;
  width: 0; 
  height: 0; 

  border-left: 6px solid transparent;
  border-right: 6px solid transparent;
  border-bottom: 8px solid #000;
}
.wd-facet-group .facets .facet-type .facet-type-list .facet-title.facet-closed h3:after {

  border-top: 8px solid #000;
  border-bottom: 0;
  border-left: 6px solid transparent;
  border-right: 6px solid transparent;
}
.wd-facet-group .facets .facet-type .facet-type-list .facet-title {
    border: 0;
    color: #8d0c4f;
    margin-bottom: 10px;
    text-transform: uppercase;
    border-top: none;
}
.wd-facet-group .facets .facet-type .facet-type-list a:before {
    content: '';
    width: 10px;
    height: 10px;
    display: inline-block;
    border: 1px solid #000;
    margin: 0 10px 0 0;
    border-radius: 100% !important;
    color: #8d0c4f;
    border-radius: 2px;
}
.newsletter-topo {
    background: #a60550;
}


.wd-browsing-breadcrumbs {
    padding: 20px 0;
    font-size: 12px;
}
.texto-seo {
	 background: #F7F7F7;
}
body[class*="context-category-"] .category-description {
    display: block;
	padding-bottom:20px;
}
.grid-products .social-bar {
	display:none;
}
.wd-product-media-selector {
    text-align: left;
    position: absolute;
    top: 0;
    width: 200px;
}
header.fixed {
    position: fixed;
    width: 100%;
    left: 0;
    top: 0;
    z-index: 99999999999;
    padding-top: 10px;
    padding-bottom: 10px;
    height: 128px;
}
.wd-product-medias-displayer {
    position: relative;
    width: auto;
    z-index: 0;
    margin-left: 58px;
}
.wd-product-media-selector li, .wd-product-media-selector-carousel li {
    display: block !important;
    margin-bottom: 15px;
    clear: both;
}
#armored_website_02 {
	display:inline-block;
	    vertical-align: top;
}
.sprite-site-seguro {
	display:none;
}

.show-cep input[type=text] {
    width: 100%;
    height: 36px;
    border-radius: 0;
    float: left;
    padding: 0 20px;
}
.show-cep button {
    height: 36px;
    color: white;
    background-color: transparent;
    float: none;
    color: transparent;
    border: 0;
    position: relative;
    border: 1px solid #ccc;
    font-weight: bold;
    width: 38px;
    text-transform: uppercase;
    right: 0;
    border-radius: 0;
    font-family: "Quicksand", sans-serif !important;
    font-size: 14px;
    left: 0;
    margin-left: 10px;
    line-height: 39px;
}
.show-cep button:before {
    content: "OK";
    color: #000;
}


.detalhe-produto .rating {
    display: block;
    margin: 0 20px 0;
}
.detalhe-produto .rating .link-avaliacao {
    margin-top: 0;
}
.detalhe-produto .btn-buy {
    background-color: #6ebf55;
    width: 600px;
    height: 65px;
    display: table;
    line-height: 65px;
    border-radius: 78px;
    float: left;
    color: white;
    text-align: center;
    font-family: "Quicksand", sans-serif !important;
    border: none;
    box-shadow: none;
    font-size: 16px;
}
.wd-product-reviews  .wd-footer {
	display:none;
}
.detalhe-produto .produto-comprar .sprite-site-seguro {
    margin-top: 5px;
    margin-bottom: 10px;
	display:inline-block; 
	margin-right:15px;
}
.avaliacao {
	margin:20px 0;
}
.detalhe-produto .nome-produto {
    margin-bottom: 0 !important;
}
.detalhe-produto .rating {
    display: block;
    margin: 0 0 20px;
}
.wd-browsing-breadcrumbs li strong {
    border-bottom: 0;
    color: #c30151;
}
.flagganhepontos {
    display: inline-block;
    position: absolute;
    left: 220px;
    top: 106px;
    display: none;
} 
.wd-product-price-description .condition, .wd-product-price-description .savings {
    font-size: .8em;
    display: table;
    margin: 0;
}
.wd-product-price-description .sale-price {
    color: #333;
    text-align: left;
}
.box-quantidade span {
    display: table;
    float: left;
    margin-right: 8px;
    margin-top: 9px;
}
 .lista-de-desejos button {
    background: transparent;
    box-shadow: none;
    border: 0;  
    font-weight: 900;  
}
.lista-de-desejos button:before {
    content:"";
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABUAAAASCAMAAACDzGUcAAAAM1BMVEUAAAD///8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADW5/q5AAAAEHRSTlMAABEiM0RVZneImaq7zN3uf6QJ9gAAAItJREFUeNpdztEOxCAIRNEBtWrFOv//tUtquuz2PpEDJsI7uo0KeHVYLyIC6ORlkzMjX5x20dTVVgFQ5jo5fZKyhiBzP9bBU+EqlQmNwGbf3qqsod5WYYPfvzTxQGJ7aVsKdOY/zWz3f9cv5zVF8HCgugYHCoIDBcGBrsGHI7YGdzqGbjaewKNRxVc/6GsFYEA8eaEAAAAASUVORK5CYII=');
    float:left;
    display: table;
    width: 21px;
    height: 17px;
    margin-right: 5px;
}
.box-quantidade .wd-product-amount {
    display:table;
    float:left;
    margin-top:0;
}
.bord-top {
    border-top:1px #ccc solid; 
    border-bottom:1px #ccc solid; 
    padding-top:20px;
    margin-top: 15px;
    padding-bottom:20px; 
}
form.show-cep {
    border-top: 0 !important;
    width: 480px !important;
    padding: 0px 0 0;
    margin: 0 0 0;
    padding-left: 0;
    position: relative;
    float: left; 
}
.show-cep .input-wrapper {
    float: left;
    width: 346px;
}
.texto-frete {
    float: left;
    vertical-align: middle;
    padding-top: 8px;
    margin-right: 25px;
    display: inline-block;
}
.detalhe-produto .preco-produto {
    margin-top: 0; 
    margin-bottom: 40px;
}

.detalhe-produto .nome-produto {
    font-size: 20px;
    margin-bottom: 30px;
    line-height: 23px;
    font-weight: 900;
}
.HomeRoute .wd-product-price-description .sale-price {
    text-align:center;
}

.HomeRoute  .wd-product-price-description .condition{
    margin:auto;
} 


.topbar [class*='sprite-'] {
    display: inline-block;
    margin-right: 4px;
    vertical-align: sub;
}
.topbar strong {
    text-transform: capitalize;
    position: relative;
    display: inline-block;
    color: #000;
    font-size: 10px;
    line-height: 10px;
    font-weight: 500;
}
.box-top  + .box-top  { 
    margin-right:40px;
}
.box-top  + .box-top  + .box-top  {
    margin-right:0;
}



/* PRODUCT LINE */
ul li[class*="product-"] {
    padding: 0 !important;
    background: transparent !important;
}
ul li[class*="product-"] > article {
    padding: 30px;
    margin: 0 0 25px !important; 
    border-radius: 10px;
    background: #FFF;
}
ul li[class*="product-"] > article .product-photo .product_wishlist {
    position: absolute;
    top: 15px;
    right: 15px; 
    z-index: 1;
}
ul li[class*="product-"] > article .product-photo .product_wishlist button {
    background: none;
    border: 0;
    width: 21px;
    padding: 0;
}
ul li[class*="product-"] > article .product-photo .product_wishlist button:before {
    content: "";
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABUAAAASCAMAAACDzGUcAAAAM1BMVEUAAAD///8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADW5/q5AAAAEHRSTlMAABEiM0RVZneImaq7zN3uf6QJ9gAAAItJREFUeNpdztEOxCAIRNEBtWrFOv//tUtquuz2PpEDJsI7uo0KeHVYLyIC6ORlkzMjX5x20dTVVgFQ5jo5fZKyhiBzP9bBU+EqlQmNwGbf3qqsod5WYYPfvzTxQGJ7aVsKdOY/zWz3f9cv5zVF8HCgugYHCoIDBcGBrsGHI7YGdzqGbjaewKNRxVc/6GsFYEA8eaEAAAAASUVORK5CYII=');
    float: left;
    display: table;
    width: 21px;
    height: 17px;
    margin-right: 5px;
}
ul li[class*="product-"] > article .product-price {
    clear: both;
}
ul li[class*="product-"] > article .priceContainer {
    position: relative;
    padding-top: 15px;
}
ul li[class*="product-"] > article .priceContainer del {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    text-align: center;
}
ul li[class*="product-"] > article .priceContainer dfn .label {
    padding: 0;
}
ul li[class*="product-"] > article .product-name {
	height: 26px;
    overflow: hidden;
}
.prateleira li article {
    height: 435px !important;
}
.page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions .content .types .photo {
    min-width: 50px;
    max-width: 50px;
    position: relative;
    top: 0px !important;
    display: inline-block;
    vertical-align: top;
}
ul.linha-capilar {
    float: left;
    width: 100%;
    text-align: center;
    display: block;
    height: 39px;
}
/* MENU */
.menu .wd-category-menu {
    padding: 0;
    top: 0;
    margin: 0;
}
.menu ul.level-1 > li {
    padding: 15px !important;
    margin: 0 !important;
}
.menu ul.level-1 > li > h3 {
    padding: 0 !important;
    margin: 0 !important;
}
.menu ul.level-1 > li.migs-do-dia > h3 {
    border-radius: 10px;
}
.menu ul.level-1 > li > h3 a {
    padding: 0 10px;
    display: block;
    text-align: center;
    height: 22px;
    line-height: 22px;
    font-weight: bold;
}
.menu ul.level-1 > li > h3 > a:before {
    content: none;
} 
.menu ul.level-1 > li > ul.level-2 {
    width: 1140px;
    left: 50%;
    margin-left: -570px;
    border-bottom: 0;
    box-shadow: none;
    margin-top: 15px;
}
.menu ul.level-1 > li > ul.level-2 > li > h4 > a {
    text-transform: uppercase;
    font-size: 13px;
    line-height: 16px;
}
.menu ul.level-1 > li > ul.level-2 > li > ul.level-3 {
    padding: 5px 0;
}
.menu ul.level-1 > li > ul.level-2 > li > ul.level-3 > li {
    margin: 0;
}
 




/* TOPO - TOPBAR */ 
header .topbar {
    margin: 0;
	background: #F2F2F2;
}
header .topbar .wrapper:after {
    content: '';
    display: block;
    clear: both;
}  
header .topbar .col-left {
    float: left;
} 
header .topbar .col-left ul li,
header .topbar .col-right .atendimento,
header .topbar .col-right .links-painel,
header .topbar .col-right .redes-sociais,
header .topbar .col-right a {
    text-transform: initial;
    display: inline-block;
    vertical-align: top;
    font-size: 11px;
    line-height: 32px;
    height: 32px;
    font-weight: normal;
    background-position: center;
    background-repeat: no-repeat;
    padding: 0;
}
header .topbar .col-right {
    float: right;
} 
header .topbar .col-left ul li {
    margin-left: 50px;
}
header .topbar .col-left ul li:first-child {
    margin-left: 0px;
}
header .topbar .col-right .atendimento a.title {
    padding: 0 20px;
    border-left: 1px solid #CCC;
    border-right: 1px solid #CCC;
    vertical-align: text-bottom;
}
header .topbar .col-right .links-painel a {
    padding: 0 20px;
}


/* TOPO fixo */
#header.fixo {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
} 
header.fixo .container {
    box-shadow: -500px 20px 0 0px #000, 500px 20px 0 0px #000;
}
#header.fixo .menu {
    display: none;
}
#header.fixo .menu.openmenufixed {
    display: table;
}
#header.fixo .logo-container > a {
    display: inline-block;
    vertical-align: middle;
}
#header.fixo .open-mobile-menu {
    display: inline-block !important;
    vertical-align: middle;
    margin: 0 0px 0 30px;
}
#header.fixo .open-mobile-menu i {
    font-size: 20px;
    color: #FFF;
}
#header.fixo .busca {
    width: calc(60% - 50px);
}



.content-header .busca button {
    right: 8px;
    top: -2px;
}



/* CATEGORIA */

.prateleira-conteudo .wd-browsing-grid-sorter span {
    display: none;
}
.prateleira-conteudo .wd-browsing-grid-sorter select {
    background: transparent;
    border: 0;
}

.filtro-coluna {
    width: 230px;
    margin-right: 60px;
}
.filtro-coluna:before {
    content: "Filtrar por:"; 
    font-size: 22px;
    text-decoration: underline;
    text-transform: uppercase;
    font-weight: bold;
    padding: 30px 0 20px 0;
    display: block;
}
.filtro-coluna li {
    border: 0; 
}
.filtro-coluna .wd-facet-group .facets .facet-type {
        border-bottom: 1px solid #E0E0E0;
}
.wd-facet-group .facets .facet-type .facet-type-list ul {
    padding: 0 0 20px 0 !important;
}
.filtro-coluna .wd-facet-group .facets .facet-type a {
    padding: 3px 0;
    margin: 0;
}
.filtro-coluna .wd-facet-group .facets .facet-type .facet-type-list .option-title {
    white-space: nowrap;
    width: auto;
    max-width: 75%;
    overflow: hidden;
    text-overflow: ellipsis;
    margin: 0;
    vertical-align: middle;
    margin-right: 5px;
}
.filtro-coluna .wd-facet-group .facets .facet-type .facet-type-list .option-count {
    display: inline-block;
    vertical-align: middle;
    float: none;
}
.prateleira-conteudo {
    width: calc(100% - 300px);
    margin: 0;
}
.prateleira-conteudo #content-wrapper footer .wd-browsing-grid-sorter {
    display: none;
}
.prateleira-conteudo #content-wrapper .wd-browsing-grid .live-scroll {
    text-align: center;
    padding: 30px 0;
    height: auto;
}
.prateleira-conteudo #content-wrapper .wd-browsing-grid .live-scroll img,
#content #content-wrapper .live-scroll.load .icon,
.prateleira-conteudo #content-wrapper .wd-browsing-grid .live-scroll.finished a.more-results  {
    display: none !important;
}
.prateleira-conteudo #content-wrapper .wd-browsing-grid .live-scroll a.more-results {
    background: #c30151;
    color: #FFF;
    text-transform: uppercase;
    font-size: 0px;
    display: inline-block;
    border-radius: 50px;
    padding: 0 30px;
    height: 40px;
    line-height: 40px;
}
.prateleira-conteudo #content-wrapper .wd-browsing-grid .live-scroll a.more-results:before {
    content: "Mostrar mais produtos";
    font-size: 14px; 
}
.prateleira-conteudo #content-wrapper header {
    display: block; 
    box-shadow: unset;
    background: transparent;
}
.prateleira-conteudo #content-wrapper header .wd-browsing-grid-pager {
    display: none;
}
.prateleira-conteudo .wd-browsing-grid-sorter {
    position: relative;
    background: transparent;
    top: unset;
}
.prateleira-conteudo .wd-browsing-grid-list > ul > li {
    width: calc(33% - 8px);
    margin: 5px;
}




/* INTERNA DO PRODUTO */

body[class*="context-product-"] nav.wd-browsing-breadcrumbs {
    padding: 20px 0 50px 0;
}
body[class*="context-product-"] .detalhe-produto .medias {
    width: 620px;
    padding: 0;
}

body[class*="context-product-"] .detalhe-produto .medias .wd-product-media-selector li,
body[class*="context-product-"] .detalhe-produto .medias .wd-product-media-selector li img {
    width: 70px;
    height: auto;
    margin: 0 0 0px 0;
    padding: 0;
    box-sizing: border-box;
    border: 0 !important;
}
body[class*="context-product-"] .detalhe-produto .medias .wd-product-media-selector li {
    margin-bottom: 5px;
}
body[class*="context-product-"] .detalhe-produto .medias .wd-product-medias-displayer {
    margin-left: 90px;
    width: calc(100% - 110px) !important;
    height: auto;
    display: block;
}
body[class*="context-product-"] .detalhe-produto .medias .wd-product-medias-displayer .zoom {
    width: 100% !important;
    height: auto !important;
}
body[class*="context-product-"] .detalhe-produto .medias .wd-product-medias-displayer .zoom > img {
    width: 100%;
    height: auto;
}
body[class*="context-product-"] .detalhe-produto .medias .wd-product-medias-enlarger {
    display: block;
    position: relative;
    z-index: 2;
}
body[class*="context-product-"] .detalhe-produto .medias .wd-product-medias-enlarger button {
    background: none;
    border: 0;
    text-transform: lowercase;
    background-image: url('data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/PjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+PHN2ZyB2ZXJzaW9uPSIxLjEiIGlkPSJDYXBhXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB2aWV3Qm94PSIwIDAgMjc0LjkyMSAyNzQuOTIxIiBzdHlsZT0iZmlsbDogI2MzMDE1MTsgZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCAyNzQuOTIxIDI3NC45MjE7IiB4bWw6c3BhY2U9InByZXNlcnZlIj48Zz48cGF0aCBkPSJNMTM2LjA4MSw4My43NTNoLTIyLjMyNlY2MS40MjdjMC04LjI4NC02LjcxNi0xNS0xNS0xNXMtMTUsNi43MTYtMTUsMTV2MjIuMzI2SDYxLjQyOWMtOC4yODQsMC0xNSw2LjcxNi0xNSwxNXM2LjcxNiwxNSwxNSwxNWgyMi4zMjZ2MjIuMzI2YzAsOC4yODQsNi43MTYsMTUsMTUsMTVzMTUtNi43MTYsMTUtMTV2LTIyLjMyNmgyMi4zMjZjOC4yODQsMCwxNS02LjcxNiwxNS0xNVMxNDQuMzY1LDgzLjc1MywxMzYuMDgxLDgzLjc1M3oiLz48cGF0aCBkPSJNMjY3LjMwNiwyMzAuNTM1bC04Mi43NzItODIuNzcyYzguNDY1LTE0Ljc1OCwxMi45NzYtMzEuNTM2LDEyLjk3Ni00OS4wMDlDMTk3LjUwOCw0NC4xNzUsMTUzLjM0MywwLDk4Ljc1NSwwQzQ0LjE3NywwLDAuMDAyLDQ0LjE2NywwLDk4Ljc1NGMwLDc1LjgwMSw4Mi4yMSwxMjMuMzc0LDE0Ny43NjUsODUuNzc4bDgyLjc3Miw4Mi43NzNjMTAuMTUzLDEwLjE1MywyNi42MTQsMTAuMTUzLDM2Ljc2OCwwQzI3Ny40NTksMjU3LjE1MSwyNzcuNDU5LDI0MC42ODgsMjY3LjMwNiwyMzAuNTM1eiBNMzAsOTguNzU1QzMwLDYwLjc1Niw2MC43NTEsMzAsOTguNzU1LDMwYzM3Ljk5NywwLDY4Ljc1NSwzMC43NDksNjguNzU1LDY4Ljc1NGMwLDE4LjM2NS03LjE1MSwzNS42MzEtMjAuMTM4LDQ4LjYxNkMxMDMuODk3LDE5MC44NDYsMzAsMTU5LjQzLDMwLDk4Ljc1NXoiLz48L2c+PGc+PC9nPjxnPjwvZz48Zz48L2c+PGc+PC9nPjxnPjwvZz48Zz48L2c+PGc+PC9nPjxnPjwvZz48Zz48L2c+PGc+PC9nPjxnPjwvZz48Zz48L2c+PGc+PC9nPjxnPjwvZz48Zz48L2c+PC9zdmc+');
        background-position: 0 0;
    background-repeat: no-repeat;
    background-size: 16px;
    font-size: 13px;
    padding-left: 20px;
}
body[class*="context-product-"] .detalhe-produto .medias .wd-product-medias-enlarger button:before {
    content: "Passe o mouse para ";
    text-transform: initial;
}


body[class*="context-product-"] .detalhe-produto .desc-produto {
    width: 450px;
    padding: 0;
    margin: 0 0 0 50px;
}
body[class*="context-product-"] .detalhe-produto .desc-produto .wd-buy-button,
body[class*="context-product-"] .detalhe-produto .desc-produto .btn-buy {
    width: 100%;
    display: block;
}


body[class*="context-product-"] .detalhe-produto .desc-produto .box-quantidade {
    margin-bottom: 20px;
}
body[class*="context-product-"] .detalhe-produto .desc-produto .box-quantidade .wd-product-amount button {
    height: 30px;
    width: 30px;
    border-radius: 0;
    vertical-align: top;
    margin: 0 -6px;
    background: #FFF;
    color: #000; 
    border: 1px solid #AAA;
    font-weight: bold;
    font-size: 18px;
    box-shadow: none;
}
body[class*="context-product-"] .detalhe-produto .desc-produto .box-quantidade .wd-product-amount input {
    border-radius: 0;
    vertical-align: top;
    margin: 0;
    height: 30px;
    width: 50px;
}
body[class*="context-product-"] .detalhe-produto .desc-produto .box-quantidade span {
    line-height: 30px;
    margin-left: 17px;
    margin-right: 0;
    margin-top: 0;
    font-weight: bold;
    font-size: 12px;
}

body[class*="context-product-"] .detalhe-produto .desc-produto .btn-buy {
    height: 50px;
    line-height: 50px;
    font-weight: bold;
}


body[class*="context-product-"] .detalhe-produto .descricao-do-produto {
    font-weight: bold;
    font-size: 13px; 
}
body[class*="context-product-"] .detalhe-produto .descricao-do-produto a {
    text-decoration: underline !important;
    color: #c30151;
}
body[class*="context-product-"] .detalhe-produto .main-title span {
    position: absolute;
    display: block;
    top: -200px;
}

.detalhe-produto .preco-produto {
    margin-bottom: 10px;
}


body[class*="context-product-"] .detalhe-produto .texto-frete {
    font-size: 12px;
    font-weight: bold;
}

body[class*="context-product-"] .detalhe-produto .show-cep button {
    font-size: 0;
    line-height: 36px;
    text-align: center;
}

body[class*="context-product-"] .detalhe-produto .show-cep button:before {
    font-size: 12px;
}

body[class*="context-product-"] .detalhe-produto .desc-produto .priceContainer {
    position: relative;
        padding-top: 25px;
}
body[class*="context-product-"] .detalhe-produto .desc-produto .priceContainer del {
    position: absolute;
    top: 0;
    left: 0;
    font-size: 18px;
    color: #646262;
}

body[class*="context-product-"] .detalhe-produto .desc-produto .priceContainer del em {
    margin-right: 5px;
}
body[class*="context-product-"] .detalhe-produto .desc-produto .priceContainer del:after {
    content: " por";
}
body[class*="context-product-"] .detalhe-produto .desc-produto .priceContainer del:empty {
    display: none;
}

body[class*="context-product-"] .detalhe-produto .desc-produto .priceContainer .sale-price {
font-size: 36px;
color: #000;
font-weight: bold;
}
body[class*="context-product-"] .detalhe-produto .desc-produto .priceContainer dfn {}
body[class*="context-product-"] .detalhe-produto .desc-produto .priceContainer dfn > span {
    font-size: 18px;
}


body[class*="context-product-"] .detalhe-produto .desc-produto form.show-cep {
    border-top: 0 !important;
    width: 350px !important;
}
body[class*="context-product-"] .detalhe-produto .desc-produto form.show-cep .input-wrapper {
    float: left;
    width: 296px;
    position: relative;
}
body[class*="context-product-"] .detalhe-produto .show-cep .input-wrapper label:before {
    background-image: url('data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/PjxzdmcgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDQ1MSA0NTEiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDQ1MSA0NTE7IiB4bWw6c3BhY2U9InByZXNlcnZlIj48Zz48cGF0aCBkPSJNNDQ3LjA1LDQyOGwtMTA5LjYtMTA5LjZjMjkuNC0zMy44LDQ3LjItNzcuOSw0Ny4yLTEyNi4xQzM4NC42NSw4Ni4yLDI5OC4zNSwwLDE5Mi4zNSwwQzg2LjI1LDAsMC4wNSw4Ni4zLDAuMDUsMTkyLjNzODYuMywxOTIuMywxOTIuMywxOTIuM2M0OC4yLDAsOTIuMy0xNy44LDEyNi4xLTQ3LjJMNDI4LjA1LDQ0N2MyLjYsMi42LDYuMSw0LDkuNSw0czYuOS0xLjMsOS41LTRDNDUyLjI1LDQ0MS44LDQ1Mi4yNSw0MzMuMiw0NDcuMDUsNDI4eiBNMjYuOTUsMTkyLjNjMC05MS4yLDc0LjItMTY1LjMsMTY1LjMtMTY1LjNjOTEuMiwwLDE2NS4zLDc0LjIsMTY1LjMsMTY1LjNzLTc0LjEsMTY1LjQtMTY1LjMsMTY1LjRDMTAxLjE1LDM1Ny43LDI2Ljk1LDI4My41LDI2Ljk1LDE5Mi4zeiIvPjwvZz48Zz48L2c+PGc+PC9nPjxnPjwvZz48Zz48L2c+PGc+PC9nPjxnPjwvZz48Zz48L2c+PGc+PC9nPjxnPjwvZz48Zz48L2c+PGc+PC9nPjxnPjwvZz48Zz48L2c+PGc+PC9nPjxnPjwvZz48L3N2Zz4=');
    content: '';
    width: 20px;
    height: 20px;
    display: block;
    position: absolute;
    right: 10px;
    top: 10px;
    z-index: 5;
}


body[class*="context-product-"] .compre-junto {
    margin: 0;
}
body[class*="context-product-"] .compre-junto .wd-product-associations.wd-widget {
    margin: 80px 0;
}
body[class*="context-product-"] .compre-junto ul li[class*="product-"].first {
    margin-right: 120px;
}
body[class*="context-product-"] .compre-junto ul li[class*="product-"] > div {
    padding: 30px;
    background: transparent;
    border-radius: 10px;
}

body[class*="context-product-"] .compre-junto ul li[class*="product-"] > div .priceContainer {
    position: relative;
    padding-top: 15px;
    text-align: center;
}
body[class*="context-product-"] .compre-junto ul li[class*="product-"] > div .priceContainer del {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    text-align: center;
}
body[class*="context-product-"] .compre-junto ul li[class*="product-"] > div .priceContainer dfn .label {
    padding: 0;
}

body[class*="context-product-"] .compre-junto .cross-sell-footer .btn-buy {
    width: 100%;
    font-size: 15px;
    font-weight: bold;
}
body[class*="context-product-"] .compre-junto .cross-sell-footer .total {
    width: 100%;
    text-align: center;
    left: 0;
    margin: 0;
    top: 120px;
}
body[class*="context-product-"] .compre-junto .cross-sell-footer .total:before {
    content: "Comprando Junto";
    text-transform: uppercase; 
    font-size: 23px;
    display: block; 
}
body[class*="context-product-"] .compre-junto .cross-sell-footer .total .sale-price,
body[class*="context-product-"] .compre-junto .cross-sell-footer .total .condition {
    text-align: center;
    width: 100%;
}

body[class*="context-product-"] .detalhe-produto .compre-junto .wd-product-associations .wd-title {
    font-size: 0;
}
body[class*="context-product-"] .detalhe-produto .compre-junto .wd-product-associations .wd-title:before {
    content: "Compre junto e Economize";
    font-size: 30px;
}
body[class*="context-product-"] .compre-junto ul li[class*="product-"].first:before {
    font-size: 69px;
}


body[class*="context-product-"] .detalhe-produto .associacoes .wd-product-associations {
    margin: 50px 0;
}

body[class*="context-product-"] .detalhe-produto .frete-simulate table.result img {
    max-width: 55px;
}





.avaliacao h3 {
        padding: 0;
    margin: 0;
}

.wd-product-reviews .wd-header {
    display: none;
}
.wd-product-reviews .wd-header .wd-title{
      text-transform: uppercase;
    vertical-align: middle;
    text-align: center;
    display: block;
    font-size: 20px;
    background: #fff;
    padding: 0 10px;
    font-family: 'Lato', sans-serif;
    font-weight: 700;
    color: #1e1e1e;
}
.wd-product-reviews .no-data a{
      height: 45px;
      line-height: 45px;
    background-color: #a60550;
    border: none;
    color: #ffffff;
    font-size: 14px;
    font-family: 'Lato', sans-serif;
    font-weight: 700;
    text-transform: uppercase;
    width: 250px;
    display: block;
    margin: 15px auto;
    text-align: center;
    border-radius: 5px;
}
.wd-product-reviews .avaliacao-texto,
.wd-product-reviews .total-avaliacoes,
.wd-product-reviews .footer{
      display: block;
    text-align: center;
    font-weight: bold;
    font-size: 13px;
}
.rating-attributes + .review .input-wrapper:nth-child(4) textarea{
      display: block;
    width: 100%;
    height: 100px;
}
.rating-attributes + .review button{
   height: 45px;
    line-height: 45px;
    background-color: #a60550;
    border: none;
    color: #ffffff;
    font-size: 14px;
    font-family: 'Lato', sans-serif;
    font-weight: 700;
    text-transform: uppercase;
    width: 150px;
    display: block;
    text-align: center;
    float: right;
    border-radius: 5px;
    margin-bottom: 10px;
}
body .wd-product-reviews-create .input-wrapper>label, .wd-product-reviews-create .rating-attributes>li>b {
    width: initial;
    text-align: right;
    float: left;
}
.wd-review-item .coluna-1 {
    display: block;
    float: left;
    text-align: center;
    margin-right: 25px
}

.wd-review-item .coluna-1 img {
    margin: 0 auto;
    display: none;
}

.wd-review-item .coluna-1 .person {
    font-size: 12px;
    font-family: 'Open Sans',sans-serif;
    font-weight: 400;
    font-style: normal;
    color: #6c6c6c
}

.wd-review-item .coluna-1 .rating {
       width: 84px;
    height: 15px;
}

.wd-review-item .coluna-1 .rating:after,.wd-review-item .coluna-1 .rating:before {
    letter-spacing: 4px!important;
    font-size: 10px!important
}

.wd-review-item .coluna-1 .rating:before {
    position: initial!important;
    display: block;
    padding-top: 5px
}

.wd-review-item .coluna-2 {
    display: block;
    float: left;
    width: 1000px
}

.wd-review-item .coluna-2 .date {
    font-size: 11px;
    font-family: 'Open Sans',sans-serif;
    font-weight: 400;
    font-style: normal;
    color: #6c6c6c;
    display: block;
    margin-bottom: 10px
}

.wd-review-item .coluna-2 .wd-review-text q {
    font-size: 12px;
    line-height: 20px;
    font-family: 'Open Sans',sans-serif;
    font-weight: 400;
    font-style: normal;
    color: #333
}
.wd-review-item .coluna-2 .wd-review-title{
  font-weight:bold;
  display: none;
  padding-bottom: 12px;
}

.wd-review-item {
    clear: both;
    width: 100%;
    overflow: hidden;
    padding: 20px 10px!important;
    border-bottom: 1px solid #e3e3e3
}
.wd-product-reviews .wd-content .load + .no-data{
  float: right;
}
.wd-product-reviews .wd-review-paginate li{
  width: 30px;
  height: 30px;
  background-color: #fff;
  float: left;
  padding:0;
}
.wd-product-reviews .wd-review-paginate li a{
  width: 30px;
  height: 30px;
  display: block;
  background-color: #fff;
  border-radius: 30px;
   padding:0;
   text-align: center;
   line-height: 30px;
   border:1px solid #000;
   color: #000;
}
.wd-product-reviews .wd-review-paginate li a.page-selected,
.wd-product-reviews .wd-review-paginate li a:hover{
  background-color: #a60550;
  color: #fff;
  border: 1px solid #a60550;
}
.avaliacao .wd-product-reviews .wd-review-paginate {
    padding:15px 12px;
    float: left;
}
.avaliacao .wd-product-reviews .wd-review-paginate ul{
  margin:0;
  padding:0;
}
.avaliacao .wd-product-reviews .wd-review-paginate ul li{
  margin:0 5px;
}
#a-avaliacao{
  clear: both;
}
.information .avaliacao .wd-product-rating .rating-average{
  float: left;
  margin-right: 5px;
}
.information .avaliacao .wd-product-rating .review-create{
  float: left;
  color: #a60550;
}
.wd-product-associations .wd-content .slick-slider .slick-next, .wd-product-associations .wd-content .slick-slider .slick-prev{
  z-index: 0;
}
.wd-review-item .coluna-1 .rating,
.wd-product-reviews .rating-attributes .rating{
  background:none;
}
.wd-product-reviews .rating-attributes .rating label{
      width: 15px;
    height: 16px;
    cursor: pointer;
}
.wd-product-reviews .rating-attributes .rating{
  width: 90px;
}
.wd-product-reviews .rating-attributes .rating label:after{
   color: #8e8e8e;
    content: "\f005\f005\f005\f005\f005";
    display: block;
    font-size: 14px;
    font-family: fontAwesome;
    font-weight: bold;
}
.wd-product-reviews .rating-attributes .rating.rate-1 label.rate-1:after,
.wd-product-reviews .rating-attributes .rating.selected-rate-1 label.rate-1:after{
  color: #a60550;
    content: "\f005";
    display: block;
    font-size: 14px;
    font-family: fontAwesome;
    font-weight: bold;
}
.wd-product-reviews .rating-attributes .rating.rate-2 label.rate-2:after,
.wd-product-reviews .rating-attributes .rating.rate-2 label.rate-1:after,
.wd-product-reviews .rating-attributes .rating.selected-rate-2 label.rate-2:after,
.wd-product-reviews .rating-attributes .rating.selected-rate-2 label.rate-1:after{
  color: #a60550;
    content: "\f005";
    display: block;
    font-size: 14px;
    font-family: fontAwesome;
    font-weight: bold;
}
.wd-product-reviews .rating-attributes .rating.rate-3 label.rate-3:after,
.wd-product-reviews .rating-attributes .rating.rate-3 label.rate-2:after,
.wd-product-reviews .rating-attributes .rating.rate-3 label.rate-1:after,
.wd-product-reviews .rating-attributes .rating.selected-rate-3 label.rate-3:after,
.wd-product-reviews .rating-attributes .rating.selected-rate-3 label.rate-2:after,
.wd-product-reviews .rating-attributes .rating.selected-rate-3 label.rate-1:after{
  color: #a60550;
    content: "\f005";
    display: block;
    font-size: 14px;
    font-family: fontAwesome;
    font-weight: bold;
}
.wd-product-reviews .rating-attributes .rating.rate-4 label.rate-4:after,
.wd-product-reviews .rating-attributes .rating.rate-4 label.rate-3:after,
.wd-product-reviews .rating-attributes .rating.rate-4 label.rate-2:after,
.wd-product-reviews .rating-attributes .rating.rate-4 label.rate-1:after,
.wd-product-reviews .rating-attributes .rating.selected-rate-4 label.rate-4:after,
.wd-product-reviews .rating-attributes .rating.selected-rate-4 label.rate-3:after,
.wd-product-reviews .rating-attributes .rating.selected-rate-4 label.rate-2:after,
.wd-product-reviews .rating-attributes .rating.selected-rate-4 label.rate-1:after{
  color: #a60550;
    content: "\f005";
    display: block;
    font-size: 14px;
    font-family: fontAwesome;
    font-weight: bold;
}
.wd-product-reviews .rating-attributes .rating.rate-5 label.rate-5:after,
.wd-product-reviews .rating-attributes .rating.rate-5 label.rate-4:after,
.wd-product-reviews .rating-attributes .rating.rate-5 label.rate-3:after,
.wd-product-reviews .rating-attributes .rating.rate-5 label.rate-2:after,
.wd-product-reviews .rating-attributes .rating.rate-5 label.rate-1:after,
.wd-product-reviews .rating-attributes .rating.selected-rate-5 label.rate-5:after,
.wd-product-reviews .rating-attributes .rating.selected-rate-5 label.rate-4:after,
.wd-product-reviews .rating-attributes .rating.selected-rate-5 label.rate-3:after,
.wd-product-reviews .rating-attributes .rating.selected-rate-5 label.rate-2:after,
.wd-product-reviews .rating-attributes .rating.selected-rate-5 label.rate-1:after{
  color: #a60550;
    content: "\f005";
    display: block;
    font-size: 14px;
    font-family: fontAwesome;
    font-weight: bold;
}
.wd-product-reviews .rating-attributes .rating label:after
.wd-review-item .coluna-1
{
      width: 77px;
}
.wd-review-item .coluna-1 .rating,
.avali-busca span {
    text-indent: 0;
    font-size: 0;
    position: relative;
    width: initial;
    text-align: left;
    display: block;
}
.avali-busca span{
  width: 80px;
  margin:10px 0;
}
.wd-review-item .coluna-1 .rating:after{
  position: absolute;
  right:0;
  top: 5px;
}
.wd-review-item .coluna-1 .rating.rate-5:before,
.avali-busca .rate-5:before{
    color: #a60550;
    content: "\f005\f005\f005\f005\f005";
    display: block;
    font-size: 14px;
    font-family: fontAwesome;
    font-weight: bold;
}
.wd-review-item .coluna-1 .rating.rate-0:after,
.avali-busca .rate-0:after{
    color: #8e8e8e;
    content: "\f005\f005\f005\f005\f005";
    display: block;
    font-size: 14px;
    font-family: fontAwesome;
    font-weight: bold;
}
.wd-review-item .coluna-1 .rating.rate-1:after,
.avali-busca .rate-1:after{
    color: #8e8e8e;
    content: "\f005\f005\f005\f005";
    display: block;
    font-size: 14px;
    font-family: fontAwesome;
    font-weight: bold;
}
.wd-review-item .coluna-1 .rating.rate-1:before,
.avali-busca .rate-1:before{
    color: #a60550;
    content: "\f005";
    display: block;
    font-size: 14px;
    font-family: fontAwesome;
    font-weight: bold;
}
.wd-review-item .coluna-1 .rating.rate-2:after,
.avali-busca .rate-2:after{
    color: #8e8e8e;
    content: "\f005\f005\f005";
    display: block;
    font-size: 14px;
    font-family: fontAwesome;
    font-weight: bold;
    
}
.wd-review-item .coluna-1 .rating.rate-2:before,
.avali-busca .rate-2:before{
    color: #a60550;
    content: "\f005\f005";
    display: block;
    font-size: 14px;
    font-family: fontAwesome;
    font-weight: bold;
}
.wd-review-item .coluna-1 .rating.rate-3:after,
.avali-busca .rate-3:after{
    color: #8e8e8e;
    content: "\f005\f005";
    display: block;
    font-size: 14px;
    font-family: fontAwesome;
    font-weight: bold;
    
}
.wd-review-item .coluna-1 .rating.rate-3:before,
.avali-busca .rate-3:before{
    color: #a60550;
    content: "\f005\f005\f005";
    display: block;
    font-size: 14px;
    font-family: fontAwesome;
    font-weight: bold;

}
.wd-review-item .coluna-1 .rating.rate-4:after,
.avali-busca .rate-4:after{
    color: #8e8e8e;
    content: "\f005";
    display: block;
    font-size: 14px;
    font-family: fontAwesome;
    font-weight: bold;
   
}
.wd-review-item .coluna-1 .rating.rate-4:before,
.avali-busca .rate-4:before{
    color: #a60550;
    content: "\f005\f005\f005\f005";
    display: block; 
    font-size: 14px;
    font-family: fontAwesome;
    font-weight: bold;
}
.suggestion-box{
  
}
.avali-busca .rate-1:after,
.avali-busca .rate-2:after,
.avali-busca .rate-3:after,
.avali-busca .rate-4:after{
    position: absolute;
  right:0;
  top: 0;
}


/*
.carrinho-lateral {
    position: fixed;
    top: 0;
    width: 470px;
    right: -1000px;
    height: auto;
    background: #FFF;
    z-index: 9999; 
    transition: all 0.8s;
}
.carrinho-lateral.open {
    right: 50%;
    margin-right: -570px;
}
.carrinho-lateral.open + #main:before {
    content: '';
    background: rgba(0,0,0,0.6);
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    display: block;
    position: fixed;
    z-index: 9998; 
}
*/
.carrinho-lateral {
    position: absolute;
    top: 25px;
    width: 470px;
    right: 0;
    height: auto;
    z-index: 9999; 
    padding-top: 20px;
    display: none;
    transition: all 0.8s;
}
.cart-container:hover .carrinho-lateral {
    display: block;
}
.carrinho-lateral > div {
    background: #FFF;
}

.carrinho-lateral .wd-checkout-basket-summaryheader .cl-header:before {
    content: '';
    position: absolute;
    display: block;
    width: 20px;
    height: 20px;
    background: white;
    right: 8px;
    transform: rotate(45deg);
    margin-top: 7px;
    top: -10px;
    z-index: 0;
}

.carrinho-lateral .cart-upsell-top .frete-upsell {
    padding: 10px 0 10px 0;
}

.carrinho-lateral .wd-checkout-basket-summaryheader {}
.carrinho-lateral .wd-checkout-basket-summaryheader .summaryheader-content {
    position: relative;
    width: 100%;
    height: auto;
    display: block;
    box-shadow: none;
}

.carrinho-lateral .wd-checkout-basket-summaryheader .cl-header {
    border-bottom: 1px solid #333;
    position: relative;
}
.carrinho-lateral .wd-checkout-basket-summaryheader .cl-header .seta-voltar i:before {
    font-family: fontAwesome;
    font-style: normal;
    color: #a60550;
    font-size: 14px;
}
.carrinho-lateral .wd-checkout-basket-summaryheader .cl-header b {
    font-weight: bold;
    font-size: 13px;
    text-transform: uppercase;
    color: #a60550;
    display: block;
    text-align: center;
    height: 40px;
    line-height: 40px;
}
.carrinho-lateral .wd-checkout-basket-summaryheader .cl-header > span {
    position: absolute;
    top: 0px;
    left: 10px;
    line-height: 40px;
}
.carrinho-lateral .wd-checkout-basket-summaryheader .cl-header > span.seta-voltar {
    cursor: pointer;
}
.carrinho-lateral .wd-checkout-basket-summaryheader .cl-header > span.basket-size-wrapper {
    right: 10px;
    left: unset;
    text-transform: uppercase;
}
.carrinho-lateral .wd-checkout-basket-summaryheader .wd-widget > .wd-header {
    display: none;
}

.carrinho-lateral .wd-checkout-basket-summaryheader .cl-bttopo {
    padding: 10px;
    display: block;
    width: 100%;
    clear: both;
}
.carrinho-lateral .wd-checkout-basket-summaryheader .cl-bttopo button {
    display: block;
    vertical-align: middle;
    height: 44px;
    line-height: 44px;
    font-size: 16px;
    font-weight: bold;
    background: #109406;
    border: 1px solid #109406;
    color: #FFF;
    width: 100%;
    display: block;
}

.carrinho-lateral .wd-checkout-basket-summaryheader .wd-widget > .wd-content {
    padding: 10px 0px 10px 10px;
}
.carrinho-lateral .wd-checkout-basket-summaryheader .wd-widget>.wd-content ul li {
    display: inline-block;
    vertical-align: middle;
    float: none;
}
.carrinho-lateral .wd-checkout-basket-summaryheader .wd-widget>.wd-content ul .name {
    width: 170px;
    vertical-align: middle;
    height: auto;
    line-height: 1;
    display: inline-block;
}
.carrinho-lateral .wd-checkout-basket-summaryheader .wd-widget>.wd-content ul .name span {
    font-size: 12px;
}

.carrinho-lateral .wd-checkout-basket-summaryheader .wd-widget > .wd-content ul.product {
    padding: 20px 0;
    border-bottom: 1px solid #CCC;
} 
.carrinho-lateral .wd-checkout-basket-summaryheader .wd-widget > .wd-content ul.product .content-product {
    display: inline-flex;
    width: 180px !important;
}
.carrinho-lateral .wd-checkout-basket-summaryheader .wd-widget > .wd-content ul.product .content-product > li {
    display: inline-block;
    margin: 0 5px;
}
.carrinho-lateral .wd-checkout-basket-summaryheader .wd-widget > .wd-content ul.product .content-product > li.price {
    order: 1;
}
.carrinho-lateral .wd-checkout-basket-summaryheader .wd-widget > .wd-content ul.product .content-product > li.remove-item {
    order: 3;
}
.carrinho-lateral .wd-checkout-basket-summaryheader .wd-widget > .wd-content ul.product .content-product > li.remove-item button {
    background: transparent;
    border: 0;
}

.carrinho-lateral .wd-checkout-basket-summaryheader .qtd-item {
    width: 88px;
    position: relative;
    order: 2;
}
.carrinho-lateral .wd-checkout-basket-summaryheader .qtd-item button {
    position: absolute;
    right: 2px;
    top: 8px;
    font-size: 17px;
    font-weight: bold;
    height: 18px;
    line-height: 14px;
    width: 23px;
    background: #FFF;
    color: #000;
    border: 0;
    border-left: 1px solid #959595;
}
.carrinho-lateral .wd-checkout-basket-summaryheader .qtd-item button.botaoMenosMinicart {
    top: 24px;
    border-top: 1px solid #959595;
}
.carrinho-lateral .wd-checkout-basket-summaryheader .qtd-item input{
    width: 100%;
    height: 36px;
    padding: 10px;
    line-height: 36px;
    border-radius: 2px;
    border: 1px solid #959595;
} 
.carrinho-lateral .wd-checkout-basket-summaryheader .wd-widget>.wd-content ul .price {
    width: 105px;
    text-align: center; 
    color: #757575;
    font-size: 13px;
}

.carrinho-lateral .wd-checkout-basket-summaryheader .wd-widget > .wd-content .subtotal {
    height: auto;
    padding: 20px 10px 0 10px;
}
.carrinho-lateral .wd-checkout-basket-summaryheader .wd-widget > .wd-content .subtotal > li {
    display: inline-block;
    font-size: 12px;
    text-transform: uppercase;
    color: #444;
    font-weight: normal;
    width: 48%;
    vertical-align: top;
    padding: 0;
    margin: 0;
    text-align: left;
    line-height: 30px;
    height: 30px;
    position: relative;
    top: unset;
    right: unset;
}
.carrinho-lateral .wd-checkout-basket-summaryheader .wd-widget > .wd-content .subtotal > li.value {
    color: #a70852;
    font-weight: bold;
    text-align: right;
    float: none;
    font-size: 16px;
}
.carrinho-lateral .wd-checkout-basket-summaryheader .wd-widget>.wd-footer {
    text-align: center;
}
.carrinho-lateral .wd-checkout-basket-summaryheader .wd-widget>.wd-footer .close-carrinho-lateral,
.carrinho-lateral .wd-checkout-basket-summaryheader .wd-widget>.wd-footer .go-to-checkout {
    display: inline-block;
    vertical-align: middle;
    border: 1px solid #CCC;
    height: 44px;
    line-height: 44px;
    font-size: 13px;
    font-weight: bold;
    color: #CCC;
    width: calc(49% - 20px);
}
.carrinho-lateral .wd-checkout-basket-summaryheader .wd-widget>.wd-footer .go-to-checkout {
    background: #109406;
    border: 1px solid #109406;
    color: #FFF;
    margin-left: 10px;
}

.carrinho-lateral .wd-checkout-basket-summaryheader .wd-widget > .wd-content ul.product .content-product > li.remove-item button svg {
    max-width: 10px;
    height: auto;
}

.carrinho-lateral .wd-checkout-basket-summaryheader.empty .wd-widget > .wd-content:before {
    content: "Não há produtos em sua sacola";
    display: block;
    text-align: center;
    font-size: 18px; 
}
.carrinho-lateral .wd-checkout-basket-summaryheader.empty .wd-widget>.wd-content .subtotal,
.carrinho-lateral .wd-checkout-basket-summaryheader.empty .cart-upsell-top {
    display: none;
}
.banner-arrasa-na-oferta .list li .product-photo {
    padding-top: 30px !important;
}

.wd-profile-welcome-shopper .login-wrapper {
    position: unset;
}
.wd-profile-welcome-shopper .login-simple .login-title {
    color: #FFF;
}
.wd-profile-welcome-shopper .login-wrapper .login-content {
    position: absolute;
    top: 26px;
    right: 0;
    width: 280px;
    color: #3E3E3E;
    transition: all 300ms;
    z-index: 2;
    display: none;
}
.wd-profile-welcome-shopper:hover .login-wrapper .login-content,
.wd-profile-welcome-shopper .login-wrapper .login-content.open {
    display: block;
}
.wd-profile-welcome-shopper .login-wrapper .login-content .header {
    background: transparent;
    height: 12px;
    text-align: right;
}
.wd-profile-welcome-shopper .login-wrapper .login-content .header:before {
  content: "";
  display: inline-block;
  vertical-align: middle;
  margin-right: 80px;
  width: 0; 
  height: 0; 

  border-left: 8px solid transparent;
  border-right: 8px solid transparent;
  border-bottom: 9px solid #FFF;
}
.wd-profile-welcome-shopper .login-wrapper .login-content .content {
    background: #FFF;
    padding: 20px;
    position: relative;
    border-radius: 20px;
}
.wd-profile-welcome-shopper .login-wrapper .login-content .content > p {
    font-size: 13px;
    color: #7e7e7e;
}
.wd-profile-welcome-shopper .login-wrapper .login-content .content > p a {
    color: #a60550;
    text-decoration: underline;
}
.wd-profile-welcome-shopper .login-wrapper .login-content .wd-profile-login {
    display: block;
    position: relative;
    box-shadow: none;
    width: 100%;
    top: unset;
    padding: 0;
    border: 0;
}
.wd-profile-welcome-shopper .login-simple .login-wrapper .wd-profile-login .input-wrapper input {
    width: 240px;
}
.wd-profile-welcome-shopper .login-simple .login-wrapper .wd-profile-login .input-wrapper input.password {
    width: 165px; 
}
.wd-profile-welcome-shopper .login-simple .login-wrapper .wd-profile-login .input-wrapper button {
    position: absolute;
    top: 0;
    right: 0;
    margin: 0 !important;
    width: 70px;
}
.wd-profile-welcome-shopper .login-simple .login-wrapper .wd-profile-login .recover-password {
    font-size: 12px;
    color: #7e7e7e;
    text-decoration: none !important;    
}
.wd-profile-welcome-shopper .login-simple .login-wrapper .wd-profile-login .recover-password:after {
    content: " Recuperar senha.";
    color: #a60550;
    text-decoration: underline;
}
.wd-profile-welcome-shopper .login-simple .wd-profile-login-oauth {
    display: block;
    top: 175px;
}
.wd-profile-welcome-shopper .login-simple .wd-profile-login-oauth .loginFacebook {
    background: url('//d830okm0xici6.cloudfront.net/Custom/Content/Themes/Salon2020DESK/Images/btfacebook.png');
    width: 100%;
    height: 30px;
    background-position: center;
    background-size: contain;
    background-repeat: no-repeat;
}


.wd-marketing-banner.slider .banner-wrapper {
    background-position: center;
    background-size: cover;
}
header .wd-category-menu li .sub-section .prateleira img {
    max-width: 100%;
}

body.page-basket .frete-upsell {
    width: 740px;
}
body.page-basket .wd-checkout-basket .wrapper-bottom-basket {
    margin-top: -120px;
}

.wd-marketing-banner.slider .banner-wrapper a {
    display: block;
}
.footer-nav ul > li.titulo + li + li.titulo {
    margin-top: 20px;
}

.full-banner .wd-marketing-banner .nav-control {
    display: block; 
}
.full-banner .wd-marketing-banner .nav-control a {
    width: 50px;
    height: 50px;
    background-color: transparent;
    background-size: contain;
    top: calc(50% - 25px);
}
.full-banner .wd-marketing-banner .nav-control a.previous {
    background-image: url('data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz48IURPQ1RZUEUgc3ZnIFBVQkxJQyAiLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4iICJodHRwOi8vd3d3LnczLm9yZy9HcmFwaGljcy9TVkcvMS4xL0RURC9zdmcxMS5kdGQiPjxzdmcgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgeD0iMHB4IiB5PSIwcHgiIHdpZHRoPSI1NXB4IiBoZWlnaHQ9IjU1cHgiIHZpZXdCb3g9IjQ3Mi41IDQ3Mi41IDU1IDU1IiBlbmFibGUtYmFja2dyb3VuZD0ibmV3IDQ3Mi41IDQ3Mi41IDU1IDU1IiB4bWw6c3BhY2U9InByZXNlcnZlIj48cGF0aCBmaWxsPSIjMDUwNTA1IiBzdHJva2U9IiMwMDAwMDAiIHN0cm9rZS1taXRlcmxpbWl0PSIxMCIgZD0iTTUwMCw1MjYuNWMxNC42MzYsMCwyNi41LTExLjg2NCwyNi41LTI2LjVzLTExLjg2NC0yNi41LTI2LjUtMjYuNXMtMjYuNSwxMS44NjQtMjYuNSwyNi41UzQ4NS4zNjQsNTI2LjUsNTAwLDUyNi41eiBNNDg4LjczLDQ5OC42bDE2LjE1Mi0xNi4xNTFjMC4zNzMtMC4zNzQsMC44NzEtMC41NzksMS40MDMtMC41NzljMC41MzEsMCwxLjAyOSwwLjIwNiwxLjQwMywwLjU3OWwxLjE4OCwxLjE4OGMwLjM3MywwLjM3NCwwLjU3OSwwLjg3MiwwLjU3OSwxLjQwM2MwLDAuNTMxLTAuMjA2LDEuMDI5LTAuNTc5LDEuNDAybC0xMy41NjUsMTMuNTY1bDEzLjU1LDEzLjU1YzAuNzczLDAuNzczLDAuNzczLDIuMDMxLDAsMi44MDVsLTEuMTg4LDEuMTg4Yy0wLjM3MywwLjM3My0wLjg3MSwwLjU3OS0xLjQwMywwLjU3OWMtMC41MzEsMC0xLjAyOS0wLjIwNi0xLjQwMy0wLjU3OWwtMTYuMTM3LTE2LjEzNmMtMC4zNzQtMC4zNzQtMC41OC0wLjg3NC0wLjU3OC0xLjQwOEM0ODguMTUsNDk5LjQ3NSw0ODguMzU2LDQ5OC45NzUsNDg4LjczLDQ5OC42eiIvPjwvc3ZnPg==');
}
.full-banner .wd-marketing-banner .nav-control a.next {
    background-image: url('data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz48IURPQ1RZUEUgc3ZnIFBVQkxJQyAiLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4iICJodHRwOi8vd3d3LnczLm9yZy9HcmFwaGljcy9TVkcvMS4xL0RURC9zdmcxMS5kdGQiPjxzdmcgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgeD0iMHB4IiB5PSIwcHgiIHdpZHRoPSI1NXB4IiBoZWlnaHQ9IjU1cHgiIHZpZXdCb3g9IjQ3Mi41IDQ3Mi41IDU1IDU1IiBlbmFibGUtYmFja2dyb3VuZD0ibmV3IDQ3Mi41IDQ3Mi41IDU1IDU1IiB4bWw6c3BhY2U9InByZXNlcnZlIj48cGF0aCBmaWxsPSIjMDUwNTA1IiBzdHJva2U9IiMwMDAwMDAiIHN0cm9rZS1taXRlcmxpbWl0PSIxMCIgZD0iTTUwMCw0NzMuNWMtMTQuNjM2LDAtMjYuNSwxMS44NjQtMjYuNSwyNi41czExLjg2NCwyNi41LDI2LjUsMjYuNXMyNi41LTExLjg2NCwyNi41LTI2LjVTNTE0LjYzNiw0NzMuNSw1MDAsNDczLjV6IE01MTEuMjcsNTAxLjRsLTE2LjE1MiwxNi4xNTFjLTAuMzczLDAuMzczLTAuODcxLDAuNTc5LTEuNDAzLDAuNTc5Yy0wLjUzMSwwLTEuMDI5LTAuMjA2LTEuNDAzLTAuNTc5bC0xLjE4OC0xLjE4OGMtMC4zNzMtMC4zNzQtMC41NzktMC44NzItMC41NzktMS40MDNjMC0wLjUzMSwwLjIwNi0xLjAyOSwwLjU3OS0xLjQwMmwxMy41NjUtMTMuNTY1bC0xMy41NS0xMy41NWMtMC43NzMtMC43NzMtMC43NzMtMi4wMzEsMC0yLjgwNWwxLjE4OC0xLjE4OGMwLjM3My0wLjM3NCwwLjg3MS0wLjU3OSwxLjQwMy0wLjU3OWMwLjUzMSwwLDEuMDI5LDAuMjA2LDEuNDAzLDAuNTc5bDE2LjEzNywxNi4xMzZjMC4zNzQsMC4zNzQsMC41OCwwLjg3NCwwLjU3OCwxLjQwOEM1MTEuODUsNTAwLjUyNSw1MTEuNjQ0LDUwMS4wMjUsNTExLjI3LDUwMS40eiIvPjwvc3ZnPg==');
}
.full-banner .wd-marketing-banner .nav-control a:hover {
    -ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=50)"; 
    filter: alpha(opacity=50);
    opacity: 0.5;
}


body[class*="context-product-"] .info {
    font-size: 12px;
}





#content-wrapper .social-bar i:before {
    content: '';
}

.yv-testimonial[data-qty="9"] {
    display: none !important;
}






.wd-checkout-ordertracking .wd-content ul.pedido-em-preparacao {}
.wd-checkout-ordertracking .wd-content ul.pedido-em-preparacao > .status-2 .progress:after {
	width: 100%;
}
.wd-checkout-ordertracking .wd-content ul.pedido-em-preparacao > .status-2 small {
	font-size: 0px !important;
}
.wd-checkout-ordertracking .wd-content ul.pedido-em-preparacao > .status-2 small:before {
	content: "Completo";
	font-size: 10px !important;
}
.wd-checkout-ordertracking .wd-content ul.pedido-em-preparacao > .status-3 .progress:after {
	content: '';
    background: #00ACBF;
    height: 10px;
    display: block;
} 
.wd-checkout-ordertracking .wd-content ul.pedido-em-preparacao > .status-3 .progress:before {
    content: 'Em andamento';
    display: block;
    font-size: 10px;
    position: absolute;
    bottom: 10px;
    text-align: center;
    width: 100%;
}





/* ### MODAL LISTA DE DESEJOS ### */
body.open-modal-wishlist,
body.show-form-add-wishlist {}
body.open-modal-wishlist .the-modal,
body.show-form-add-wishlist .the-modal {
    max-width: 500px;
}
body.open-modal-wishlist .the-modal .the-modal-container,
body.show-form-add-wishlist .the-modal .the-modal-container {
    padding: 30px;
}
body.open-modal-wishlist .the-modal .the-modal-container .button-wrapper a,
body.show-form-add-wishlist .the-modal .the-modal-container .button-wrapper a {
    background: #000;
    color: #FFF;
    border-radius: 100px;
    margin-top: 20px;
}






/*File:~/custom/content/themes/Salon2020DESK/Styles/carrinhov2.css*/
@import url('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css');


body.page-basket header {
  margin-bottom: 0;
}
body.page-basket #content-wrapper > .wrapper {
  padding: 50px 0;
}


.wd-checkout-basket-grid table {
  background: none;
  border-radius: 0 !Important;
}

body.page-basket .wd-checkout-basket .wd-checkout-basket-grid {
  width: calc(100% - 400px);
  display: inline-block;
  vertical-align: top;
  margin-right: 40px;
  position: relative;
}
body.page-basket .wd-checkout-basket .wrapper-bottom-basket {
  width: 350px;
  display: inline-block;
  vertical-align: top;
      padding: 20px;
    background: #FFF;
    border-radius: 10px;
}
body.page-basket .wd-checkout-basket .wrapper-bottom-basket .wd-checkout-basket-buttons {
  min-height: 1px;
  margin: 0;
  text-align: center;
}
body.page-basket .wd-checkout-basket .wrapper-bottom-basket .button-acima .wd-checkout-basket-buttons .bt-keep-buying,
body.page-basket .wd-checkout-basket .wrapper-bottom-basket .button-acima .wd-checkout-basket-buttons .wd-checkout-basket-oneclickbuy,
body.page-basket .wd-checkout-basket .wrapper-bottom-basket .button-abaixo .wd-checkout-basket-buttons .bt-keep-buying,
body.page-basket .wd-checkout-basket .wrapper-bottom-basket .button-abaixo .wd-checkout-basket-buttons .wd-checkout-basket-oneclickbuy {
  display: none;
}
body.page-basket .wd-checkout-basket .wrapper-bottom-basket .button-acima .wd-checkout-basket-buttons .bt-checkout,
body.page-basket .wd-checkout-basket .wrapper-bottom-basket .button-abaixo .wd-checkout-basket-buttons .bt-checkout {
  background: #6ebf55;
  border: 0;
  border-radius: 50px;
  font-size: 14px;
  text-transform: uppercase;
  color: #FFF;
  display: block;
    width: 100%;
    text-align: center;
    height: 45px;
    line-height: 45px;
    margin: 0;
}

body.page-basket .wd-checkout-basket .wrapper-bottom-basket .button-meio {
  clear: both;
}
body.page-basket .wd-checkout-basket .wrapper-bottom-basket .button-acima {
  margin-bottom: 20px;
}
body.page-basket .wd-checkout-basket .wrapper-bottom-basket .button-meio .wd-checkout-basket-buttons .bt-checkout,
body.page-basket .wd-checkout-basket .wrapper-bottom-basket .button-meio .wd-checkout-basket-buttons .wd-checkout-basket-oneclickbuy {
  display: none;
}

body.page-basket .wd-checkout-basket .wrapper-bottom-basket .button-meio .wd-checkout-basket-buttons .bt-keep-buying {
background: #FFF;
  border: 1px solid #414141;
  border-radius: 5px;
  font-size: 13px;
  color: #414141;
  display: block;
    width: 100%;
    text-align: center;
    height: 25px;
    line-height: 25px;
        margin: 20px 0;
}

body.page-basket .wd-checkout-basket .wrapper-bottom-basket .desconto .btn-add-discount,
body.page-basket .wd-checkout-basket .wrapper-bottom-basket .frete .calcular-frete label {
  display: block;
}
body.page-basket .wd-checkout-basket .wrapper-bottom-basket .desconto .content {
  display: none;
}

body.page-basket .wd-checkout-basket .wrapper-bottom-basket h4 {
  text-transform: uppercase;
  font-size: 14px;
  padding: 0 0 10px 0;
  margin: 0;
  font-weight: 700;
}

body.page-basket .wd-checkout-basket-deliveryoptions {
  padding: 0;
}
.calcular-frete {
  width: 100%;
  display: block;
}
.calcular-frete label {
    display: block;
    width: 100%;
    text-align: left;
    border-bottom: 1px solid #CCC;
    margin-bottom: 10px;
    padding: 5px 0;
    border-radius: 0;
    text-transform: uppercase;
    font-size: 11px;
}
.frete .wd-checkout-basket-deliveryoptions .description #DeliveryPostalCode {
  padding: 0 20px;
  width: 220px;
}
.frete .wd-checkout-basket-deliveryoptions .description button {
  background: #FFF;
  border: 1px solid #CCC; 
  color: #000;
      font-size: 12px;
    text-transform: capitalize !important;
    font-weight: 100;
}
.frete .wd-checkout-basket-deliveryoptions .description .valor-frete {
  padding: 0;
}
.frete .wd-checkout-basket-deliveryoptions .description .valor-frete label,
.frete .wd-checkout-basket-deliveryoptions .description .valor-frete span {
  display: inline-block;
}

.frete .wd-checkout-basket-deliveryoptions .description .valor-frete span {
  float: right;
}
.discounts .wd-checkout-basket-discount,
.desconto .wd-checkout-basket-discount {
  min-height: 1px;
  padding: 0;
  margin: 0;
}
.wd-checkout-basket-discount .description {
  height: 64px;
}

.btn-add-discount {
  display: block;
      width: 100%;
    text-align: left;
    border-bottom: 1px solid #CCC;
    margin-bottom: 10px;
    padding: 5px 0;
    border-radius: 0;
    text-transform: uppercase;
    font-size: 11px;
}
  
body.page-basket .wd-checkout-basket .wrapper-bottom-basket .total {
      padding: 10px 0 0 0;
    background: none;
    text-align: left;
    margin: 10px 0 0 0;
    border-top: 1px solid #CCC;
    border-radius: 0;
}

body.page-basket .wd-checkout-basket .total span:last-of-type {
  width: 100%;
  text-align: left;
}













  .page-basket .wd-checkout-basket-grid .grid {
    border: 0; }
    /* line 430, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wd-checkout-basket-grid .grid table th {
      text-transform: none;
      font-family: "Quicksand", sans-serif !important;
      font-weight: 600;
      color: #232323;
      border-bottom: 1px solid #f4f4f4;
      padding-bottom: 20px !important;
      font-size: 11px;
      text-transform: uppercase; }
      /* line 439, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wd-checkout-basket-grid .grid table th.price,
    .page-basket .wd-checkout-basket-grid .grid table th.quantity {
        text-align: center !important;
        width: 80px; }
      /* line 445, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wd-checkout-basket-grid .grid table th.product {
        width: 300px;
        font-size: 18px;
        font-weight: 600;
    font-family: "Quicksand", sans-serif !important;
    }
      /* line 450, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wd-checkout-basket-grid .grid table th.aditional {
        width: 120px;
        text-align: center; }
    /* line 457, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wd-checkout-basket-grid .grid table tr {
      border-bottom: 1px solid #f4f4f4; }
      /* line 460, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wd-checkout-basket-grid .grid table tr.nested {
        background: 1px solid #f4f4f4; }
        /* line 463, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wd-checkout-basket-grid .grid table tr.nested td {
          font-size: 10px; }
        /* line 467, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wd-checkout-basket-grid .grid table tr.nested .product {
          padding-left: 25px !important;
          position: relative; }
          /* line 471, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wd-checkout-basket-grid .grid table tr.nested .product:before {
            background-color: #cc3300;
            padding: 3px 9px;
            content: 'Seu brinde';
            font-size: 10px;
            color: #ffffff;
            display: block;
            text-transform: uppercase;
            -ms-transform: rotate(-90deg);
            /* IE 9 */
            -webkit-transform: rotate(-90deg);
            /* Safari 3-8 */
            transform: rotate(-90deg);
            position: absolute;
            left: -30px;
            top: 30px; }
          /* line 489, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wd-checkout-basket-grid .grid table tr.nested .product .photo {
            border: 0;
            width: 50px !important;
            height: 50px !important;
            background-color: #ffffff; }
          /* line 495, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wd-checkout-basket-grid .grid table tr.nested .product .data a {
            color: #1e1e1e; }
        /* line 502, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wd-checkout-basket-grid .grid table tr.nested .price div,
        .page-basket .wd-checkout-basket-grid .grid table tr.nested .quantity div {
          color: #1e1e1e; }
        /* line 507, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wd-checkout-basket-grid .grid table tr.nested .actions {
          display: none; }
        /* line 511, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wd-checkout-basket-grid .grid table tr.nested .js-remove {
          display: none;
          font-size: 0; }
          /* line 515, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wd-checkout-basket-grid .grid table tr.nested .js-remove:before {
            display: block;
            font-size: 11px;
            color: #d7d7d7;
            content: "";
            display: inline-block;
            content: "ï€";
            font-family: "Font Awesome 5 Free";
            -moz-osx-font-smoothing: grayscale;
            -webkit-font-smoothing: antialiased;
            display: inline-block;
            font-style: normal;
            font-variant: normal;
            text-rendering: auto;
            line-height: 1;
            font-weight: bold; }
      /* line 525, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wd-checkout-basket-grid .grid table tr td {
        border-color: #ebebeb;
        vertical-align: middle; }
        /* line 529, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wd-checkout-basket-grid .grid table tr td .economize-carrinho {
          margin-top: 10px;
          background-color: #00b321;
          color: #fff;
          font-size: 11px;
          padding: 5px 0;
          display: block; }

.page-basket .wd-checkout-basket-grid .grid tbody tr {
  border-left: 10px solid #CCC;
}
.page-basket .wd-checkout-basket-grid .grid tbody tr:last-child {
  border-left: 10px solid #EBEBEB;
}

        .page-basket .wd-checkout-basket-grid .grid table tr td.product {
          min-width: 250px; 
    padding-left: 10px;
    }
        /* line 543, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wd-checkout-basket-grid .grid table tr td .wd-product-custom-metadata a {
          font-size: 12px;
          color: #232323;
          font-family: "Quicksand", sans-serif !important;
          font-weight: 400;
          line-height: 13px;
          display: block; }
        /* line 551, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wd-checkout-basket-grid .grid table tr td .wd-product-custom-metadata .remove-message {
          font-size: 10px;
          color: #EE2D43;
          font-family: "Quicksand", sans-serif !important;
          font-weight: 500; }
          /* line 556, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wd-checkout-basket-grid .grid table tr td .wd-product-custom-metadata .remove-message:before {
            font-size: 8px;
            content: "\f00d";
            font-family: "Font Awesome 5 Free";
            -moz-osx-font-smoothing: grayscale;
            -webkit-font-smoothing: antialiased;
            display: inline-block;
            font-style: normal;
            font-variant: normal;
            text-rendering: auto;
            line-height: 1;
            font-weight: bold;
            margin-right: 5px; }
        /* line 564, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wd-checkout-basket-grid .grid table tr td div {
          padding: 0; }
        /* line 569, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wd-checkout-basket-grid .grid table tr td.product .photo {
          width: 98px;
          height: 98px;
          float: none;
          border: 0;
          padding: 5px;
          display: table-cell; }
          /* line 576, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wd-checkout-basket-grid .grid table tr td.product .photo img {
            border: 0;
            width: auto !important;
            height: 100% !important;
            max-height: 100% !important;
            max-width: 100% !important; }
        /* line 584, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wd-checkout-basket-grid .grid table tr td.product .data {
          display: table-cell;
          vertical-align: middle;
          float: none;
          padding-left: 20px; }
          /* line 590, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wd-checkout-basket-grid .grid table tr td.product .data a {
            color: #232323;
            font-size: 12px;
            letter-spacing: 0.6px; }
            /* line 595, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
            .page-basket .wd-checkout-basket-grid .grid table tr td.product .data a strong {
              font-family: "Quicksand", sans-serif !important;
              font-weight: 400;
              text-transform: none; }
          /* line 602, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wd-checkout-basket-grid .grid table tr td.product .data .skuoptions .skuoptions-option {
            color: #232323;
            font-size: 11px;
            font-family: "Quicksand", sans-serif !important;
            font-weight: 400; }
          /* line 609, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wd-checkout-basket-grid .grid table tr td.product .data .warning, .page-basket .wd-checkout-basket-grid .grid table tr td.product .grid-informations .item .data .warning, .page-basket .wd-checkout-basket-grid .grid .grid-informations .item table tr td.product .data .warning {
            font-size: 10px;
            display: block;
            color: #856404;
            background-color: #fff3cd;
            border-color: #ffeeba;
            font-size: 11px;
            padding: 5px;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            border-radius: 3px; }
        /* line 623, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wd-checkout-basket-grid .grid table tr td.price div {
          padding: 0;
          color: #232323;
          font-family: "Quicksand", sans-serif !important;
          font-weight: 400;
          display: block;
          font-size: 13px;
          line-height: 1;
          white-space: nowrap; }
        /* line 635, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wd-checkout-basket-grid .grid table tr td.quantity .change {
          width: 58px;
      margin-bottom: 0;
    }
        /* line 639, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wd-checkout-basket-grid .grid table tr td.quantity input {
          width: 36px;
          height: 36px;
          border-color: #000;
          float: left;
          margin: 0;
          color: #000;
          border-right: 0;
          -webkit-border-radius: 3px 0 0 3px;
          -moz-border-radius: 3px 0 0 3px;
          -ms-border-radius: 3px 0 0 3px;
          border-radius: 3px 0 0 3px; }
        /* line 649, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wd-checkout-basket-grid .grid table tr td.quantity .btn {
          display: block;
          float: left;
          padding: 0;
          border: 1px solid #000;
          color: #000;
          background-color: transparent;
          width: 22px;
          height: 19px;
          line-height: 12px;
          display: block; }
          /* line 659, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wd-checkout-basket-grid .grid table tr td.quantity .btn.js-qty-more {
            
            /*background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAASCAYAAABb0P4QAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEgAACxIB0t1+/AAAABx0RVh0U29mdHdhcmUAQWRvYmUgRmlyZXdvcmtzIENTNui8sowAAAAWdEVYdENyZWF0aW9uIFRpbWUAMDUvMDUvMjBJDVp3AAAAhElEQVQ4jd1TwQmAMAy8igt0BXdyBW8EV9ARzhVcwVlcpX4qKtTaQlHwPgkkXJJLYpxzKImqKNt/CElakjYlt04sPOzcT4nFRzaxsyHZeLf3dgQASWs2IckOgO5qSZpCgZiGCw7NWm/nUyyvw0s7pABA0vtLST2boF4hJI2cg5/88qeEG7+HJAtGilOAAAAAAElFTkSuQmCC');
      background-position: center;
            background-size: contain;
            background-repeat: no-repeat;*/
        background-color: #FFF;
            
            }
      .page-basket .wd-checkout-basket-grid .grid table tr td {
        border: 0;
      }

      .page-basket .wd-checkout-basket-grid .grid table tr td.quantity .btn.js-qty-less {
            
            /*background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAASCAYAAABb0P4QAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEgAACxIB0t1+/AAAABx0RVh0U29mdHdhcmUAQWRvYmUgRmlyZXdvcmtzIENTNui8sowAAAAWdEVYdENyZWF0aW9uIFRpbWUAMDUvMDUvMjBJDVp3AAAATElEQVQ4jWP8//8/AzUBE1VNGzVwcBrIQkhBenq6EhL3/cyZM9/jU4/Xhenp6WkMDAx3kXAHpS7cw8DAkI7EP0vIQMbRnDJq4CAwEAD/3hHLUPOBGQAAAABJRU5ErkJggg==');
      background-position: 0 2px;
            background-size: contain;
            background-repeat: no-repeat;*/
        background-color: #FFF;
            
          }
          .page-basket .wd-checkout-basket-grid .grid table tr td.quantity .js-qty-more {
            top: 0;
          }
          .page-basket .wd-checkout-basket-grid .grid table tr td.quantity .js-qty-less {
            top: 17px;
          }

          .page-basket .wd-checkout-basket-grid .grid table tr td.quantity .btn i {
            
          }

.page-basket .wd-checkout-basket-grid .grid table tr td.quantity .js-qty-less i:before,
.page-basket .wd-checkout-basket-grid .grid table tr td.quantity .js-qty-more i:before {
  content: none;
}
.page-basket .wd-checkout-basket-grid .grid table tr td.quantity .js-qty-less i:after,
.page-basket .wd-checkout-basket-grid .grid table tr td.quantity .js-qty-more i:after {
      font-size: 19px;
    font-style: normal;
    line-height: 19px;
        font-weight: bold;
    padding: 0;
    margin: 0;
}
.page-basket .wd-checkout-basket-grid .grid table tr td.quantity .js-qty-less i:after {
  content: "-";
}
.page-basket .wd-checkout-basket-grid .grid table tr td.quantity .js-qty-more i:after {
  content: "+";
}


          /* line 663, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wd-checkout-basket-grid .grid table tr td.quantity .btn:hover {
            color: #EE2D43; }
        /* line 667, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wd-checkout-basket-grid .grid table tr td.quantity .js-qty-more {
          -webkit-border-radius: 0 3px 0 0;
          -moz-border-radius: 0 3px 0 0;
          -ms-border-radius: 0 3px 0 0;
          border-radius: 0 3px 0 0; }
        /* line 670, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wd-checkout-basket-grid .grid table tr td.quantity .js-qty-less {
          -webkit-border-radius: 0 0 3px 0;
          -moz-border-radius: 0 0 3px 0;
          -ms-border-radius: 0 0 3px 0;
          border-radius: 0 0 3px 0; }
        /* line 675, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wd-checkout-basket-grid .grid table tr td.subtotal {
          width: 100px; }
          /* line 678, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wd-checkout-basket-grid .grid table tr td.subtotal div {
            text-align: left;
            font-family: "Quicksand", sans-serif !important;
            font-weight: 700;
            font-size: 13px;
            color: #000; }
        /* line 686, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wd-checkout-basket-grid .grid table tr td.actions {
          padding: 0 !important; }
          /* line 689, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wd-checkout-basket-grid .grid table tr td.actions button.remove {
            display: block;
            border: 0;
            background-color: #ffffff;
            background-image: url('http://d1p7131b5295r8.cloudfront.net/custom/content/themes/CouroVestDesk/img/1579686549212-sprite.png');
            background-position: -361px -263px;
            width: 11px;
            height: 14px;
            background-repeat: no-repeat;
        margin: -7px 0 0 0;
      }
  /* line 702, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
  .page-basket .wd-checkout-basket-grid .grid .grid-title {
    background-color: #ebebeb; }
    /* line 705, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wd-checkout-basket-grid .grid .grid-title li {
      font-weight: bold;
      padding: 5px 30px;
      text-align: center; }
      /* line 710, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wd-checkout-basket-grid .grid .grid-title li.product {
        text-align: left; }
      /* line 714, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wd-checkout-basket-grid .grid .grid-title li.subtotal {
        text-align: right; }
  /* line 721, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
  .page-basket .wd-checkout-basket-grid .grid .grid-informations .item {
    border-bottom: 1px solid #ebebeb;
    margin-bottom: 0; }
    /* line 725, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wd-checkout-basket-grid .grid .grid-informations .item li.product {
      padding: 0; }
    /* line 729, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wd-checkout-basket-grid .grid .grid-informations .item .photo {
      margin: 0; }
      /* line 732, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wd-checkout-basket-grid .grid .grid-informations .item .photo img {
        max-width: 100%;
        height: auto; }
    /* line 738, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wd-checkout-basket-grid .grid .grid-informations .item .data {
      display: inline-block;
      padding-left: 15px; }
      /* line 742, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wd-checkout-basket-grid .grid .grid-informations .item .data a {
        display: block;
        padding-bottom: 10px; }
      /* line 747, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wd-checkout-basket-grid .grid .grid-informations .item .data .warning {
        display: inline-block; }
    /* line 759, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wd-checkout-basket-grid .grid .grid-informations .item .price {
      text-align: center; }
      /* line 762, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wd-checkout-basket-grid .grid .grid-informations .item .price del {
        color: #cccccc;
        font-size: 0.8em; }
    /* line 768, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wd-checkout-basket-grid .grid .grid-informations .item .quantity {
      text-align: center; }
    /* line 776, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wd-checkout-basket-grid .grid .grid-informations .item .subtotal {
      text-align: right; }
  /* line 781, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
  .page-basket .wd-checkout-basket-grid .grid .grid-informations .nested-grid {
    padding: 0;
    margin: 0;
    border-bottom: 1px solid #ebebeb; }
    /* line 786, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wd-checkout-basket-grid .grid .grid-informations .nested-grid .nested {
      margin: 0;
      margin-left: 45px;
      max-width: -webkit-calc(100% - 45px);
      max-width: -moz-calc(100% - 45px);
      max-width: calc(100% - 45px);
      border-left: 1px solid #ebebeb;
      border-bottom: 0; }
      /* line 796, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wd-checkout-basket-grid .grid .grid-informations .nested-grid .nested:first-child::before {
        content: 'Itens do Kit';
        position: absolute;
        top: -19px;
        font-weight: bold; }
      /* line 804, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wd-checkout-basket-grid .grid .grid-informations .nested-grid .nested .product {
        padding-left: 45px; }
        /* line 807, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wd-checkout-basket-grid .grid .grid-informations .nested-grid .nested .product::before {
          content: '';
          width: 30px;
          height: 1px;
          background: #ebebeb;
          display: block;
          position: absolute;
          left: 0;
          top: 45px; }
      /* line 820, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wd-checkout-basket-grid .grid .grid-informations .nested-grid .nested .subtotal strong {
        display: none; }
  /* line 829, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
  .page-basket .wd-checkout-basket-grid .grid .grid-informations .bottom-grid .text-subtotal,
  .page-basket .wd-checkout-basket-grid .grid .grid-informations .bottom-grid .subtotal {
    text-align: right; }
    /* line 833, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wd-checkout-basket-grid .grid .grid-informations .bottom-grid .text-subtotal strong,
    .page-basket .wd-checkout-basket-grid .grid .grid-informations .bottom-grid .subtotal strong {
      font-size: 1.4em; }
  /* line 838, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
  .page-basket .wd-checkout-basket-grid .grid .grid-informations .bottom-grid .bt-clear-basket {
    padding: 10px 0; }


    /* line 1006, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
  .page-basket .wrapper-bottom-basket .button-abaixo .wd-checkout-basket-buttons .bt-keep-buying,
  .page-basket .wrapper-bottom-basket .button-acima .wd-checkout-basket-buttons .bt-keep-buying {
    display: none; }
  /* line 1010, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
  .page-basket .wrapper-bottom-basket .button-abaixo .wd-checkout-basket-buttons .bt-checkout,
  .page-basket .wrapper-bottom-basket .button-acima .wd-checkout-basket-buttons .bt-checkout {
    margin-bottom: 20px; }
  /* line 1017, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
  .page-basket .wrapper-bottom-basket .button-abaixo .bt-checkout {
    margin-bottom: 0 !important; }
  /* line 1024, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
  .page-basket .wrapper-bottom-basket .button-meio .wd-checkout-basket-buttons .bt-keep-buying {
    margin-bottom: 20px; }
  /* line 1028, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
  .page-basket .wrapper-bottom-basket .button-meio .wd-checkout-basket-buttons .bt-checkout {
    display: none; }
  /* line 1034, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
  .page-basket .wrapper-bottom-basket .contador {
    display: block;
    float: left;
    width: 100%;
    padding-bottom: 15px; }
    /* line 1040, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wrapper-bottom-basket .contador .coluna-1 {
      width: 116px;
      display: block;
      float: left;
      color: #232323;
      font-size: 12px;
      line-height: 14px;
      font-family: "Quicksand", sans-serif !important;
      font-weight: 500; }
      /* line 1049, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wrapper-bottom-basket .contador .coluna-1 b {
        color: #a9f530; }
      /* line 1052, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wrapper-bottom-basket .contador .coluna-1 strong, .page-basket .wrapper-bottom-basket .contador .coluna-1 b {
        font-family: "Quicksand", sans-serif !important;
        font-weight: 700; }
    /* line 1057, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wrapper-bottom-basket .contador .coluna-2 {
      width: 165px;
      display: block;
      float: right; }
      /* line 1063, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wrapper-bottom-basket .contador .coluna-2 #timer div {
        display: block;
        float: left;
        margin-right: 15px; }
      /* line 1069, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wrapper-bottom-basket .contador .coluna-2 #timer .segundo {
        margin-right: 0; }
      /* line 1073, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wrapper-bottom-basket .contador .coluna-2 #timer .numero {
        background-color: #232323;
        height: 30px;
        line-height: 30px;
        width: 30px;
        display: block;
        -moz-border-radius: 0;
        -webkit-border-radius: 0;
        border-radius: 0;
        font-size: 14px;
        color: #ffffff;
        text-align: center;
        font-family: "Quicksand", sans-serif !important;
        font-weight: 500; }
      /* line 1086, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wrapper-bottom-basket .contador .coluna-2 #timer .texto {
        display: block;
        margin-top: 5px;
        font-size: 7px;
        text-transform: uppercase;
        text-align: center;
        color: #1e1e1e;
        font-family: "Quicksand", sans-serif !important;
        font-weight: 400; }
  /* line 1099, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
  .page-basket .wrapper-bottom-basket h4 {
    color: #232323;
    text-transform: uppercase;
    font-family: "Quicksand", sans-serif !important;
    font-weight: 400;
    font-size: 14px;
    letter-spacing: 0.8px;
    margin: 0 0 20px;
    display: block;
    float: left;
    width: 100%; }

.page-basket .wrapper-bottom-basket .total-price {
  padding-left: 40px;
    position: relative;
    clear: both;
}
.page-basket .wrapper-bottom-basket .total-price:before {
    position: absolute;
    top: 50%;
    left: 0;
  margin-top: -12px;
}
.page-basket .wrapper-bottom-basket .total-price:after {
    content: '';
    display: block;
    clear: both;
}


  .page-basket .wrapper-bottom-basket .total-price:before {
    content: "";
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABwAAAAXCAYAAAAYyi9XAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEgAACxIB0t1+/AAAABx0RVh0U29mdHdhcmUAQWRvYmUgRmlyZXdvcmtzIENTNui8sowAAAAWdEVYdENyZWF0aW9uIFRpbWUAMDUvMDUvMjBJDVp3AAAAoklEQVRIie3WsQkCQRCF4Q/vklNRbMBK7MCGrMQO7MAO7MACBEVExMBITj3QwFk4LtdoB4Z9vJk3f7oFJuihQIkBHhihj2f4FV4tv4pufGsYu+PIl6GfcXMQ2htLLKL3cWAbsynmWHX81LPY2cQ85Wet/Drpnj9XBmZgBmZgBmZgBmbgD6rEDlfcwjvEe/T9aTW449LxU9Wxc+rk67jd4Jz0B6C4KZt0k211AAAAAElFTkSuQmCC');
  width: 28px;
  height: 23px;
    float: left;
    padding-right: 7px; }
  /* line 1120, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
  .page-basket .wrapper-bottom-basket .total-price:not(.alternative) span {
    font-size: 13px;
    color: #000;
    font-weight: bold;
    line-height: 0.7;
    position: relative;
    top: 3px; }
    /* line 1128, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wrapper-bottom-basket .total-price:not(.alternative) span b {
      font-size: 12px;
      color: #333333;
      line-height: 1.2;
      font-weight: normal;
      display: block; }
  /* line 1139, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
  .page-basket .wrapper-bottom-basket .total-price.alternatives:before {
    content: "";
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACIAAAAXCAYAAABu8J3cAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEgAACxIB0t1+/AAAABx0RVh0U29mdHdhcmUAQWRvYmUgRmlyZXdvcmtzIENTNui8sowAAAAWdEVYdENyZWF0aW9uIFRpbWUAMDUvMDUvMjBJDVp3AAABeUlEQVRIie3WMWgUQRSA4W/POwshxk7tPFPHKs1VIhKIWCoEUgl2aiCpRGIECQZSGews7CIWdiKIEZIUKhgEwUJII6gE0cKkMEVyyKWYPbNJ7tgBdbfxh2VnlmHez8x7O5PYoYajOOjf08Q3bGU/JriONbQKfH5iGgeginHcwV0spLZF0MDNVGoCPuJ+QcH3MoN1VCo4gdclibxCL3oSYWnK5kg1bTzAcgkC/bjW7rQwUoIEnE/j91ZKEthHO0e+C3VdNIdwTCZH3uBDCSJ9uNju/M+RLNX8IX9EglEMCYfqJ0zia4zIAOo5AVbwPkJkGLN4IhTDEI4LW7KPvTmyKP/kfBwhAffsLoIx/Mj0f+dIpxU5Exkkll9d2rvoJHIVp3ImX8KjCIllXMEcNnAOb2NF6jiZE+BzhAQ8FG59g+l7Hre6DW7icuTEf5sLQo4chnd4JpRa0czhC2FrbuApXuI5NgsQqOE0zuISO6vQwG3h318Uq5jCC9gGXbRosbe3P7MAAAAASUVORK5CYII=');
  width: 34px;
  height: 23px;
  }
  /* line 1143, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
  .page-basket .wrapper-bottom-basket .total-price.alternatives .alterantive-total {
    font-size: 13px;
    color: #000;
    font-weight: bold;
    line-height: 1.2; }
  /* line 1149, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
  .page-basket .wrapper-bottom-basket .total-price.alternatives span {
    font-size: 12px;
    color: #333333;
    line-height: 1.2;
    font-weight: normal;
    display: block; }
  /* line 1158, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
  .page-basket .wrapper-bottom-basket .frete,
  .page-basket .wrapper-bottom-basket .column2 {
    display: block;
    float: left;
    width: 100%; }
  /* line 1165, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
  .page-basket .wrapper-bottom-basket .frete {
    border: 0;
    padding: 0;
    margin-bottom: 0px; }
    /* line 1170, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions {
      padding: 0;
      margin: 0;
      border: 0;
      background-color: transparent;
      min-height: 1px;
       }
      /* line 1176, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions label,
      .page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions span {
        width: auto; }
      /* line 1182, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions .btn-calculate-delivery {
        border: 0;
        background-color: #000;
        text-align: left;
        padding: 10px 20px;
            border-radius: 30px;
        width: 100%;
        color: #FFF;
        font-family: "Quicksand", sans-serif !important;
        text-transform: uppercase;
        font-size: 12px;
        font-weight: bold;
          box-shadow: none;
          position: relative;
          margin: 0;
          float: none;
        cursor: pointer;
        }

.page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions .btn-calculate-delivery:after {
    content: "";
    display: inline-block;
    content: "";
    text-rendering: auto;
    line-height: 1;
    color: #232323;
    float: right;
    line-height: 38px;
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAFCAYAAAB8ZH1oAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAK6wAACusBgosNWgAAABx0RVh0U29mdHdhcmUAQWRvYmUgRmlyZXdvcmtzIENTNui8sowAAAAWdEVYdENyZWF0aW9uIFRpbWUAMDUvMDUvMjBJDVp3AAAAUklEQVQImXXOPQ5AQABE4a220FBxBLWeA3BJUftpFNzu05BshCnfvEkmYEMdfoIaa0CJE82H1OBA9YAcO7pEam9WvNcZZgzosSD7+xMxYkJMuwvpfFai/RoVXQAAAABJRU5ErkJggg==');
    width: 10px;
    height: 38px;
    background-repeat: no-repeat;
    background-position: center;
        position: absolute;
    right: 20px;
    top: 0;
}
.page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions.openContent .btn-calculate-delivery:after {
  background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAFCAYAAAB8ZH1oAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAK6wAACusBgosNWgAAABx0RVh0U29mdHdhcmUAQWRvYmUgRmlyZXdvcmtzIENTNui8sowAAAAWdEVYdENyZWF0aW9uIFRpbWUAMDUvMDUvMjBJDVp3AAAAX0lEQVQImV3OsQqCcACE8ZsKaogmewJptDnaxZcUXMuWhny7n4P+QRxu+e7juCBIkuCAHgOOK1v6jXTCGx1afHAucpEu+OFVFvBc2bVIFSY8djeCBn/cgi/u2z+71BhnZeeGdW6swHQAAAAASUVORK5CYII=');
}

.page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions .content {
  clear: both;
  display: none;
  transition: .5s all;
  padding: 10px 0 0 0;
  margin-top: 10px;
  border-top: 1px solid #cacaca;
}
.page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions.openContent .content {
  clear: both;
  display: block;
}
        
          

        /* line 1223, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions .content .description {
          padding: 0; }
        /* line 1227, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions .content .types {
          float: left;
          font-size: 11px;
          background-color: transparent;
          margin-top: 20px;
          background-color: #fff;
          border: 0;
          margin-bottom: 30px;
          width: 100%;
          -webkit-box-sizing: border-box;
          -moz-box-sizing: border-box;
          box-sizing: border-box; }
          /* line 1238, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions .content .types .error-message {
            white-space: normal; }
          /* line 1243, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions .content .types ul li {
            margin: 0;
            border-bottom: 1px solid #f4f4f4; }
          /* line 1249, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions .content .types .location {
            background-color: #fff;
            border: 0;
            padding: 20px 10px;
            border-bottom: 1px solid #f4f4f4; }
            /* line 1255, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
            .page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions .content .types .location strong {
              font-family: "Quicksand", sans-serif !important;
              font-weight: 700;
              text-transform: uppercase;
              color: #232323;
              font-size: 12px; }
          /* line 1263, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions .content .types .photo {
            min-width: 50px;
            max-width: 50px;
            position: relative;
            top: 10px; }
          /* line 1270, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions .content .types input[type=radio] {
            top: -5px; }
          /* line 1274, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions .content .types p {
            color: #232323;
            font-family: "Quicksand", sans-serif !important;
            font-weight: 400;
            font-size: 12px;
            width: 65%; }
            /* line 1280, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
            .page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions .content .types p b {
              color: #232323;
              text-transform: uppercase;
              font-family: "Quicksand", sans-serif !important;
              font-weight: 700;
              font-size: 13px; }
        /* line 1289, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions .content .input-group {
          overflow: hidden; }
          /* line 1292, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions .content .input-group input {
            margin: 0;
            width: 220px;
            display: block;
            float: left;
            height: 32px;
            color: #1e1e1e;
            font-style: italic;
            font-family: "Quicksand", sans-serif !important;
            font-weight: 500;
            border: 1px solid #b7b7b7;
            line-height: 32px;
            -webkit-border-radius: 25px !important;
            -moz-border-radius: 25px !important;
            -ms-border-radius: 25px !important;
            border-radius: 25px !important; }
            /* line 205, Core/Projetos/courovestsport.com.br/src/scss/_mixins.scss */
            .page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions .content .input-group input:placeholder {
              color: #cacaca; }
            /* line 208, Core/Projetos/courovestsport.com.br/src/scss/_mixins.scss */
            .page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions .content .input-group input::-webkit-input-placeholder {
              /* Chrome/Opera/Safari */
              color: #cacaca;
              opacity: 1; }
            /* line 212, Core/Projetos/courovestsport.com.br/src/scss/_mixins.scss */
            .page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions .content .input-group input::-moz-placeholder {
              /* Firefox 19+ */
              color: #cacaca;
              opacity: 1; }
            /* line 216, Core/Projetos/courovestsport.com.br/src/scss/_mixins.scss */
            .page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions .content .input-group input:-ms-input-placeholder {
              /* IE 10+ */
              color: #cacaca;
              opacity: 1; }
            /* line 220, Core/Projetos/courovestsport.com.br/src/scss/_mixins.scss */
            .page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions .content .input-group input:-moz-placeholder {
              /* Firefox 18- */
              color: #cacaca;
              opacity: 1; }
          /* line 1307, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions .content .input-group button {
            margin: 0;
            width: 82px;
            background-color: #ffffff;
            color: #000000;
            border: 1px solid #000000;
            height: 32px;
            line-height: 32px;
            padding: 0;
            display: block;
            font-family: "Quicksand", sans-serif !important;
            font-weight: 400;
            font-size: 13px;
            float: right;
            -webkit-border-radius: 20px !important;
            -moz-border-radius: 20px !important;
            -ms-border-radius: 20px !important;
            border-radius: 20px !important; }
            /* line 1322, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
            .page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions .content .input-group button:hover {
              background-color: #000000;
              border-color: #000000;
              color: #ffffff; }
          /* line 1329, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions .content .input-group .buscaCepCorreios {
            text-decoration: underline;
            color: #232323;
            font-size: 11px;
            font-family: "Quicksand", sans-serif !important;
            font-weight: 400;
            display: block !important;
            float: left;
            clear: both;
            width: 100%;
            padding: 10px 0; }
      /* line 1343, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wrapper-bottom-basket .frete .wd-checkout-basket-deliveryoptions #deliveryoptions-visible {
        display: none; }
      /* line 1347, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */

  /* line 1355, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
  .page-basket .wrapper-bottom-basket .wd-checkout-basket-discount {
    padding: 0;
    border: 0;
    background: none; }
    /* line 1360, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wrapper-bottom-basket .wd-checkout-basket-discount label {
      font-size: 12px;
      font-family: "Quicksand", sans-serif !important;
      font-weight: 700; }
    /* line 1365, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wrapper-bottom-basket .wd-checkout-basket-discount input[type=radio] {
      top: -5px; }
    /* line 1369, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wrapper-bottom-basket .wd-checkout-basket-discount input {
      margin: 0;
      width: 60%;
      display: block;
      float: left;
      height: 32px;
      border-color: #ebebeb;
      line-height: 32px;
      -webkit-border-radius: 0 !important;
      -moz-border-radius: 0 !important;
      -ms-border-radius: 0 !important;
      border-radius: 0 !important; }
    /* line 1380, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wrapper-bottom-basket .wd-checkout-basket-discount button {
      margin: 0;
      width: 38%;
      background-color: #232323;
      color: #ffffff;
      border-color: #232323;
      height: 32px;
      line-height: 32px;
      padding: 0;
      display: block;
      float: left;
      text-transform: uppercase;
      margin-left: 10px;
      letter-spacing: 1px;
      font-family: "Quicksand", sans-serif !important;
      font-weight: 400;
      -webkit-border-radius: 0 !important;
      -moz-border-radius: 0 !important;
      -ms-border-radius: 0 !important;
      border-radius: 0 !important; }
    /* line 1398, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wrapper-bottom-basket .wd-checkout-basket-discount .js-coupon-remove {
      background: none !important;
      border: 0;
      color: #000 !important;
      font-size: 0;
      width: auto !important; }
      /* line 1405, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wrapper-bottom-basket .wd-checkout-basket-discount .js-coupon-remove i {
        font-size: 12px; }
  /* line 1411, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
  .page-basket .wrapper-bottom-basket h2 {
    font-size: 20px;
    color: #232323;
    font-family: "Quicksand", sans-serif !important;
    font-weight: 700;
    text-transform: uppercase;
    padding: 12px 0;
    margin: 0; }
  /* line 1422, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
  .page-basket .wrapper-bottom-basket #carrinho-desconto .subtotal,
  .page-basket .wrapper-bottom-basket #carrinho-desconto .valor-frete {
    display: block;
    height: 13px;
    line-height: 13px;
    padding: 5px 0;
    margin: 0; }
    /* line 1430, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wrapper-bottom-basket #carrinho-desconto .subtotal label,
    .page-basket .wrapper-bottom-basket #carrinho-desconto .valor-frete label {
      color: #232323;
      font-size: 13px;
      font-family: "Quicksand", sans-serif !important;
      font-weight: 500; }
    /* line 1436, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wrapper-bottom-basket #carrinho-desconto .subtotal span,
    .page-basket .wrapper-bottom-basket #carrinho-desconto .valor-frete span {
      float: right;
      color: #232323;
      font-size: 13px;
      font-family: "Quicksand", sans-serif !important;
      font-weight: 500; }
  /* line 1444, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
  .page-basket .wrapper-bottom-basket #carrinho-desconto .discounts {
    display: block;
    height: 13px;
    line-height: 13px;
    padding: 10px 0 5px;
    margin: 0; }
    /* line 1451, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wrapper-bottom-basket #carrinho-desconto .discounts label {
      color: #232323;
      font-size: 13px;
      font-family: "Quicksand", sans-serif !important;
      font-weight: 500; }
    /* line 1457, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wrapper-bottom-basket #carrinho-desconto .discounts span {
      float: right;
      color: #232323;
      font-size: 13px;
      font-family: "Quicksand", sans-serif !important;
      font-weight: 500; }
    /* line 1464, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wrapper-bottom-basket #carrinho-desconto .discounts .list {
      display: block;
      float: right; }
      /* line 1469, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wrapper-bottom-basket #carrinho-desconto .discounts .list .wd-checkout-basket-discount .item {
        font-family: "Quicksand", sans-serif !important;
        font-weight: 700;
        color: #232323;
        font-size: 12px; }
        /* line 1475, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wrapper-bottom-basket #carrinho-desconto .discounts .list .wd-checkout-basket-discount .item span small {
          display: none; }

    /* line 1493, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wrapper-bottom-basket .total label {
      color: #232323;
      font-size: 13px;
      float: left;
      font-family: "Quicksand", sans-serif !important;
      font-weight: 400;
      display: block;
      clear: both;
      width: 100%;
      text-transform: uppercase;
      margin-bottom: 35px; }
    /* line 1505, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wrapper-bottom-basket .total span {
      color: #000000;
      font-size: 25px;
      float: left;
      text-align: left;
      font-family: "Quicksand", sans-serif !important;
      font-weight: 700;
      margin-bottom: 10px; }
      /* line 1512, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wrapper-bottom-basket .total span b {
        font-size: 12px;
        color: #232323;
        font-family: "Quicksand", sans-serif !important;
        font-weight: 500;
        display: inline-block;
        margin-top: 3px; }
    /* line 1521, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wrapper-bottom-basket .total .alternatives {
      display: block;
      float: left;
      width: 100%;
      margin-top: 3px; }
      /* line 1527, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wrapper-bottom-basket .total .alternatives span {
        font-size: 12px;
        color: #232323;
        font-family: "Quicksand", sans-serif !important;
        font-weight: 500;
        text-align: right; }
        /* line 1533, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wrapper-bottom-basket .total .alternatives span strong {
          font-family: "Quicksand", sans-serif !important;
          font-weight: 500; }
        /* line 1537, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wrapper-bottom-basket .total .alternatives span .parcels,
        .page-basket .wrapper-bottom-basket .total .alternatives span .parcel-value {
          font-family: "Quicksand", sans-serif !important;
          color: #515151; }
        /* line 1543, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wrapper-bottom-basket .total .alternatives span .boleto-total {
          font-family: "Quicksand", sans-serif !important;
          font-weight: 700; }
  /* line 1551, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
  .page-basket .wrapper-bottom-basket .desconto .wd-checkout-basket-discount {
    display: block;
    background: transparent;
    border: 0;
    padding: 0;
    margin-top: 20px; }
    /* line 1558, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wrapper-bottom-basket .desconto .wd-checkout-basket-discount .btn-add-discount {
      border: 0;
      background-color: #000;
      text-align: left;
      padding: 0 20px;
      width: 100%;
      color: #FFF;
      font-family: "Quicksand", sans-serif !important;
      font-weight: 500;
      text-transform: uppercase;
      font-size: 12px;
      line-height: 38px;
      letter-spacing: 0.6px; 
        border-radius: 30px;
        font-weight: bold;
        cursor: pointer;
      }
      /* line 1573, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wrapper-bottom-basket .desconto .wd-checkout-basket-discount .btn-add-discount:after {
        content: "";
        display: inline-block;
        text-rendering: auto;
        line-height: 1;
        color: #232323;
        float: right;
        line-height: 38px; 
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAFCAYAAAB8ZH1oAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAK6wAACusBgosNWgAAABx0RVh0U29mdHdhcmUAQWRvYmUgRmlyZXdvcmtzIENTNui8sowAAAAWdEVYdENyZWF0aW9uIFRpbWUAMDUvMDUvMjBJDVp3AAAAUklEQVQImXXOPQ5AQABE4a220FBxBLWeA3BJUftpFNzu05BshCnfvEkmYEMdfoIaa0CJE82H1OBA9YAcO7pEam9WvNcZZgzosSD7+xMxYkJMuwvpfFai/RoVXQAAAABJRU5ErkJggg==');
    width: 10px;
      height: 38px;
    background-repeat: no-repeat;
    background-position: center;
    }
      /* line 1582, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
   .page-basket .wrapper-bottom-basket .desconto .wd-checkout-basket-discount .btn-add-discount.openContent:after {
  background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAFCAYAAAB8ZH1oAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAK6wAACusBgosNWgAAABx0RVh0U29mdHdhcmUAQWRvYmUgRmlyZXdvcmtzIENTNui8sowAAAAWdEVYdENyZWF0aW9uIFRpbWUAMDUvMDUvMjBJDVp3AAAAX0lEQVQImV3OsQqCcACE8ZsKaogmewJptDnaxZcUXMuWhny7n4P+QRxu+e7juCBIkuCAHgOOK1v6jXTCGx1afHAucpEu+OFVFvBc2bVIFSY8djeCBn/cgi/u2z+71BhnZeeGdW6swHQAAAAASUVORK5CYII=');
}
    /* line 1589, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wrapper-bottom-basket .desconto .wd-checkout-basket-discount .content {
      max-height: 0;
      opacity: 0;
      overflow: hidden;
      box-sizing: border-box;
      transition: all .3s; }
      /* line 1596, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wrapper-bottom-basket .desconto .wd-checkout-basket-discount .content input {
        margin: 0;
        width: 220px;
        display: block;
        float: left;
        height: 32px;
        color: #cacaca;
        font-style: italic;
        font-family: "Quicksand", sans-serif !important;
        font-weight: 500;
        border: 1px solid #b7b7b7;
        line-height: 32px;
        -webkit-border-radius: 25px !important;
        -moz-border-radius: 25px !important;
        -ms-border-radius: 25px !important;
        border-radius: 25px !important; }
        /* line 205, Core/Projetos/courovestsport.com.br/src/scss/_mixins.scss */
        .page-basket .wrapper-bottom-basket .desconto .wd-checkout-basket-discount .content input:placeholder {
          color: #cacaca; }
        /* line 208, Core/Projetos/courovestsport.com.br/src/scss/_mixins.scss */
        .page-basket .wrapper-bottom-basket .desconto .wd-checkout-basket-discount .content input::-webkit-input-placeholder {
          /* Chrome/Opera/Safari */
          color: #cacaca;
          opacity: 1; }
        /* line 212, Core/Projetos/courovestsport.com.br/src/scss/_mixins.scss */
        .page-basket .wrapper-bottom-basket .desconto .wd-checkout-basket-discount .content input::-moz-placeholder {
          /* Firefox 19+ */
          color: #cacaca;
          opacity: 1; }
        /* line 216, Core/Projetos/courovestsport.com.br/src/scss/_mixins.scss */
        .page-basket .wrapper-bottom-basket .desconto .wd-checkout-basket-discount .content input:-ms-input-placeholder {
          /* IE 10+ */
          color: #cacaca;
          opacity: 1; }
        /* line 220, Core/Projetos/courovestsport.com.br/src/scss/_mixins.scss */
        .page-basket .wrapper-bottom-basket .desconto .wd-checkout-basket-discount .content input:-moz-placeholder {
          /* Firefox 18- */
          color: #cacaca;
          opacity: 1; }
      /* line 1611, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wrapper-bottom-basket .desconto .wd-checkout-basket-discount .content button {
        margin: 0;
        width: 82px;
        background-color: #ffffff;
        color: #000000;
        border: 1px solid #000000;
        height: 32px;
        line-height: 32px;
        padding: 0;
        display: block;
        font-family: "Quicksand", sans-serif !important;
        font-weight: 500;
        text-transform: none;
        font-size: 12px;
        float: right;
        -webkit-border-radius: 20px !important;
        -moz-border-radius: 20px !important;
        -ms-border-radius: 20px !important;
        border-radius: 20px !important; }
        /* line 1627, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wrapper-bottom-basket .desconto .wd-checkout-basket-discount .content button:hover {
          background-color: #000000;
          border-color: #000000;
          color: #ffffff; }
      /* line 1635, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wrapper-bottom-basket .desconto .wd-checkout-basket-discount .content .grid {
        margin-top: 30px; }
        /* line 1638, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wrapper-bottom-basket .desconto .wd-checkout-basket-discount .content .grid strong {
          text-transform: uppercase;
          color: #232323;
          font-size: 11px;
          font-family: "Quicksand", sans-serif !important;
          font-weight: 700; }
        /* line 1645, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
        .page-basket .wrapper-bottom-basket .desconto .wd-checkout-basket-discount .content .grid .grid-content {
          height: 12px;
          line-height: 12px; }
          /* line 1649, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wrapper-bottom-basket .desconto .wd-checkout-basket-discount .content .grid .grid-content .cupom {
            overflow: hidden; }
          /* line 1653, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wrapper-bottom-basket .desconto .wd-checkout-basket-discount .content .grid .grid-content .js-coupon-remove {
            background-color: transparent;
            font-size: 0;
            border: 0;
            width: auto;
            position: relative;
            top: 2px;
            left: 0;
            height: 12px;
            line-height: 12px;
            display: inline-block; }
            /* line 1665, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
            .page-basket .wrapper-bottom-basket .desconto .wd-checkout-basket-discount .content .grid .grid-content .js-coupon-remove:before {
              content: "";
              font-family: "Font Awesome 5 Free";
              -moz-osx-font-smoothing: grayscale;
              -webkit-font-smoothing: antialiased;
              display: inline-block;
              font-style: normal;
              font-variant: normal;
              text-rendering: auto;
              line-height: 1;
              font-weight: bold;
              font-weight: 400;
              color: #da0000;
              font-size: 12px; }
            /* line 1672, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
            .page-basket .wrapper-bottom-basket .desconto .wd-checkout-basket-discount .content .grid .grid-content .js-coupon-remove i {
              display: none; }
          /* line 1677, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wrapper-bottom-basket .desconto .wd-checkout-basket-discount .content .grid .grid-content i {
            display: none; }
          /* line 1681, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wrapper-bottom-basket .desconto .wd-checkout-basket-discount .content .grid .grid-content span {
            font-size: 8px;
            display: block;
            float: left;
            width: 244px; }
          /* line 1688, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
          .page-basket .wrapper-bottom-basket .desconto .wd-checkout-basket-discount .content .grid .grid-content .price-item {
            display: block;
            float: right;
            text-transform: uppercase;
            font-size: 9px;
            color: #000;
            font-family: "Quicksand", sans-serif !important;
            font-weight: 700; }
    /* line 1700, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wrapper-bottom-basket .desconto .wd-checkout-basket-discount #checkout-basket-discount-visible {
      display: none; }
    /* line 1704, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wrapper-bottom-basket .desconto .wd-checkout-basket-discount #checkout-basket-discount-visible:checked + .content {
      max-height: 9999px;
      opacity: 1; }
  /* line 1711, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
  .page-basket .wrapper-bottom-basket .basket-buttons-bottom {
    margin: 0; }
    /* line 1714, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wrapper-bottom-basket .basket-buttons-bottom .bt-keep-buying {
      width: 100%;
      display: block;
      margin: 0 0 15px;
      background-color: transparent;
      border: 1px solid #b7b7b7;
      color: #414141;
      padding: 0;
      text-transform: none;
      height: 30px;
      font-family: "Quicksand", sans-serif !important;
      font-weight: 500;
      line-height: 30px;
      font-size: 13px;
      -webkit-border-radius: 3px;
      -moz-border-radius: 3px;
      -ms-border-radius: 3px;
      border-radius: 3px; }
      /* line 1729, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wrapper-bottom-basket .basket-buttons-bottom .bt-keep-buying:before {
        content: "";
        display: inline-block;
 background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAJCAYAAAD6reaeAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEgAACxIB0t1+/AAAABx0RVh0U29mdHdhcmUAQWRvYmUgRmlyZXdvcmtzIENTNui8sowAAAAWdEVYdENyZWF0aW9uIFRpbWUAMDUvMDUvMjBJDVp3AAAAbklEQVQImU3OoQ3CQAAF0MdB2OM26Q1QhcCQoFB1TZOqjoCpIg2ykGCYAdsFEIyBw6EuuS+f+P+vUkqKHDFsCtjjiibjDje0mAJq3NFjhIAJL5xzT8AJFbqM6xjjB29c8MWSh544YMavvPTAFsMfKgkSUf33iW8AAAAASUVORK5CYII=');
background-repeat: no-repeat;
      background-size: 100%;
      height: 11px;
      width: 5px;
        position: relative;
        margin-right: 20px; 
      vertical-align: text-bottom;
    }
      /* line 1736, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wrapper-bottom-basket .basket-buttons-bottom .bt-keep-buying i {
        display: none; }
      /* line 1740, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wrapper-bottom-basket .basket-buttons-bottom .bt-keep-buying:hover {
        background-color: #cacaca;
        color: #232323; }
    /* line 1746, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wrapper-bottom-basket .basket-buttons-bottom .bt-checkout {
      width: 100%;
      display: block;
      margin: 0;
      background-color: #000;
      color: #ffffff;
      border-color: #000;
      padding: 0;
      height: 46px;
      border: 0;
      letter-spacing: 1px;
      line-height: 46px;
      font-size: 13px;
      text-transform: uppercase;
      -webkit-border-radius: 3px;
      -moz-border-radius: 3px;
      -ms-border-radius: 3px;
      border-radius: 3px;
      font-family: "Quicksand", sans-serif !important;
      font-weight: 400; }
      /* line 1763, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wrapper-bottom-basket .basket-buttons-bottom .bt-checkout:hover {
        background-color: #a9f530;
        color: #000; }
      /* line 1768, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wrapper-bottom-basket .basket-buttons-bottom .bt-checkout:before {
        display: none; }

/* line 1775, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
.page-basket .wd-checkout-basket-gift {
  display: none !important; }


.wd-checkout-basket .total:after {
    content: '';
    clear: both;
    display: block;
}






/* line 163, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
.page-basket .wd-checkout-steps {
  padding: 30px 0px 15px;
  border-bottom: 1px solid #cccccc; }
  /* line 168, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
  .page-basket .wd-checkout-steps .list li {
    margin: 0; }
    /* line 171, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wd-checkout-steps .list li a {
      background-color: transparent;
      padding: 7px 0 17px 70px; }
      /* line 175, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wd-checkout-steps .list li a .number {
        width: 45px;
        height: 45px;
        border: 0;
        background-color: #cfcfcf;
        font-family: "Quicksand", sans-serif !important;
        font-weight: 700;
        text-align: center;
        line-height: 45px;
        text-shadow: none;
        color: #ffffff;
        font-size: 20px;
        padding: 0;
        -moz-border-radius: 50%;
        -webkit-border-radius: 50%;
        border-radius: 50%; }
      /* line 189, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wd-checkout-steps .list li a .title {
        color: #cacaca;
        font-family: "Quicksand", sans-serif !important;
        font-weight: 700;
        font-size: 17px;
        padding-bottom: 6px;
        display: inline-block; }
      /* line 197, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
      .page-basket .wd-checkout-steps .list li a .description {
        font-family: "Quicksand", sans-serif !important;
        font-weight: 400;
        font-size: 11px;
        color: #cacaca; }
    /* line 206, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wd-checkout-steps .list li.current a .number {
      background-color: #000000; }
    /* line 210, Core/Projetos/courovestsport.com.br/src/scss/_carrinho.scss */
    .page-basket .wd-checkout-steps .list li.current a .title,
    .page-basket .wd-checkout-steps .list li.current a .description {
      color: #3e3e3e; }










.cart-upsell-top {
  padding: 0 30px;
}
.frete-upsell {
    display: block;
    float: left;
  width: 100%;
  padding: 20px 0 0 0;
}
.cart-upsell-top .frete-upsell {
  padding: 10px 0 0 0;
}

.frete-upsell .icon {
  background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACYAAAAkCAYAAADl9UilAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEgAACxIB0t1+/AAAABx0RVh0U29mdHdhcmUAQWRvYmUgRmlyZXdvcmtzIENTNui8sowAAAAWdEVYdENyZWF0aW9uIFRpbWUAMDUvMDUvMjBJDVp3AAAER0lEQVRYhc2Yb2hXVRjHP9t+Ky2tXFEaZoHkmyKlPyr5ZkUW1YsmvtAwiiK1MkFfNAoKP2hIBKVIJP0TKcM3vkiMMMNlRWbDyrUFkvaHCmW2WhGaU9t6cc51d3f37rf9NrMvHO45z3POc7/33HOe8zynSiUN9WbgUvrioNqmngfMBqqi/CiwT/01NX4icGNmfDewXT2hjgdmpGwA9AAfqMcSQSlD6kLgU/rjI6A+knonozupLlI3xvY6YE6OjVuAXcBq4MEc/Zy07VJGmXzFceCplPzrjL4NeAOYCcwDXgASYtXxuQFojfVuYG9GvxlojvUe4OM0kSyxBF3q2gIdwHfqWrU2EqtTR6nHU322qdnZTWNHapb7oYjYKMPi6wY2qj9l9Jeo9YQZA/ghQwpgvjoN2Ku+m/OOBvUqoE3dMlhi5wIrkpcCb2X0s4APY/1P4PEcG/PiswnII3ZPLF8Cgyb2F3AdYcZ+ydE3A7uBZcDPwPs5fRYDO4COgnc8EQn9nqcsItat/ligAzhM2BxzgWsJu+z1TJ8jZWx0DKQvIlYW6nF1NbAeWKVuyqyzNfY6yX+AeerBlH6luizWu4GH1H1FxLqAA0B7AZ9DhNnaH9sbgKUE95LgW8K6GxcLBHcwJtYPRP0FsSRI16nKev6hQq1Wu4dlJAfDJnamUF2+y9nB/5ZY7q5UpwOrCI52pNEOPKd+NWRiwCLg9hGn1Ivb1Cnqb0Udiogl8u+BbcMgMJMQe3UAb0fZYqAOeBR4tmhgFSHGmpWRNwBTga1qQ6WsooNdAbTEAx31FcIfaQcmqSfyxpYIM3Im1lIR1gALgcuA+whOuh+qCRFnS6Z0nilW6n7gvdhcrlbl9SupjUBjZvBG4IER5DMmxm8J9gB3EwKA2YQopC+xDKHRhN96ThTVqhcBx4rWwiAxmd74LYst6pvAevWbRHjawapLCFlPJ3BvFN8V23+oN1VA6BPgZJk+Y4ElhEi2Sb2mDzFgIn1TqjRGExbrkKDujC8eV1AmAysJEQuETGq3OuX0Ia6WCD6nFngSuIOQyj0NdKotQyU2hA8oEULxlwnhz9bc6CK1+IflxyoguJTgJf4upYRXA48ANcD0/4pMBm3xOTq9KxuBh88CmTR6kkqa2GuEBVkCrgeuSBTqxcAC4EpCdr1Z7ar07TFRnk849g4Bm9Qj6T7l1tguwl3DJvpetLQQzrtKfFsN8BK9yTKEFO5+YAJhgspmSfWxQEhUWgjrbyrweQWksmgmeP86MklxUQT7WY5soToDeHEECAG8Gu0tyNG15BKLoclYwu87FcUT4oE7IbZbKXacA5U9cfx4tQa4PLZ7gEmxzw1ls6R44TE3No8C58f6M2phoDeAveX0znra3nb1zqTfYJKRxwgXH6SMbAGeHyqpiHX0XtIk9trIuKpB5ZVqNXAr4TxtVb+okFTa5jTCJjoMNKmn0vp/ASlsYh8xZzb8AAAAAElFTkSuQmCC');
  background-position: center;
  width: 38px;
  height: 36px;
  background-repeat: no-repeat;
  vertical-align: top;
  display: inline-block;
  margin-right: 15px
}

.frete-upsell .text {
  vertical-align: top;
  display: inline-block;
  width: calc(100% - 70px);
}

.frete-upsell .text h4 {

  margin: 0;
  text-transform: uppercase;
  font-size: 16px;
  font-weight: 900;
  margin: 0 0 5px;
  color: #737373
}
.frete-upsell .text h4 b {
  color: #000;
}
.frete-upsell .text h4 b:before {
  content: "R$ ";
}

.frete-upsell .text p {
  font-weight: 700;
  font-size: 13px;
  margin: 0
  color: #737373;
}

.frete-upsell .text p b {
  color: #000;
  text-transform: uppercase;
}

.frete-upsell .frete-bar {
  display: block;
  margin-top: 15px;
  margin-bottom: 50px;
  height: 6px;
  width: 100%;
  float: left;
  background-color: #cacaca;
  position: relative;
}
.cart-upsell-top .frete-upsell .frete-bar {
margin-bottom: 0px;
  margin-top: 5px;
}

.frete-upsell .frete-bar:after {
  content: "";
  display: inline-block;
  width: 20px;
  height: 20px;
  border-radius: 50%;
  background-color: #cacaca;
  position: absolute;
  right: -5px;
  top: -7px
}

.frete-upsell .frete-bar .selected {
  background-color: #c30151;
  display: block;
  float: left;
  position: absolute;
  left: 0;
  height: 6px;
  transition: all .2s ease-in-out
}

.frete-upsell .frete-bar .selected:after {
  content: "";
  display: inline-block;
  width: 20px;
  height: 20px;
  border-radius: 50%;
  background-color: #c30151;
  position: absolute;
  right: -5px;
  top: -7px;
  z-index: 2
}

/*File:~/custom/content/themes/Salon2020DESK/Styles/ajustesdiego.css*/
.descricao-do-produto b {
    display: table;
    width: 100%;
    border-bottom: 1px solid #ccc;
    padding-top: 20px;
    margin-bottom: 10px;
    padding-bottom: 5px;
    position: relative;
    font-size: 11px;
    text-transform: uppercase;
}
.descricao-do-produto b::before {
    content: "";
    width: 90px;
    height: 2px;
    background-color: #000;
    position: absolute;
    left: 0;
    bottom: 0;
}
.detalhe-produto .compre-junto .cross-sell-footer .btn-buy {
    background-color: transparent;
    color: #fff;
    border: 2px solid #6ebf55;
    text-transform: capitalize;
    height: 45px;
    line-height: 45px;
    box-shadow: none;
    width: 307px;
    margin: 20px 0;
    background: #6ebf55;
    padding: 0;
    font-size: 15px;
    margin-top: 280px;
}
body[class*="context-product-"] .compre-junto ul li[class*="product-"].first {
    position: relative;
}
body[class*="context-product-"] .compre-junto ul li[class*="product-"].first:before {
    content: "+";
    font-size: 99px;
    position: absolute;
    right: -100px;
    top: 120px;
}
body[class*="context-product-"] .detalhe-produto .medias .wd-product-media-selector li.selected {
    border: 1px solid #eee !important;
}
.detalhe-produto .compre-junto .wd-product-price-description .sale-price {
    font-size: 30px;
}
.compre-junto .priceContainer {
    display: none;
}
.detalhe-produto .compre-junto .cross-sell-footer .total, .detalhe-produto .produtos-relacionados .cross-sell-footer .total {
    position: absolute;
    top: 170px;
    text-align: left;
    float: left;
    left: 30px;
}

.BasketIndexRoute  .main-logo {
    margin-top: 15px;
}
.BasketIndexRoute  .main-title {
    /* font-family: "Flicker", sans-serif !important; */
    font-family: "Quicksand", sans-serif !important;
    font-size: 30px;
    color: #ffff;
    margin-bottom: 30px;
    position: relative;
    text-align: center;
}
.detalhe-produto .compre-junto .cross-sell-footer:before, .detalhe-produto .produtos-relacionados .cross-sell-footer:before {
    content: '=';
    display: none;
    font-size: 61px;
    color: black;
    z-index: 999;
    position: absolute;
    top: 56%;
    left: -89px;
    color: #3E3E3E;
}

.wd-checkout-basket-grid table thead {
    background-color: transparent;
    color: white;
    font-weight: normal;
    border-top-left-radius: 20px;
}
.wd-checkout-basket-grid table thead th {
    text-align: left !important;
    padding: 10px;
    font-weight: normal;
    text-transform: uppercase;
    color: #000;
    font-size: 18px;
    font-weight: bold;
}
.wd-checkout-basket-grid td.product div .data .warning {
    display: none !important;
}
.wd-checkout-basket-grid .price del, .wd-checkout-basket-grid .price strong {
    display: none !important;
    margin: 5px 0;
}
.product strong {
    font-size: 12px;
    font-weight: 500;
}
.subtotal div {
    font-weight: bold;
}
.economize-carrinho, .BasketIndexRoute .wd-header  .wd-title  {
    display: none !important;
}
.btn-calculate-delivery {
    float: left;
    padding: 0 0 5px 0;
}
.wd-checkout-basket-deliveryoptions #DeliveryPostalCode {
    width:190px;
}
.wd-product-associations li li article .product-name, .prateleira li article .product-name {
    font-size: 16px;
    /* text-transform: uppercase; */
    text-align: center;
    height: 30px;
    border-bottom: 0;
}

.fa-youtube:before {
    content: "";
    background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC8AAAAlCAYAAADSvLDKAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6QUQ1RkJGNjM4QTM2MTFFQTk5MDdEMkEyNjlENkU3RUIiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6QUQ1RkJGNjQ4QTM2MTFFQTk5MDdEMkEyNjlENkU3RUIiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpBRDVGQkY2MThBMzYxMUVBOTkwN0QyQTI2OUQ2RTdFQiIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpBRDVGQkY2MjhBMzYxMUVBOTkwN0QyQTI2OUQ2RTdFQiIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/Psp/JJEAAAJhSURBVHja1Jm7S1xBFMZnr2sSFbMa8IWPNCaoKUwKiwgWgg/SBOwklja2kj6FNqn9C4RAxE5sREUsxCBpIohaiBYiurjiMzE+WDffYc8kk/Fi4b3nuvPBj2Vl7+Fz7plz5hFb8HqUpUegCbwEteCZRRF4AhIgBkqMZ+OgWPnrGvw0vl+A3+ASnIMT8AscMkcgBTbAOti1A8at7+/AKChX4SsflN7z2QwYB/38j94y/xpM8MjnmugN94Ib0Kf/6Bk/+Jyjxk19AG9s842gS7mhj7b5Hn41Lug9z5+/5ruVO6Jq9labzwMtyi21avP1oCCEgDNMFHqlzTeEFPCA+8QnkBY236TN14UYlOrwMOgESUHzNdp8lUDwea7H80Lmy6gnSZlXPPKdQmlEZb3Mu2MhFYbSgmmUkDYvmUbFZL4wovKm02iYJ3ZQFXnW4kxaaZ4DVFL3A8YqiCpt/Bpac9A08tTDKclvYNVF89VgVrf6+5o/fQDjtHf4AdqCpk0mQtO07RwCU9wlg+g8zjv2qNJkLOhoG7qikT9zJU0snUibzwsxTWwdxQWXrpXgK2gXiE3zNEUjvyeUJstCxkkpnfPbQmlSIZiOO7p0rYUUsJybTnsEBWBVm99S2QPPoJvwjgj7xZpuUrTS++7Y0ceiubaZdsg4LWeWTPOTDpmnYnBtmqcJMOeI+RG/JfEg1c4cN/4FfPMzv6KyJ7B7OWg6w916wF6imqKJ+1xljwBfqP/vpEr5k46XS/jZp+CxzyY+YQ0MXcVcWmaO1b97KirVFzwZ9X3UIe9zN1X2TurWnvePAAMA1+p23BSHddEAAAAASUVORK5CYII=');
    display: table;
    width: 47px;
    height: 37px;
}
.fa-pinterest:before {
    content: "";
	background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACYAAAAlCAYAAAAuqZsAAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6NEVGREU2OTc4QTNCMTFFQTk2MDI5RDVGOTdEMkUwQTEiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6NEVGREU2OTg4QTNCMTFFQTk2MDI5RDVGOTdEMkUwQTEiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo0RUZERTY5NThBM0IxMUVBOTYwMjlENUY5N0QyRTBBMSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo0RUZERTY5NjhBM0IxMUVBOTYwMjlENUY5N0QyRTBBMSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PuTTXecAAARTSURBVHjatJh9TFdVGMd/v5uEmUXa+4smTWC+LdPNFWmYGpozFLd0k83mZmrLytpKbK6tVmmZa5lbSwWktv7A6aaztYaCBEoDSlFsiqjlS00lo34IAwb4Pdv3ttPpPOfeC/Vsn8G5PNz7vc95znOec+OVXm6sDzYMPAWmgNEgFdwKkkELuAJOgjpQBg6B7igPiEcQ5oH5YCUFeRGe8yv4AmwCv4V9WBibAY6CHSAroihl94F8cAZ8AAb3V9ggUAhKwZhY/20geAM0gMy+ChsBasCS2H9vD4IK8KLkMEC4PhKUgwdi/5+pZ2/mrGwII+xO8E1IUcfAAXAEXATXOAtDQDqnK5sPl0zl3F/gc5ewG0AJIyZZO9jGt20MIX4w02ENuNdWGbhafwS1Uo69BKY6HlLKuvVySFHKWsGnIANsF3xuBF9xcfwrYupt3nE84EO+dY9xfTSLbRpI4rQ0MUd18QlGThXedUJerwZvm8LUMr5FELWeonR7BrwPxgZE+HVQb9xL5fFrFv9XwSdq9/CnMgUsF27+LXhTG6uobAF7AkTFGMlqMN24ns/Imfa3Dl/YAnCTkOjKsVdL1CLwfISyoO67EwzXrnVx2mz2nC5sruBUAH7RxktBnjbuAJ9x/yxybNQpRtRjjHiTxXeUWigDmGdPCDcs1H5P9hOT1sY9tFq7dhq8K9xrHnhBi776uRessvhO9diy2JJedQGHtfFsow6tN0TFHOVA2d1Etx8E34c9LnObHTHGWY5o6jnpsjuM8VXBL83fPmz2h6U59K2ZW5BpDwUIS1gKq82Geo7eKG6Mb9Z+7xT+JytAWLMpQNoJPEc4zU38gjEltrfNdog6x01et7sE304l7Hfhj+NZTH372piCTMtm7YpYjS3JBd+rnpArMa7UWdp4N6jSxsMt7XeyQ9heS6pMEXwbPRa5hOCwVivCavN+S/tbleH7dEBu7TSuPQruF/zrPVbrSsFhEuuVbxn8eZEHC91SHcI2sP3RbYXDv9yPRonDSXUHu8AE8KwQLVexVOfKjca1R8Aiwf84OKULa3GIy+WDp3H8ndAaVWjjbna6c4w9VHXJWx3njWK9H2vnhVdCdgy2iP3J7ncCi/ZPlsNtnC35ROG+LRT9j9Z6nSUPpB2hwYhAjjZWvft+i6hB3EtdufWRP3O6sEtchUF20GivJ/KEvkoouknMJ9XFLnbct5HCrKekTcyjnAjTOI2CPmbPpZL9PKctnbXqtoCX7aT4DklYL9+q1tF1mKXlSeNMujDiwVc9c5m5qj0hibO5t9nerM5oHif34zTey3JUHPbbxc/gcX7h0e2s0VlMDjhlu6yLZ4eNUT+qqG7iMdYivx2+Yvjk9VHUGbbzBX39DNXGt5rJEtFqbOJRhbWxLI0D3wd9cQljpWxRxmvX3nN0oLZe7Euu+sthPwWFtR4WT7+C7+PyVp8I7gG3M98SrIknuNLKGJ2eKKG9LsAAaf/oXZ/i+3gAAAAASUVORK5CYII=');
    display: table;
    width: 38px;
    height: 37px;
}
.fa-twitter:before {
    content: "";
	background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC8AAAAlCAYAAADSvLDKAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6OUZBRUVBNDE4QTNCMTFFQUI2MkNFMTYyMjlFRTRCRkQiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6OUZBRUVBNDI4QTNCMTFFQUI2MkNFMTYyMjlFRTRCRkQiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo5RkFFRUEzRjhBM0IxMUVBQjYyQ0UxNjIyOUVFNEJGRCIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo5RkFFRUE0MDhBM0IxMUVBQjYyQ0UxNjIyOUVFNEJGRCIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PiEtZ98AAANRSURBVHjazJlriExhGMfPnMYlZiUhWcUit+yWy0Zu+WJFua2sQkoJiQ/kWhRKiS8uWcrmi9Tm0rLZqPXBJVaKZHOfD6wwK6bV3uwuO/5P8z91nM6Zc87sOzPnqV87e8553/Of933e533eZ0IP9RVaFq0XKCWzQD74CxrAE1AJboFEij4Ggbh80C03BmZQ+GLwmgLLwAgQAmEwGqwB1eAxmGnTfjKoANuMC2HTzdngHJgLfikWfhAcplg3E+H3wEbwAcwHK0ExaALj7cTLw4WcNhmlZkXCt4IjPtv0AZcs18SVNoPvxgWz2yzg3zn85sMUCJ8ITinoR4TvBFdABCwV7Yb4CBePYVPpe4U9fOlRy+ymY53gLGejBsRAF+g2Os6zaVQAnoLdbJzw+VKJCksUjHpv8yKlG942u02Tg7i+4Ay4A8b6fOlCBaNudZ29DCr/+Xw7V7aTlYBX4DQY6fFlExQKb2EoPW6+aF6wNR6mbzuIMlbPs9knrM+rsgN8p+Ykvpy7nZuJK6wG98EXTmMpNx2zxRWK73QSYliUbrHDR6cSTrcQsa/gLfgMhigU3+4mXmw/mMG8Ix0bTlRbi91Fw20mgWvcqJZ78P9sW0OqkY8xfxD+gEaGplBAxEdTjXycGZ/xhfIDJDzmtPjN0aZKC6Y9crphFi87aWsAxd/1Ir6ReUyQrBvc8CJe7DyTsKDYA/q8J/EJpgCHGHVybRWpbuoO2Zsc2aYwn/idI+HfwFW3PMXONoABoA785P/9siz+hFNO4ya+PziZQ3f5yERR8+s2YheYYOXK9oCOdMV3sLbSlgPhVW6+7iZerB4sUpyXu5mk0pu8Pqx7iLMSdaqzILyNGe0PVeKNdHQZKALHWBKJKRYuJ7j14LmfRrqPZ+t5WFkFXioWvg5c99vQj3iJ87sYhUoUCW9lYKhMp7GXukoBNympEw5VOOKf6OMv0u1AxI/hCMj05fHgPA5M15IV2qIMLM6LWrL22KNqdJgnpnKOQqZPT7Ig94FaFZ3pPB9K3aWYh/CuDIku42zWqurU7PPPGEmkdLGWn6f5XNRWn74JLmvJgq1yC7n8JjVYS5b15EvIzyqjtGShSSJPhOlyMzPP9+ANo5Fko+8yvav9E2AAKp2oemQ3gmkAAAAASUVORK5CYII=');
    display: table;
    width: 47px;
    height: 37px;
}
.fa-instagram:before {
    content: "";
	background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACYAAAAlCAYAAAAuqZsAAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6RkRGNjE3QzA4QTNCMTFFQUE4OEVDMDcyNjEzNzQyOTEiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6RkRGNjE3QzE4QTNCMTFFQUE4OEVDMDcyNjEzNzQyOTEiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpGREY2MTdCRThBM0IxMUVBQTg4RUMwNzI2MTM3NDI5MSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpGREY2MTdCRjhBM0IxMUVBQTg4RUMwNzI2MTM3NDI5MSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PrjQUPoAAAOrSURBVHjavJhbbExRFIbPnA5KXSqhiGgj4kGTUnW/1jVUQltKNJGQxuXBixQtkT6UECJCvBD3EIQWSUkIRaq0EUTT4KEtohHq3tLSTlX9O/mPLDsz7TntmVnJl9lnzz5z/ll777XXOp5iM9UIYJFgCVgExoJBwGN03n6BCnALXAal/gZ5/AjzgkywDfQ2gm/3wHrwTHaa2qC+oBDsCZEoZdPBI5Cue8eyHuA6mCD6WsEN9r8CTS4I6QcmgjQwmH3h4AxoAAX6VB4Ba8QPlIEM8DRInuoOskAOCGPfD5AAqqypVF5aLW56CKYGUZS1CXLBMs6Msl5cRv/W2Eax476CFLrVbRsOLnHBZ/KZamfuE2PUFMZ56dKF4osDoCYIojxcq8N4PQ3UgeNgB1jLDafGpSmPxXPxWXahEw8Pa+O7GCHKshn8/M5NZtkkkzfIea90IGQ2OKUWK+/9TW/fB9ncgZa99zMTZaIt13OMqcUyn1iIbdkIcIcxbyU9YXl9AJgCdvNPZtOTTTxJyriOD4GD4jfrRDvc24HpSgJ5IMLG2EgKTGTcKgGj7TzEqbDJ3EVyTb4G5xi9G8EQsAAki9lI4phUmzPiSFg3cFqIUg/YyR3l08YeAyPBeRDLvmTGyqN2HmY6ELZO21WbGbV9AcaXc9dVib5cHn2uCssQ7WItKAayT4xPlqnUabGbwqLBKHG938EfuquFgrluCov18zCnOZcMNa4J6yPazaDWobAaLatwTdgH0e7C+OTEBor2ZzeFVfnJOp1Yomi/cVPYW+1cy3IoKl5c33Q7XJwQbXUWbrFxT39wUly/A1fcFnZYm9JdJDzAeJUiPwBDRV8OsxBXj6RmZgeljN4qodsKVvAcfALqeVYmsR6Vf/ys5j1XD/FynnkXWeoZFJLdzn1XeU622n2QaTi3QhYvRTbG1lN0CjMPw4nH/ojrCCZ1Le3cV8kDWu24pWAmM2G13j6C56wP1RR/6UAQ/+XV4oqXGUSFzR8rsuk5O5Yg2tUmD1jp5nQj9Ka8NV9cl5gUVSA6N4jSPVSWw2LXSkDzrMW/V+yYSBalPUMkajmLX8vy1Rq1hD3muwtDvDIo0V6wBOPdxXbGN+stQANj439xLJNnmiUmjsH0NovRavCtk2K6gigwnsE6SnynIsEq8FIX9pMLMJ+FrFXWzyHBtEaKyg8UYFUCOA9s0grQYJrKhsforyb8Rf4WFhrRrIyucRp9Lgmp5bmqCuFxYBZ4oQ/6K8AAxmfCW0HluO8AAAAASUVORK5CYII=');
    display: table;
    width: 38px;
    height: 37px;
}
.fa-facebook-f:before, .fa-facebook:before {
    content: "";
	background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABMAAAAlCAYAAACgc9J8AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6NTRGM0Q2QzI4QTNDMTFFQTlBNDVFMEIyMTlCODFCMkEiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6NTRGM0Q2QzM4QTNDMTFFQTlBNDVFMEIyMTlCODFCMkEiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo1NEYzRDZDMDhBM0MxMUVBOUE0NUUwQjIxOUI4MUIyQSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo1NEYzRDZDMThBM0MxMUVBOUE0NUUwQjIxOUI4MUIyQSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PgeBZkAAAADZSURBVHjaYjzMFMhABFAH4lQgdgFiWSAWQpP/C8RRLAQMYQbiRiAuB2IWAuqUCBk2G4gTGYgETHjkEkgxCJ9hbEDcwkAiwGWYBxBLU8swFwbSwVtcEaCBR9N7IC4C4otA/BFJ/AEuw4TwGDYRiBeQGgG4wENykgYu8IuahjHQxTBQBEyBZmRkoIhHTyWWnPEVVBAwAkuN/1RymO3gDbMRYhgoaezFkhRk8GSpV0D8BU3sDxA/ZcFR3FwCYl0chhUC8bLR2Bw1bNSwUcNoZ9gTHOJ/8MgxAAQYABh4H1DYBRZjAAAAAElFTkSuQmCC');
    display: table;
    width: 19px;
    height: 37px;
}
.fa-square-o:before {
    content: ""; 
	background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACUAAAAlCAYAAADFniADAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6Qjc2OTBDQjc4QTNEMTFFQUE0Q0ZBM0Q5OUEyNDQ1REMiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6Qjc2OTBDQjg4QTNEMTFFQUE0Q0ZBM0Q5OUEyNDQ1REMiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpCNzY5MENCNThBM0QxMUVBQTRDRkEzRDk5QTI0NDVEQyIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpCNzY5MENCNjhBM0QxMUVBQTRDRkEzRDk5QTI0NDVEQyIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PmfHD4IAAAI7SURBVHja7JhNKKVRGMfPvRmfpSg0l2YkiShJaTaiRDZqjK+FDQvZWGgMSfKxYDRWYmGhWLCRRJgi5CMrZWNhBgkLZYGM5PrI9T95FLrve573Hffed+Ffv26997nn/jvnOc95zmtbtRcKHaWAMpANEkCkUOsYLIMRMA3uhUH5aTyPB52gGNgMjhkFSok/oA78NjKA3c2zcrAJSkwYeq1EMAMGQbBZUy1gGASKt1UFWADhRk1VgnbhOX0BE8CfayoW9ArPKxM0c011gBDhHdWDGJUpB+0Ub0nma7XK1Ded0uAp5ajqVDZzoCswBo40vg8CuSCJMVayylQcY5BbkAXWFXFyZ81TQusplNLmSGv5OLVjg2FI6oYKJUdJejnFqdoRGtXfnT4y4zKMHDPuJJe4n8zpLZ083RuZY34H+e5WyoYu4QCfn4TvdQZOQJOfsI7CiD67sJ4irWhKvJt6N/XWMloS7sCFif8J4XScpH9GTP0CrcBpwtQHutX8ZMS6uMv3l44Pp8kVkV1GF1jj5pSLM6XMOJXOuTN1yghMZ/RIKqWpOk7SqcypPfqBakYXiX0ThhxkKIARuyNNLYEi5k7N80JFWJEzME5b3QqSeTtqpz551CKmpsDuU0loApc+NnQNGp4fM7L7rPGxqR9UD1+cfUOgzUeGumXHqXUgy7cuVf9Ruc1U+tqnZdPrEgZAqnh8NejyoKE5Kso93C5hGxSIx9eMX+kq9BlE0/XcqJy0yw/BLJgEW1rBDwIMAKRpX3gozMCPAAAAAElFTkSuQmCC');
    display: table;
    width: 37px;
    height: 37px; 
}
.wd-browsing-breadcrumbs li + li:before {
    content: '\f105';
    position: absolute;
    left: -5px;
    font-size: 15px;
    top: -4px;
    color: #c30151;
    font-family: fontAwesome;
    font-weight: bold;
}
.wd-browsing-breadcrumbs li.last span {
    color: #a60550;
}
.detalhe-produto .rating .link-avaliacao {
    text-decoration: underline !important;
    color: #8a8a8a;
    font-size: 12px;
    /* line-height: 29px; */
    margin-top: 12px;
    display: inline-block;
    position: relative;
    top: 4px;
}
.detalhe-produto .avaliacao .wd-product-reviews .review-create {
    background-color: #6ebf55;
    width: 300px;
    height: 45px;
    line-height: 45px;
    padding: 0;
    color: white;
    -moz-border-radius: 50px;
    -webkit-border-radius: 50px;
    border-radius: 50px;
    text-align: center;
    clear: both;
    display: block;
    margin: 20px auto;
    display: block;
    font-family: "Quicksand", sans-serif !important;
    text-transform: uppercase;
    font-size: 13px;
    font-weight: normal;
}

.logo-container {
    display: inline-block;
    margin-top: -9px;
}
#mapa-site .wd-category-menu .wd-title  {
    display:none; 

}
#mapa-site .wd-category-menu nav > ul > li {
    padding: 0 !important;
    display: inline-block;
    vertical-align: top;
}
#mapa-site  
{
    margin: 50px 0;
}
#mapa-site .wd-category-menu   {
    clear: both;
    min-height: 131px;
    display: none;
}
.bt-tdcat:hover .wd-category-menu {
    display: block;
 }

.bt-tdcat {
    font-family: "Quicksand", sans-serif !important;
    font-size: 18px;
    width: 300px;
    background: #000;
    color: #fff;
    padding: 8px 0px;
    border-radius: 30px;
    margin: auto;
    display: block;
    text-align: center;
    line-height: 18px;
    font-weight: bold;
}
.bt-tdcat:after {
  content: "";
  display: inline-block;
  margin-left: 10px;
  width: 0; 
  height: 0; 

  border-left: 8px solid transparent;
  border-right: 8px solid transparent;
  border-top: 10px solid #FFF;
}
.bt-tdcat:hover {
    opacity: .8;
}
#mapa-site .wd-category-menu nav > ul > li ul {
    display: block;
    position: relative;
}

#mapa-site .wd-category-menu nav > ul > li a {
    line-height: 22px; 
}
#mapa-site .wd-category-menu li .sub-section li a:before {
    content: none;
}

#mapa-site .wd-category-menu nav > ul.level-1 > li > h3 > a {
    font-size: 13px;
    font-weight: bold;
    text-transform: uppercase;
}
/*File:~/custom/content/themes/Salon2020DESK/Styles/ajustes-homolog.css*/
ul li[class*="product-"] > article .cta .buy {
	width: 203px;
    height: 35px;
    margin: 0 auto;
    border-radius: 12px;
    background-color: #6ebf55;;
    color: white;
    text-align: center;
    font-family: "Quicksand", sans-serif !important;
    text-transform: capitalize;
    font-size: 17px;
    display: block;
    line-height: 35px;
    margin-top: 0;
    opacity: 0;
    visibility: hidden;
    transition: all 300ms;
    z-index: 999;
}
ul li[class*="product-"] > article:hover .buy {
	margin-top: 15px;
    visibility: visible;
    opacity: 1;
}
.slick-initialized .slick-slide .cta {
	display: block;
}
/*
.carrinho-lateral {
	position: absolute;
    top: 95px;
    width: 470px;
    right: -1000px;
    height: auto;
	max-height: 80%;
    background: #FFF;
    z-index: 3;
    transition: all 0.8s;
	border: 1px solid;
}
.carrinho-lateral.open {
    right: 50%;
    overflow-y: auto;
    margin-right: -570px;
}*/
.carrinho-lateral .wd-checkout-basket-summaryheader .wd-widget > .wd-content ul.product .content-product {
	width: 40%;
}
body[class*="context-product-"] .detalhe-produto .desc-produto .btn-buy {
	width: 320px!important;
    height: 70px!important;
    font-size: 30px;
    position: relative;
    left: 50%;
    transform: translateX(-50%);
}
.menu ul.level-1 > li > ul.level-2 {
    padding-right: 340px;
}
.menu ul.level-1 > li > ul.level-2 > li {
    width: 30%;
}
header .prateleira {
	width: 300px;
    height: 300px;
    background-repeat: no-repeat;
    margin-right: 20px;
    margin-top: 10px;
    float: right;
    /*position: relative;*/
}
#header.fixo {
	z-index: 9999;
}
.carrinho-lateral.open + #main:before {
	z-index: 0;
}
