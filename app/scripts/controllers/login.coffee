'use strict'

class LoginCtrl

  constructor: (@$scope, @$location, @webService, @helperService) ->
    @setup()

  setup: ->
    @$scope.login = @login

  success: (response) =>
    @helperService.setName "Rocky" #maybe this will come from reponse
    @$location.url "main"
 
  error: (response) =>
    @$scope.message = "Login Failed"

  login: (user) =>
    promise = @webService.login(user)
    promise.then @success, @error

LoginCtrl.$inject = ["$scope", "$location", "webService", "helperService"]
angular.module("demoApp").controller "LoginCtrl", LoginCtrl
