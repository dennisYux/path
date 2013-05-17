mod = angular.module 'myApp.controllers', []

mod.controller 'HomeCtrl', ($scope) -> 
mod.controller 'AboutCtrl', ($scope) -> 

# 
# Path list controller
# 
mod.controller 'PathListCtrl', ($scope, Path) ->
  # request paths
  paths = Path.query ->
  	$scope.paths = paths

# 
# Path detail controller
# 
mod.controller 'PathDetailCtrl', ($scope, $routeParams, Path) ->
  # request path details
  path = Path.get {id: $routeParams.id}, ->
    $scope.path = path

# 
# Trace detail controller
# 
mod.controller 'TraceDetailCtrl', ($scope, $routeParams, Trace) ->
  # request trace details
  trace = Trace.get {pathId: $routeParams.pathId, id: $routeParams.id}, ->
    $scope.trace = trace
