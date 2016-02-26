'use strict'

angular
  .module 'home'
  .config ($stateProvider) ->
    $stateProvider
      .state 'home',
        abstract: true
        templateUrl: 'home/views/home.tpl.html'
        controller: 'HomeCtrl'
        controllerAs: 'home'
      .state 'home.index',
        url: '/home'
        templateUrl: 'home/views/home-index.tpl.html'
        controller: 'HomeIndexCtrl'
        controllerAs: 'homeIndex'
      .state 'home.login',
        url: '/login'
        templateUrl: 'home/views/home-login.tpl.html'
        controller: 'HomeLoginCtrl'
        controllerAs: 'homeLogin'
      .state 'home.signup',
        url: '/signup'
        templateUrl: 'home/views/home-signup.tpl.html'
        controller: 'HomeSignupCtrl'
        controllerAs: 'homeSignup'