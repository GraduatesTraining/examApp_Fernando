'use strict'

###*
 # @ngdoc object
 # @name home.controller:HomeLoginCtrl

 # @description

###
class HomeLoginCtrl
  @$inject = ['AuthService']

  constructor: (@AuthService) ->
    @ctrlName = 'HomeLoginCtrl'
    @credentials = @login_credentials()

  login_credentials: ->
    {
      email: undefined
      password: undefined
    }

  login: ->
    @AuthService.login(@credentials)

  githubLogin: ->
    @AuthService.githubLogin()

angular
  .module('home')
  .controller 'HomeLoginCtrl', HomeLoginCtrl
