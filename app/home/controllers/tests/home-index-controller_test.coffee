###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'HomeIndexCtrl', ->
  ctrl = undefined

  beforeEach module 'home'

  beforeEach inject ($rootScope, $controller) ->
    ctrl = $controller 'HomeIndexCtrl'

  it 'should have ctrlName as HomeIndexCtrl', ->
    expect(ctrl.ctrlName).toEqual 'HomeIndexCtrl'

