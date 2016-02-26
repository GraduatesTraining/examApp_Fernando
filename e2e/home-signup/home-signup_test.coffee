###global describe, beforeEach, it, browser, expect ###
'use strict'


HomeSignupPagePo = require './home-signup.po'

describe 'Home signup page', ->
  homeSignupPage = undefined

  beforeEach ->
    homeSignupPage = new HomeSignupPagePo
    browser.get '/#/signup'

  it 'should say HomeSignupCtrl', ->
    expect(homeSignupPage.heading.getText()).toEqual 'homeSignup'
    expect(homeSignupPage.text.getText()).toEqual 'HomeSignupCtrl'
