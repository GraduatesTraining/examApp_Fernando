'use strict'

###*
 # @ngdoc object
 # @name dashboard.controller:DashboardStatsCtrl

 # @description

###
class DashboardStatsCtrl
  constructor: ->
    @ctrlName = 'DashboardStatsCtrl'

angular
  .module('dashboard')
  .controller 'DashboardStatsCtrl', DashboardStatsCtrl
