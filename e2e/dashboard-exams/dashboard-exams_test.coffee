###global describe, beforeEach, it, browser, expect ###
'use strict'


DashboardExamsPagePo = require './dashboard-exams.po'

describe 'Dashboard exams page', ->
  dashboardExamsPage = undefined

  beforeEach ->
    dashboardExamsPage = new DashboardExamsPagePo
    browser.get '/#/exams'

  it 'should say DashboardExamsCtrl', ->
    expect(dashboardExamsPage.heading.getText()).toEqual 'dashboardExams'
    expect(dashboardExamsPage.text.getText()).toEqual 'DashboardExamsCtrl'
