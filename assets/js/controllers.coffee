mod = angular.module 'myApp.controllers', []

mod.controller 'MainCtrl', ['$scope', ($scope) ->
  $scope.title = "Angular"
  $scope.greeting = "Welcome to Angular"
]

