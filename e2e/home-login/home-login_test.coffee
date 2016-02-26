###global describe, beforeEach, it, browser, expect ###
'use strict'


HomeLoginPagePo = require './home-login.po'

describe 'Home login page', ->
  homeLoginPage = undefined

  beforeEach ->
    homeLoginPage = new HomeLoginPagePo
    browser.get '/#/login'

  it 'should say HomeLoginCtrl', ->
    expect(homeLoginPage.heading.getText()).toEqual 'homeLogin'
    expect(homeLoginPage.text.getText()).toEqual 'HomeLoginCtrl'
