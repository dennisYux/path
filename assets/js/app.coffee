app = angular.module 'myApp', ['myApp.filters', 'myApp.services', 'myApp.directives', 'myApp.controllers']

# 
# Routes config
# 
app.config ['$routeProvider', '$locationProvider', ($routeProvider, $locationProvider) ->
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

  $routeProvider.when '/paths/:pathId/traces/:id', 
    templateUrl: 'partials/traceDetail'
    controller: 'TraceDetailCtrl'

  $routeProvider.otherwise redirectTo: '/paths'
  # $locationProvider.html5Mode true
]


