'use strict'

describe 'SmokeTest', () ->

  it 'should check if login page is working', () ->
    browser().navigateTo("/")
    expect(element('h2').html()).toEqual("Login")

  it 'should allow login', () ->
    browser().navigateTo("/")
    input("user.username").enter("rocky")
    input("user.password").enter("1234")
    element(".btn").click()
    expect(browser().window().hash()).toEqual("/main")