'use strict'

angular
  .module 'examApp'
  .config ($urlRouterProvider) ->
    $urlRouterProvider.otherwise '/home'
