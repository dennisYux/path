mod = angular.module 'myApp.controllers', []

home = ($scope) ->

mod.controller 'HomeCtrl', ['$scope', home]

about = ($scope) ->

mod.controller 'AboutCtrl', ['$scope', about]

pathList = ($scope, $http) ->
  # require paths
  $http.get('api/paths').success (data) ->
    $scope.paths = data

mod.controller 'PathListCtrl', ['$scope', '$http', pathList]

pathDetail = ($scope, $http) ->
  # require path details
  $http.get('api/paths/1').success (data) ->
    $scope.pathDetail = data

mod.controller 'PathDetailCtrl', ['$scope', '$http', pathDetail]