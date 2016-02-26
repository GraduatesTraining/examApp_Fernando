'use strict'

angular
  .module 'myCognizantTraining'
  .config ($urlRouterProvider) ->
    $urlRouterProvider.otherwise '/home'
