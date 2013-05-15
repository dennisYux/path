describe 'myApp controllers', ->

  scope = null

  beforeEach module('myApp.controllers')
  beforeEach inject(
    ($rootScope) ->
      scope = $rootScope.$new()
  )

  describe 'PathListCtrl', ->

    $httpBackend = null

    beforeEach inject(
      (_$httpBackend_, $controller) ->
        $httpBackend = _$httpBackend_
        $httpBackend.expectGET('api/paths').respond [
          {name: 'C++'}
          {name: 'Java'}
        ]
        ctrl = $controller 'PathListCtrl', {$scope: scope}
    )

    it 'should create paths model with 2 paths fetched from xhr', ->
      expect(scope.paths).toBeUndefined()
      $httpBackend.flush()
      expect(scope.paths).toEqual [
        {name: 'C++'}
        {name: 'Java'}
      ]

  describe 'PathDetailCtrl', ->

    $httpBackend = null

    beforeEach inject(
      (_$httpBackend_, $controller) ->
        $httpBackend = _$httpBackend_
        $httpBackend.expectGET('api/paths/1').respond {
          name: 'C++'
          author: 'Jack'
        }        
        ctrl = $controller 'PathDetailCtrl', {$scope: scope}
    )

    it 'should create pathDetail model with 1 path fetched from xhr', ->
      expect(scope.path).toBeUndefined()
      $httpBackend.flush()
      expect(scope.path).toEqual {
        name: 'C++'
        author: 'Jack'
      }

