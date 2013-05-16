mod = angular.module 'myApp.services', ['ngResource']

# 
# Path with resource methods
# 
mod.factory 'Path', ($resource) ->
  return $resource '/api/paths/:id', {id: '@id'}

# 
# Trace with resource methods
# 
mod.factory 'Trace', ($resource) ->
  return $resource '/api/paths/:pathId/traces/:id', {pathId: '@pathId', id: '@id'}
