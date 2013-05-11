app = angular.module 'myApp', ['myApp.filters', 'myApp.services', 'myApp.directives', 'myApp.controllers']

config = ($routeProvider, $locationProvider) -> 
  $routeProvider.when '/', 
    templateUrl: 'partials/home'
    controller: 'HomeCtrl'

  $routeProvider.when '/about', 
    templateUrl: 'partials/about'
    controller: 'AboutCtrl'

  $routeProvider.when '/paths', 
    templateUrl: 'partials/pathList'
    controller: 'PathListCtrl'

  $routeProvider.when '/paths/:id', 
    templateUrl: 'partials/pathDetail'
    controller: 'PathDetailCtrl'

  $routeProvider.otherwise redirectTo: '/paths'
  # $locationProvider.html5Mode true

app.config ['$routeProvider', '$locationProvider', config]


