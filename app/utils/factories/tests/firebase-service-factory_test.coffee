###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'FirebaseService', ->
  factory = undefined

  beforeEach module 'utils'

  beforeEach inject (FirebaseService) ->
    factory = FirebaseService
