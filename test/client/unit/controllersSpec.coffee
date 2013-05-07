describe 'myApp controllers', ->
  describe 'MainCtrl', ->
    scope = {}

    beforeEach module('myApp') 
    beforeEach inject(
      ($rootScope, $controller) ->
        scope = $rootScope.$new()
        ctrl = $controller 'MainCtrl', {$scope: scope}
    )

    it 'should have greeting messages', ->
      expect(scope.title).toBe 'Angular'
      expect(scope.greeting).toBe 'Welcome to Angular'
