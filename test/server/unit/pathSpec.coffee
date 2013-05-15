mongoose = require 'mongoose'
require './utils'
Trace = mongoose.model 'Trace'
Path = mongoose.model 'Path'

describe 'Path', ->
  path = null

  beforeEach ->
    # create a path
    path = new Path      
      title: 'C++'
      category: 'Technique'

  describe 'Auto update fields', ->
    it 'should auto set createdAt to current time only the first time a path is saved', (done) ->
      path.save ->
        path.createdAt.getTime().should.be.closeTo Date.now(), 1000
        path.createdAt = new Date(1) # wrong date
        path.save ->
          path.createdAt.getTime().should.equal 1
      done()

    it 'should auto set updatedAt to current time each time a path is saved', (done) ->
      path.save ->
        path.updatedAt.getTime().should.be.closeTo Date.now(), 1000
        path.updatedAt = new Date(1) # wrong date
        path.save ->
          path.updatedAt.getTime().should.be.closeTo Date.now(), 1000
      done()