'use strict'

###*
 # @ngdoc service
 # @name utils.factory:AuthService

 # @description

###
AuthService =  ($q, $http) ->
  AuthServiceBase = {}

  AuthServiceBase.login = (credentials) ->
    # TODO
    console.log "login() called with credentials:"
    console.log credentials

  AuthServiceBase.signup = (credentials) ->
    # TODO
    console.log "signup() called with credentials:"
    console.log credentials

  AuthServiceBase.logout = ->
    # TODO
    console.log "logout() called"
    
  AuthServiceBase.isAuthenticated = ->
    # TODO
    console.log "isAuthenticated() called"
    true

  AuthServiceBase

angular
  .module 'utils'
  .factory 'AuthService', ['$q', '$http', AuthService]
  
