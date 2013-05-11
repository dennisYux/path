app = angular.module 'myApp', ['myApp.filters', 'myApp.services', 'myApp.directives', 'myApp.controllers']

config = ($routeProvider, $locationProvider) -> 
  $routeProvider.when '/', 
    templateUrl: 'partials/home'
    controller: 'HomeCtrl'

  $routeProvider.when '/paths/:id', 
    templateUrl: 'partials/pathDetail'
    controller: 'PathDetailCtrl'

  $routeProvider.when '/about', 
    templateUrl: 'partials/about'
    controller: 'AboutCtrl'

  $routeProvider.otherwise redirectTo: '/'
  # $locationProvider.html5Mode true

app.config ['$routeProvider', '$locationProvider', config]


