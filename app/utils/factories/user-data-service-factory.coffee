'use strict'

###*
 # @ngdoc service
 # @name utils.factory:UserDataService

 # @description

###
UserDataService = (FirebaseService, $log) ->
  UserDataServiceBase = {}

  UserDataServiceBase.currentUser = {
    id: undefined
    username: undefined
    email: undefined
    avatarUrl: undefined
  }

  UserDataServiceBase.saveUserDataOnInit = (userData, username) ->
    switch userData?.provider
      when 'password'
        newUser userData.uid, username, userData.password.email,
          userData.password.profileImageURL
      when 'github'
        newUser userData.uid, userData.github.username,
          userData.github.email,
          userData.github.profileImageURL
    FirebaseService.user(userData.uid).set UserDataServiceBase.currentUser
    
  UserDataServiceBase.getUserData = (id) ->
    FirebaseService.user(id).on "value",
    (data) =>
      angular.extend @currentUser, data.val()
    , (error) ->
      $log.error "Couldn't read user with id: #{id}"
      
   
  UserDataServiceBase.userExists = (id) ->
    doesExist = false
    FirebaseService.user(id).on "value",
    (data) ->
      doesExist = data.exists()
    doesExist

  UserDataServiceBase.clearUser = ->
    @currentUser.id = undefined
    @currentUser.username = undefined
    @currentUser.email = undefined
    @currentUser.avatarUrl = undefined


  # Private methods:
  newUser = (id, username, email, avatarUrl) ->
    UserDataServiceBase.currentUser.id = id
    UserDataServiceBase.currentUser.username = username
    UserDataServiceBase.currentUser.email = email
    UserDataServiceBase.currentUser.avatarUrl = avatarUrl

  UserDataServiceBase


angular
  .module 'utils'
  .factory 'UserDataService', [
    'FirebaseService',
    '$log',
    UserDataService
  ]
