describe 'myApp controllers', ->
  scope = {}

  beforeEach module('myApp.controllers')
  beforeEach inject(
    ($rootScope) ->
      scope = $rootScope.$new()
  )

  describe 'MainCtrl', ->

    beforeEach inject(
      ($controller) ->
        ctrl = $controller 'MainCtrl', {$scope: scope}
    )

