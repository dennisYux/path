describe 'myApp controllers', ->

  scope = null

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

    describe 'PathListCtrl', ->

      pathListScope = null
      $httpBackend = null

      beforeEach inject(
        (_$httpBackend_, $controller) ->
          $httpBackend = _$httpBackend_
          $httpBackend.expectGET('api/paths').respond [
            {name: 'C++'}
            {name: 'Java'}
          ]

          pathListScope = scope.$new()
          pathListCtrl = $controller 'PathListCtrl', {$scope: pathListScope}
      )

      it 'should create paths model with 2 paths fetched from xhr', ->
        expect(pathListScope.paths).toBeUndefined()
        $httpBackend.flush()
        expect(pathListScope.paths).toEqual [
          {name: 'C++'}
          {name: 'Java'}
        ]

  describe 'AboutCtrl', ->

    beforeEach inject(
      ($controller) ->
        ctrl = $controller 'AboutCtrl', {$scope: scope}
    )

