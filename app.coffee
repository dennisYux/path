# lib
require 'coffee-script'
express = require 'express'
http = require 'http'
path = require 'path'
assets = require 'connect-assets'
mongoose = require 'mongoose'

# source
require './app/models/trace'
require './app/models/path'
dbUtils = require './utils/db'
config = require './config/app'
routes = require './config/routes'

app = express()

# all environments
app.set 'port', process.env.PORT || 3000
app.set 'views', __dirname + '/views'
app.set 'view engine', 'jade'
app.use express.favicon()
app.use express.logger 'dev'
app.use express.bodyParser()
app.use express.methodOverride()
app.use express.cookieParser 'play'
app.use express.session()
app.use app.router

# assets pipeline
app.use assets()

# serve static files
app.use express.static path.join(__dirname, 'assets')

# development only
if 'development' == app.get 'env'
  app.use express.errorHandler()

# mongodb
mongoose.connect config[app.get 'env'].db, dbUtils.clearDb dbUtils.seedDb()

# routes
routes app

http.createServer(app).listen app.get('port'), -> 
  console.log 'Express server listening on port ' + app.get 'port'

