'use strict'

###*
 # @ngdoc object
 # @name home.controller:HomeSignupCtrl

 # @description

###
class HomeSignupCtrl
  constructor: ->
    @ctrlName = 'HomeSignupCtrl'

angular
  .module('home')
  .controller 'HomeSignupCtrl', HomeSignupCtrl
