'use strict'

angular.module('demoApp', ["demoApp.webService", "demoApp.helperService", "demoApp.storageService"])
  .config ($routeProvider) ->
    $routeProvider
      .when('/', {templateUrl: 'views/login.html', controller: 'LoginCtrl'})
      .when('/main', {templateUrl: 'views/main.html', controller: 'MainCtrl'})
      .otherwise(redirectTo: '/')
