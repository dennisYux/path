mod = angular.module 'myApp.controllers', []

home = ($scope) ->

mod.controller 'HomeCtrl', ['$scope', home]

about = ($scope) ->

mod.controller 'AboutCtrl', ['$scope', about]