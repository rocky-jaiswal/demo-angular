'use strict'

class AnotherCtrl

  constructor: (@$scope, @helperService) ->
    @$scope.name = @helperService.getName() or "Coffee"

AnotherCtrl.$inject = ["$scope", "helperService"]
angular.module("demoApp").controller "AnotherCtrl", AnotherCtrl