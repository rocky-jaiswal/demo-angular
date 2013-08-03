'use strict'

describe 'Service: helperService', () ->

  # load the app module
  beforeEach module 'demoApp'

  helperService = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($injector) ->
    helperService = $injector.get('helperService')

  it 'should get services properly', () ->
    helperService.setName("rocky")
    expect(helperService.getName()).toBe "rocky"
