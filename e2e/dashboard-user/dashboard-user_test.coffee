###global describe, beforeEach, it, browser, expect ###
'use strict'


DashboardUserPagePo = require './dashboard-user.po'

describe 'Dashboard user page', ->
  dashboardUserPage = undefined

  beforeEach ->
    dashboardUserPage = new DashboardUserPagePo
    browser.get '/#/user'

  it 'should say DashboardUserCtrl', ->
    expect(dashboardUserPage.heading.getText()).toEqual 'dashboardUser'
    expect(dashboardUserPage.text.getText()).toEqual 'DashboardUserCtrl'
