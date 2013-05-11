mod = angular.module 'myApp.controllers', []

mod.controller 'MainCtrl', ['$scope', ($scope) ->
  $scope.title = "Angular"
  $scope.greeting = "Welcome to Angular"
]

mod.controller 'NavbarListCtrl', ['$scope', ($scope) ->
  $scope.navsList = [
    {
      label: 'Home'
      link: '#/main'
    }
    {
      label: 'About'
      link: '#/about'
    }
  ]
]