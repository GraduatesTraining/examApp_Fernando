###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'DashboardStatsCtrl', ->
  ctrl = undefined

  beforeEach module 'dashboard'

  beforeEach inject ($rootScope, $controller) ->
    ctrl = $controller 'DashboardStatsCtrl'

  it 'should have ctrlName as DashboardStatsCtrl', ->
    expect(ctrl.ctrlName).toEqual 'DashboardStatsCtrl'

