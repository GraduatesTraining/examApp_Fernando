'use strict'

###*
 # @ngdoc service
 # @name utils.factory:AuthService

 # @description

###
AuthService =  (FirebaseService, $q, $http) ->
  AuthServiceBase = {}

  AuthServiceBase.login = (credentials) ->
    FirebaseService.authWithPassword credentials,
      (error, authData) ->
        if (error)
          console.log("Login Failed!", error)
        else
          console.log("Authenticated successfully with payload:", authData)


  AuthServiceBase.githubLogin = ->
    console.log "githubLogin() called"

  AuthServiceBase.signup = (credentials) ->
    FirebaseService.createUser credentials,
      (error, userData) ->
        if (error)
          switch (error.code)
            when "EMAIL_TAKEN"
              console.log("""The new user account cannot be created
               because the email is already in use.""")
            when "INVALID_EMAIL"
              console.log("The specified email is not a valid email.")
            else
              console.log("Error creating user:", error)
        else
          console.log("Successfully created user account with uid:"
            , userData.uid)

  AuthServiceBase.logout = ->
    FirebaseService.unauth()
    
  AuthServiceBase.isAuthenticated = ->
    if FirebaseService.getAuth() is null then false else true


  AuthServiceBase

angular
  .module 'utils'
  .factory 'AuthService', ['FirebaseService', '$q', '$http', AuthService]
