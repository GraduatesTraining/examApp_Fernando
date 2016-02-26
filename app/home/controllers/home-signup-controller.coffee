'use strict'

###*
 # @ngdoc object
 # @name home.controller:HomeSignupCtrl

 # @description

###
class HomeSignupCtrl
  @$inject = ['AuthService']

  constructor: (@AuthService) ->
    @ctrlName = 'HomeSignupCtrl'
    @credentials = @signup_credentials()

  signup_credentials: ->
    {
      username: undefined
      email: undefined
      password: undefined
    }

  signup: ->
    @AuthService.signup(@credentials)

angular
  .module('home')
  .controller 'HomeSignupCtrl', HomeSignupCtrl
