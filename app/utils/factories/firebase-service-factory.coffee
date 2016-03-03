'use strict'

###*
 # @ngdoc service
 # @name utils.factory:FirebaseService

 # @description

###
FirebaseService = (FIREBASE_URL) ->
  FirebaseServiceBase = {}
  firebaseRef = new Firebase(FIREBASE_URL)
  FirebaseServiceBase.app = ->
    firebaseRef
  FirebaseServiceBase.user = (uid) ->
    firebaseRef.child('users').child(uid)
    
  FirebaseServiceBase

angular
  .module 'utils'
  .factory 'FirebaseService', ['FIREBASE_URL', FirebaseService]
