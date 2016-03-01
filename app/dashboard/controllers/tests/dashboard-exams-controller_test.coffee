###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'DashboardExamsCtrl', ->
  ctrl = undefined

  beforeEach module 'dashboard'

  beforeEach inject ($rootScope, $controller) ->
    ctrl = $controller 'DashboardExamsCtrl'

  it 'should have ctrlName as DashboardExamsCtrl', ->
    expect(ctrl.ctrlName).toEqual 'DashboardExamsCtrl'

