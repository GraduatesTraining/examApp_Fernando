###global describe, beforeEach, it, browser, expect ###
'use strict'


HomeIndexPagePo = require './home-index.po'

describe 'Home index page', ->
  homeIndexPage = undefined

  beforeEach ->
    homeIndexPage = new HomeIndexPagePo
    browser.get '/#/index'

  it 'should say HomeIndexCtrl', ->
    expect(homeIndexPage.heading.getText()).toEqual 'homeIndex'
    expect(homeIndexPage.text.getText()).toEqual 'HomeIndexCtrl'
