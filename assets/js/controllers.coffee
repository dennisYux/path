mod = angular.module 'myApp.controllers', []

home = ($scope) ->

mod.controller 'HomeCtrl', ['$scope', home]

about = ($scope) ->

mod.controller 'AboutCtrl', ['$scope', about]

pathList = ($scope, $http) ->
  # request paths
  $http.get('api/paths').success (data) ->
    $scope.paths = data

mod.controller 'PathListCtrl', ['$scope', '$http', pathList]

pathDetail = ($scope, $routeParams, $http) ->
  # request path details
  $http.get('api/paths/'+$routeParams.pathId).success (data) ->
    $scope.path = data

mod.controller 'PathDetailCtrl', ['$scope', '$routeParams', '$http', pathDetail]