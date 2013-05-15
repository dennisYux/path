home = require '../app/controllers/home'
paths = require '../app/controllers/paths'

module.exports = (app) ->
  # routes
  app.get '/', home.index
  app.get '/partials/:name', home.partials

  # json
  app.get '/api/paths', paths.index
  app.get '/api/paths/:id', paths.show
 
  # app.use home.index