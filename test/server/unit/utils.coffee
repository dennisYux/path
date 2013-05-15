mongoose = require 'mongoose'
should = require('chai').should()

try  
  Trace = mongoose.model 'Trace'
  Path = mongoose.model 'Path'
catch MissingSchemaError
  require '../../../app/models/trace'
  require '../../../app/models/path'
  Trace = mongoose.model 'Trace'
  Path = mongoose.model 'Path'

dbUtils = require '../../../utils/db'
config = require '../../../config/app'

# ensure NODE_ENV is set to 'test'
process.env.NODE_ENV = 'test';

beforeEach (done) ->
  # create connection
  mongoose.connect config.test.db if mongoose.connection.readyState == 0
  dbUtils.clearDb()
  done()

afterEach (done) ->
  mongoose.disconnect()
  done()