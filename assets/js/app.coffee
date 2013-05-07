app = angular.module 'myApp', ['myApp.filters', 'myApp.services', 'myApp.directives', 'myApp.controllers']

config = ($routeProvider, $locationProvider) ->  
  $routeProvider.when '/', 
    templateUrl: 'partials/main'
    controller: 'MainCtrl'

  $routeProvider.when '/main', 
    templateUrl: 'partials/main'
    controller: 'MainCtrl'

  $routeProvider.otherwise redirectTo: '/main'
  # $locationProvider.html5Mode true

app.config ['$routeProvider', '$locationProvider', config]


