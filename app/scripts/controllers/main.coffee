'use strict'

class MainCtrl

  constructor: (@$scope, @webService, @helperService, @storageService) ->
    @setup()

  setup: ->
    @$scope.send = @send
    @$scope.name = @helperService.getName() || @storageService.get("username")
    @getData()

  getData: ->
    promise = @webService.getData()
    promise.then @success, @error

  success: (response) =>
    @$scope.posts = response.data

  successPost: (response) =>
    @getData()
    @$scope.posts = response.data
 
  error: (response) =>
    @$scope.message = "Error!"

  send: (post) =>
    promise = @webService.sendData(post)
    promise.then @successPost, @error
    @$scope.post = {}

MainCtrl.$inject = ["$scope", "webService", "helperService", "storageService"]
angular.module("demoApp").controller "MainCtrl", MainCtrl
