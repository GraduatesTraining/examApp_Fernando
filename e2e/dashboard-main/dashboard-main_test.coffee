###global describe, beforeEach, it, browser, expect ###
'use strict'


DashboardMainPagePo = require './dashboard-main.po'

describe 'Dashboard main page', ->
  dashboardMainPage = undefined

  beforeEach ->
    dashboardMainPage = new DashboardMainPagePo
    browser.get '/#/main'

  it 'should say DashboardMainCtrl', ->
    expect(dashboardMainPage.heading.getText()).toEqual 'dashboardMain'
    expect(dashboardMainPage.text.getText()).toEqual 'DashboardMainCtrl'
