describe 'myApp controllers', ->
  scope = {}

  beforeEach module('myApp.controllers')
  beforeEach inject(
    ($rootScope) ->
      scope = $rootScope.$new()
  )

  describe 'HomeCtrl', ->

    beforeEach inject(
      ($controller) ->
        ctrl = $controller 'HomeCtrl', {$scope: scope}
    )

  describe 'AboutCtrl', ->

    beforeEach inject(
      ($controller) ->
        ctrl = $controller 'AboutCtrl', {$scope: scope}
    )

