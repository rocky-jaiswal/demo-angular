'use strict'

class MainCtrl

  constructor: (@$scope, @webService, @helperService) ->
    @setup()

  setup: ->
    @$scope.name = @helperService.getName()
    promise = @webService.getData()
    promise.then @success, @error

  success: (response) =>
    #Do something
 
  error: (response) =>
    @$scope.message = "Error!"

MainCtrl.$inject = ["$scope", "webService", "helperService"]
angular.module("demoApp").controller "MainCtrl", MainCtrl
