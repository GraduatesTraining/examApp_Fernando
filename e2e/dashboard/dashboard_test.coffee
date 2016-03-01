###global describe, beforeEach, it, browser, expect ###
'use strict'


DashboardPagePo = require './dashboard.po'

describe 'Dashboard page', ->
  dashboardPage = undefined

  beforeEach ->
    dashboardPage = new DashboardPagePo
    browser.get '/#/dashboard'

  it 'should say DashboardCtrl', ->
    expect(dashboardPage.heading.getText()).toEqual 'dashboard'
    expect(dashboardPage.text.getText()).toEqual 'DashboardCtrl'
