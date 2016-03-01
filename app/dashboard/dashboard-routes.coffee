'use strict'

angular
  .module 'dashboard'
  .config ($stateProvider) ->
    $stateProvider
      .state 'dashboard',
        abstract: true
        templateUrl: 'dashboard/views/dashboard.tpl.html'
        controller: 'DashboardCtrl'
        controllerAs: 'dashboardCtrl'
        needAuthentication: true
      .state 'dashboard.main',
        url: '/dashboard'
        templateUrl: 'dashboard/views/dashboard-main.tpl.html'
        controller: 'DashboardMainCtrl'
        controllerAs: 'dashboardMain'
        needAuthentication: true
      .state 'dashboard.exams',
        url: '/exams'
        templateUrl: 'dashboard/views/dashboard-exams.tpl.html'
        controller: 'DashboardExamsCtrl'
        controllerAs: 'dashboardExams'
        needAuthentication: true
      .state 'dashboard.stats',
        url: '/stats'
        templateUrl: 'dashboard/views/dashboard-stats.tpl.html'
        controller: 'DashboardStatsCtrl'
        controllerAs: 'dashboardStats'
        needAuthentication: true
      .state 'dashboard.user',
        url: '/user'
        templateUrl: 'dashboard/views/dashboard-user.tpl.html'
        controller: 'DashboardUserCtrl'
        controllerAs: 'dashboardUser'
        needAuthentication: true
