describe 'myApp controllers', ->

  scope = null

  beforeEach module('myApp.controllers')
  beforeEach module('myApp.services')

  # Create a matcher for comparing data 
  beforeEach ->
    this.addMatchers
      toEqualData: (expected) ->
        return angular.equals(this.actual, expected)

  beforeEach inject ($rootScope) ->
    scope = $rootScope.$new()

  describe 'PathListCtrl', ->

    $httpBackend = null

    beforeEach inject (_$httpBackend_, $controller) ->
      $httpBackend = _$httpBackend_
      $httpBackend.expectGET('/api/paths').respond [
        {name: 'C++'}
        {name: 'Java'}
      ]
      ctrl = $controller 'PathListCtrl', {$scope: scope}
    

    it 'should create paths model with 2 paths fetched from xhr', ->
      expect(scope.paths).toBeUndefined
      $httpBackend.flush()
      expect(scope.paths).toEqualData [
        {name: 'C++'}
        {name: 'Java'}
      ]

  describe 'PathDetailCtrl', ->

    $httpBackend = null

    beforeEach inject (_$httpBackend_, $routeParams, $controller) ->
      $httpBackend = _$httpBackend_
      $httpBackend.expectGET('/api/paths/1').respond {
        name: 'C++'
        author: 'Jack'
      }        
      $routeParams.id = 1
      ctrl = $controller 'PathDetailCtrl', {$scope: scope}    

    it 'should create pathDetail model with 1 path fetched from xhr', ->
      expect(scope.path).toBeUndefined()
      $httpBackend.flush()
      expect(scope.path).toEqualData {
        name: 'C++'
        author: 'Jack'
      }

  describe 'TraceDetailCtrl', ->

    $httpBackend = null

    beforeEach inject (_$httpBackend_, $routeParams, $controller) ->
      $httpBackend = _$httpBackend_
      $httpBackend.expectGET('/api/paths/1/traces/1').respond {
        name: 'C++'
        author: 'Jack'
      }        
      $routeParams.pathId = 1
      $routeParams.id = 1
      ctrl = $controller 'TraceDetailCtrl', {$scope: scope}    

    it 'should create traceDetail model with 1 trace fetched from xhr', ->
      expect(scope.trace).toBeUndefined()
      $httpBackend.flush()
      expect(scope.trace).toEqualData {
        name: 'C++'
        author: 'Jack'
      }

