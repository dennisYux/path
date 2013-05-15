mongoose = require 'mongoose'
require './utils'
Trace = mongoose.model 'Trace'
Path = mongoose.model 'Path'

describe 'Trace', ->
  trace = null

  beforeEach ->
    # create a trace
    trace = new Trace      
      title: 'C++ step-1'
      body: 'Tutorial'

  describe 'Auto update fields', ->
    it 'should auto set createdAt to current time only the first time a trace is saved', (done) ->
      trace.save ->
        trace.createdAt.getTime().should.be.closeTo Date.now(), 1000
        trace.createdAt = new Date(1) # wrong date
        trace.save ->
          trace.createdAt.getTime().should.equal 1
      done()

    it 'should auto set updatedAt to current time each time a trace is saved', (done) ->
      trace.save ->
        trace.updatedAt.getTime().should.be.closeTo Date.now(), 1000
        trace.updatedAt = new Date(1) # wrong date
        trace.save ->
          trace.updatedAt.getTime().should.be.closeTo Date.now(), 1000
      done()
