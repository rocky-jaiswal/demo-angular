'use strict'

class LoginCtrl

  constructor: (@$scope, @$location, @webService, @helperService, @storageService) ->
    @setup()

  setup: ->
    @$scope.login = @login

  success: (response) =>
    @helperService.setName response.data.user
    @storageService.store("username", @helperService.getName())
    @$location.url "main"
 
  error: (response) =>
    @$scope.message = "Login Failed!"
    @$scope.user = {}

  login: (user) =>
    promise = @webService.login(user)
    promise.then @success, @error

LoginCtrl.$inject = ["$scope", "$location", "webService", "helperService", "storageService"]
angular.module("demoApp").controller "LoginCtrl", LoginCtrl
