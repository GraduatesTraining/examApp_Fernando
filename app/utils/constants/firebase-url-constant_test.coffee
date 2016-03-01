###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'firebaseUrl', ->
  constant = undefined

  beforeEach module 'utils'

  beforeEach inject (firebaseUrl) ->
    constant = firebaseUrl

  it 'should equal 0', ->
    expect(constant).toBe 0
