###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'UserDataService', ->
  factory = undefined

  beforeEach module 'utils'

  beforeEach inject (UserDataService) ->
    factory = UserDataService
