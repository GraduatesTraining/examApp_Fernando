'use strict'

###*
 # @ngdoc service
 # @name utils.factory:UserDataService

 # @description

###
UserDataService = (FirebaseService, $log, $q) ->
  UserDataServiceBase = {}

  UserDataServiceBase.currentUser =
    id: undefined
    username: undefined
    email: undefined
    avatarUrl: undefined


  UserDataServiceBase.saveUserDataOnInit = (userData, username) ->
    switch userData?.provider
      when 'password'
        newUser userData.uid, username, userData.password.email,
          userData.password.profileImageURL
      when 'github'
        newUser userData.uid, userData.github.username,
          userData.github.email,
          userData.github.profileImageURL
    FirebaseService.user(userData.uid).set @currentUser
    
  UserDataServiceBase.getUserData = (id) ->
    deferred = $q.defer()
    FirebaseService.user(id).on "value",
    (data) ->
      deferred.resolve(data.val())
    , (error) ->
      $log.error "Couldn't read user with id: #{id}"
      deferred.reject error
      
    deferred.promise

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
    '$q',
    UserDataService
  ]
