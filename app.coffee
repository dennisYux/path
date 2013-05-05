coffee = require 'coffee-script'
stylus = require 'stylus'
express = require 'express'
routes = require './routes'
http = require 'http'
path = require 'path'

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

# serve static files
app.use stylus.middleware(__dirname + '/public')
app.use express.static(path.join(__dirname, 'public'))

# development only
if 'development' == app.get('env')
  app.use express.errorHandler()

# routes
app.get '/', routes.index

http.createServer(app).listen(app.get('port'), -> 
  console.log 'Express server listening on port ' + app.get('port')
)
