app = angular.module 'myApp', []

app.controller 'MainCtrl', ['$scope', ($scope) ->
  $scope.title = "Angular"
  $scope.greeting = "Welcome to Angular"
]

