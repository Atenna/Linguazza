// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require turbolinks

//= require highcharts/highcharts
//= require highcharts/highcharts-more
//= require highcharts/highstock
/*!
 * IE10 viewport hack for Surface/desktop Windows 8 bug
 * Copyright 2014-2015 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 */

// See the Getting Started docs for more information:
// http://getbootstrap.com/getting-started/#support-ie10-width

(function () {
  'use strict';

  if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
    var msViewportStyle = document.createElement('style')
    msViewportStyle.appendChild(
      document.createTextNode(
        '@-ms-viewport{width:auto!important}'
      )
    )
    document.querySelector('head').appendChild(msViewportStyle)
  }

})();