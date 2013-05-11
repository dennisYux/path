describe 'myApp controllers', ->

  beforeEach module('myApp.controllers')

  describe 'MainCtrl', ->
    scope = {}
    
    beforeEach inject(
      ($rootScope, $controller) ->
        scope = $rootScope.$new()
        ctrl = $controller 'MainCtrl', {$scope: scope}
    )

  describe 'NavbarListCtrl', ->
    scope = {}

    beforeEach inject(
      ($rootScope, $controller) ->
        scope = $rootScope.$new()
        ctrl = $controller 'NavbarListCtrl', {$scope: scope}
    )

    it 'should create 2 navs', ->
      expect(scope.navsList.length).toBe 2

  describe 'CreateNoteCtrl', ->

    it 'should do sth.', ->

