'use strict'

describe 'Controller: MainCtrl', () ->

  # load the controller's module
  beforeEach module 'demoApp'

  MainCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($injector, $controller, $rootScope) ->
    scope = $rootScope.$new()
    
    #Set up the mock http service responses
    $httpBackend = $injector.get('$httpBackend')
    $httpBackend.when('GET', 'http://localhost:9000/').respond({username: 'userX'}, {'A-Token': 'xxx'})

    MainCtrl = $controller 'MainCtrl', {
      $scope: scope
    }

  it 'should set scope properly', () ->
    expect(MainCtrl.scope).not.toBe null

  it 'should get services properly', () ->
    expect(MainCtrl.webService).not.toBe null
