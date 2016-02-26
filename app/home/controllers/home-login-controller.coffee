'use strict'

###*
 # @ngdoc object
 # @name home.controller:HomeLoginCtrl

 # @description

###
class HomeLoginCtrl
  @$inject = ['AuthService']

  credentials: {
    email: undefined
    password: undefined
  }

  constructor: (@AuthService) ->
    @ctrlName = 'HomeLoginCtrl'

  login: ->
    @AuthService.login(@credentials)

angular
  .module('home')
  .controller 'HomeLoginCtrl', HomeLoginCtrl
