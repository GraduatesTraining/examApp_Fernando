###global describe, beforeEach, it, browser, expect ###
'use strict'


DashboardStatsPagePo = require './dashboard-stats.po'

describe 'Dashboard stats page', ->
  dashboardStatsPage = undefined

  beforeEach ->
    dashboardStatsPage = new DashboardStatsPagePo
    browser.get '/#/stats'

  it 'should say DashboardStatsCtrl', ->
    expect(dashboardStatsPage.heading.getText()).toEqual 'dashboardStats'
    expect(dashboardStatsPage.text.getText()).toEqual 'DashboardStatsCtrl'
