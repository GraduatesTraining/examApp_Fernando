'use strict'

###*
 # @ngdoc object
 # @name dashboard.controller:DashboardCtrl

 # @description

###
class DashboardCtrl
  @$inject = ['AuthService','$mdSidenav']

  constructor: (@AuthService, @$mdSidenav) ->
    @ctrlName = 'DashboardCtrl'

  toggleSidenav: (menuId) ->
    @$mdSidenav(menuId).toggle()

  logout: ->
    @AuthService.logout()

angular
  .module('dashboard')
  .controller 'DashboardCtrl', DashboardCtrl
