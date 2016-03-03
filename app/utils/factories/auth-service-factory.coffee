'use strict'

###*
 # @ngdoc service
 # @name utils.factory:AuthService

 # @description

###
AuthService =  (FirebaseService, $q, $http, $log) ->
  AuthServiceBase = {}

  AuthServiceBase.login = (credentials) ->
    FirebaseService.authWithPassword credentials,
      (error, authData) ->
        if (error)
          $log.debug("Login Failed!", error)
        else
          $log.debug("Authenticated successfully with payload:", authData)


  AuthServiceBase.githubLogin = ->
    FirebaseService.authWithOAuthPopup "github",
      (error, authData) ->
        if (error)
          $log.debug("Login Failed!", error)
        else
          $log.debug("Authenticated successfully with payload:", authData)

  AuthServiceBase.signup = (credentials) ->
    FirebaseService.createUser credentials,
      (error, userData) ->
        switch (error?.code)
          when "EMAIL_TAKEN"
            $log.debug("""The new user account cannot be created
              because the email is already in use.""")
          when "INVALID_EMAIL"
            $log.debug("The specified email is not a valid email.")
          when undefined
            $log.debug("Successfully created user account with uid:"
            , userData.uid)
          else
            $log.debug("Error creating user:", error)
          

  AuthServiceBase.logout = ->
    FirebaseService.unauth()
    
  AuthServiceBase.isAuthenticated = ->
    FirebaseService.getAuth()?

  AuthServiceBase

angular
  .module 'utils'
  .factory 'AuthService', [
    'FirebaseService',
    '$q',
    '$http',
    '$log',
    AuthService
  ]
