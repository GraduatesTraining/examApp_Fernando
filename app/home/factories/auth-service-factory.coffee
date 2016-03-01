'use strict'

###*
 # @ngdoc service
 # @name home.factory:AuthService

 # @description

###
AuthService =  ($q, $http) ->
  AuthServiceBase = {}

  AuthServiceBase.login = (credentials) ->
    # TODO
    console.log "login() called with credentials:"
    console.log credentials

  AuthServiceBase.githubLogin = ->
    console.log "githubLogin() called"

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
  .module 'home'
  .factory 'AuthService', ['$q', '$http', AuthService]