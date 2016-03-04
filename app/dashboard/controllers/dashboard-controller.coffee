'use strict'

###*
 # @ngdoc object
 # @name dashboard.controller:DashboardCtrl

 # @description

###
class DashboardCtrl
  @$inject = ['AuthService','$mdSidenav']

  sidenavTopMenu: [
    {
      title: "Dashboard"
      icon: "dashboard"
      ref: "dashboard.main"
    },
    {
      title: "Exams"
      icon: "library_books"
      ref: "dashboard.exams"
    },
    {
      title: "Stats"
      icon: "assessment"
      ref: "dashboard.stats"
    }
  ]
  sidenavBottomMenu = [
    {
      title: "Profile"
      icon: "person"
      ref: "dashboard.user"
    },{
      title: "Logout"
      icon: "power_settings_new"
      ref: ""
    }
  ]
  
  constructor: (@AuthService, @$mdSidenav) ->
    @ctrlName = 'DashboardCtrl'

  toggleSidenav: (menuId) ->
    @$mdSidenav(menuId).toggle()

  logout: ->
    @AuthService.logout()

angular
  .module('dashboard')
  .controller 'DashboardCtrl', DashboardCtrl
