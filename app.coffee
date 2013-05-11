# lib
express = require 'express'
http = require 'http'
path = require 'path'
assets = require 'connect-assets'
coffee = require 'coffee-script'

# source
routes = require './routes'
apis = require './routes/api'

app = express()

# all environments
app.set 'port', process.env.PORT || 3000
app.set 'views', __dirname + '/views'
app.set 'view engine', 'jade'
app.use express.favicon()
app.use express.logger('dev')
app.use express.bodyParser()
app.use express.methodOverride()
app.use express.cookieParser('play')
app.use express.session()
app.use app.router

# assets pipeline
app.use assets()

# serve static files
app.use express.static(path.join(__dirname, 'assets'))

# development only
if 'development' == app.get('env')
  app.use express.errorHandler()

# routes
app.get '/', routes.index
app.get '/partials/:name', routes.partials

# json
app.get '/api/paths', apis.fetchPaths
app.get '/api/paths/:id', apis.fetchPath

# redirect all others to the index 
# app.use routes.index

http.createServer(app).listen(app.get('port'), -> 
  console.log 'Express server listening on port ' + app.get('port')
)
