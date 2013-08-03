'use strict'

class HelperService

  constructor: () ->

  setName: (name) ->
    @name = name

  getName: ->
    @name

angular.module "demoApp.helperService", [], ($provide) ->
  $provide.factory "helperService", -> new HelperService()
