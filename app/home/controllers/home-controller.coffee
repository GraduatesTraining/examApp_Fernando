'use strict'

###*
 # @ngdoc object
 # @name home.controller:HomeCtrl

 # @description

###
class HomeCtrl
  constructor: ->
    @ctrlName = 'HomeCtrl'
    console.log "Contoller Home"

angular
  .module('home')
  .controller 'HomeCtrl', HomeCtrl
