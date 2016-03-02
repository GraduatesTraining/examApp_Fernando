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
    FirebaseService.authWithOAuthPopup "github",
      (error, authData) ->
        if (error)
          console.log("Login Failed!", error)
        else
          console.log("Authenticated successfully with payload:", authData)

  AuthServiceBase.signup = (credentials) ->
    FirebaseService.createUser credentials,
      (error, userData) ->
        switch (error?.code)
          when "EMAIL_TAKEN"
            console.log("""The new user account cannot be created
              because the email is already in use.""")
          when "INVALID_EMAIL"
            console.log("The specified email is not a valid email.")
          when undefined
            console.log("Successfully created user account with uid:"
            , userData.uid)
          else
            console.log("Error creating user:", error)
          

  AuthServiceBase.logout = ->
    FirebaseService.unauth()
    
  AuthServiceBase.isAuthenticated = ->
    if FirebaseService.getAuth()? then true else false

  AuthServiceBase

angular
  .module 'utils'
  .factory 'AuthService', ['FirebaseService', '$q', '$http', AuthService]
