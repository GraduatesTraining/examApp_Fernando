'use strict'

###*
 # @ngdoc service
 # @name utils.factory:FirebaseService

 # @description

###
FirebaseService = (FIREBASE_URL) ->
  new Firebase(FIREBASE_URL)

angular
  .module 'utils'
  .factory 'FirebaseService', ['FIREBASE_URL', FirebaseService]
