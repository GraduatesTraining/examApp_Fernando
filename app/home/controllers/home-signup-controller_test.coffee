###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'HomeSignupCtrl', ->
  ctrl = undefined

  beforeEach module 'home'

  beforeEach inject ($rootScope, $controller) ->
    ctrl = $controller 'HomeSignupCtrl'

  it 'should have ctrlName as HomeSignupCtrl', ->
    expect(ctrl.ctrlName).toEqual 'HomeSignupCtrl'

