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