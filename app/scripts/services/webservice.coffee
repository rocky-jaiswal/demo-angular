'use strict'

class WebService

  constructor: (@$http) ->

  login: (user) ->
    @$http.get("http://localhost:9000/")

  getData: () ->
    @$http.get("http://localhost:9000/")

angular.module "demoApp.webService", [], ($provide) ->
  $provide.factory "webService", ["$http", ($http) -> new WebService($http)]
