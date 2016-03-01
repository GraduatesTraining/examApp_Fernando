'use strict'

###*
 # @ngdoc object
 # @name dashboard.controller:DashboardExamsCtrl

 # @description

###
class DashboardExamsCtrl
  constructor: ->
    @ctrlName = 'DashboardExamsCtrl'

angular
  .module('dashboard')
  .controller 'DashboardExamsCtrl', DashboardExamsCtrl
