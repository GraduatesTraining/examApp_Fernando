'use strict'

###*
 # @ngdoc object
 # @name home.controller:HomeIndexCtrl

 # @description

###
class HomeIndexCtrl
  constructor: ->
    @ctrlName = 'HomeIndexCtrl'

angular
  .module('home')
  .controller 'HomeIndexCtrl', HomeIndexCtrl
