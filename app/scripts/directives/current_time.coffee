"use strict"

class CurrentTime

  @options : () ->
    link : (scope, element, attrs) ->
      d = new Date()
      element.html("Today is : " + d.getDate() + "/" + d.getMonth() + "/" + d.getFullYear())

angular.module("demoApp").directive "currentTime", CurrentTime.options