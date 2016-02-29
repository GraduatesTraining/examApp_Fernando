'use strict'

###*
 # @ngdoc object
 # @name dashboard.controller:DashboardMainCtrl

 # @description

###
class DashboardMainCtrl
  constructor: ->
    @ctrlName = 'DashboardMainCtrl'

angular
  .module('dashboard')
  .controller 'DashboardMainCtrl', DashboardMainCtrl
