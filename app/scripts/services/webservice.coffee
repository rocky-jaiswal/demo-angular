'use strict'

class WebService

  constructor: (@$http) ->

  login: (user) ->
    @$http.post("http://localhost:3000/login", {user: user.username, password: user.password})

  getData: () ->
    @$http.get("http://localhost:3000/posts")

  sendData: (post) ->
    @$http.post("http://localhost:3000/posts", {title: post.title, body: post.body})

angular.module "demoApp.webService", [], ($provide) ->
  $provide.factory "webService", ["$http", ($http) -> new WebService($http)]
