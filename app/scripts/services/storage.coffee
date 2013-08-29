"use strict"

class StorageService

  store: (key, value) ->
    localStorage.setItem(key, value)

  get: (key) ->
    localStorage.getItem key

  deleteItem: (key) ->
    localStorage.removeItem(key)

  logout: ->
    localStorage.removeItem("username")

angular.module "demoApp.storageService", [], ($provide) ->
  $provide.factory "storageService", -> new StorageService()
