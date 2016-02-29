###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'DashboardUserCtrl', ->
  ctrl = undefined

  beforeEach module 'dashboard'

  beforeEach inject ($rootScope, $controller) ->
    ctrl = $controller 'DashboardUserCtrl'

  it 'should have ctrlName as DashboardUserCtrl', ->
    expect(ctrl.ctrlName).toEqual 'DashboardUserCtrl'

