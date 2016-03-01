###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'HomeLoginCtrl', ->
  ctrl = undefined

  beforeEach module 'home'

  beforeEach inject ($rootScope, $controller) ->
    ctrl = $controller 'HomeLoginCtrl'

  it 'should have ctrlName as HomeLoginCtrl', ->
    expect(ctrl.ctrlName).toEqual 'HomeLoginCtrl'

