mod = angular.module 'myApp.controllers', []

main = ($scope) ->
  $scope.title = "Angular"
  $scope.greeting = "Welcome to Angular"

mod.controller 'MainCtrl', ['$scope', main]