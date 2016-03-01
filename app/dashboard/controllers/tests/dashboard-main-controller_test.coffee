###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'DashboardMainCtrl', ->
  ctrl = undefined

  beforeEach module 'dashboard'

  beforeEach inject ($rootScope, $controller) ->
    ctrl = $controller 'DashboardMainCtrl'

  it 'should have ctrlName as DashboardMainCtrl', ->
    expect(ctrl.ctrlName).toEqual 'DashboardMainCtrl'

