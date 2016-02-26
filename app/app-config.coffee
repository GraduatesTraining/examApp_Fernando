'use strict'

AuthenticationManagement = ($rootScope, $state, AuthService) ->
  $rootScope.$on "$stateChangeStart",
  (event, toState, toParams, fromState, fromParams) ->
    if toState.needAuthentication && !AuthService.isAuthenticated()
      $state.transitionTo 'home.login'
      event.preventDefault()

angular
  .module 'myCognizantTraining'
  .run AuthenticationManagement



