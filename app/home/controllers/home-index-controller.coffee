'use strict'

###*
 # @ngdoc object
 # @name home.controller:HomeIndexCtrl

 # @description

###
class HomeIndexCtrl
  constructor: ->
    @ctrlName = 'HomeIndexCtrl'
    console.log "Contoller Index"

angular
  .module('home')
  .controller 'HomeIndexCtrl', HomeIndexCtrl
