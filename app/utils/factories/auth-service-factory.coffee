'use strict'

###*
 # @ngdoc service
 # @name utils.factory:AuthService

 # @description

###
AuthService =  (FirebaseService, UserDataService, $state, $log) ->
  AuthServiceBase = {}

  AuthServiceBase.login = (credentials, firstlogin = false) ->
    FirebaseService.app().authWithPassword credentials,
      (error, authData) ->
        if (error?)
          $log.error("Login Failed!", error)
        else
          if firstlogin
            firstLoginSetup authData, credentials
          else
            loginSetup authData.uid

  AuthServiceBase.githubLogin = ->
    FirebaseService.app().authWithOAuthPopup "github",
      (error, authData) ->
        if (error?)
          $log.error("Login Failed!", error)
        else
          if UserDataService.userExists(authData.uid)
            loginSetup(authData.uid)
          else
            firstLoginSetup(authData)

  AuthServiceBase.signup = (credentials) ->
    FirebaseService.app().createUser credentials,
      (error, userData) =>
        switch (error?.code)
          when "EMAIL_TAKEN"
            $log.error("""The new user account cannot be created
              because the email is already in use.""")
          when "INVALID_EMAIL"
            $log.error("The specified email is not a valid email.")
          when undefined
            @login(credentials, true)
          else
            $log.error("Error creating user:", error)
          

  AuthServiceBase.logout = ->
    UserDataService.clearUser()
    FirebaseService.app().unauth()
    $state.go 'home.index'
    
  AuthServiceBase.isAuthenticated = ->
    FirebaseService.app().getAuth()?

  AuthServiceBase.getAuthenticated = ->
    FirebaseService.app().getAuth().uid

  # Private methods:
  firstLoginSetup = (userData, credentials) ->
    UserDataService.saveUserDataOnInit(userData, credentials?.username)
      .then (data) ->
        loginSetup userData.uid

  loginSetup = (uid) ->
    # UserDataService.getUserData(uid)
    $state.go 'dashboard.main'

  AuthServiceBase

angular
  .module 'utils'
  .factory 'AuthService', [
    'FirebaseService',
    'UserDataService',
    '$state',
    '$log',
    AuthService
  ]
