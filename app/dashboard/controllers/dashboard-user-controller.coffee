'use strict'

###*
 # @ngdoc object
 # @name dashboard.controller:DashboardUserCtrl

 # @description

###
class DashboardUserCtrl
  constructor: ->
    @ctrlName = 'DashboardUserCtrl'

angular
  .module('dashboard')
  .controller 'DashboardUserCtrl', DashboardUserCtrl
