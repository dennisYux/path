async = require 'async'
mongoose = require 'mongoose'
Trace = mongoose.model 'Trace'
Path = mongoose.model 'Path'

# 
# Clear database
# 

exports.clearDb = (done) ->
  callback = (item, fn) ->
    item.remove fn

  async.parallel [
    (cb) ->
      Path.find (err, paths) ->
        async.each paths, callback, cb
    (cb) ->
      Trace.find (err, traces) ->
        async.each traces, callback, cb
  ], done

# 
# Seed database
# 

exports.seedDb = (done) ->
  callback = (item, fn) ->
    item.save fn

  traces = [
    new Trace
      title: 'C++ step-1'
      body: 'Tutorial'
    new Trace
      title: 'C++ step-2'
      body: 'Practice'
    new Trace
      title: 'Java step-1'
      body: 'Tutorial'
    new Trace
      title: 'Java step-2'
      body: 'Practice'
  ]

  paths = [
    new Path
      title: 'C++'
      category: 'Technique'
      traces: [
        traces[0]._id
        traces[1]._id
      ]
    new Path
      title: 'Java'
      category: 'Technique'
      traces: [
        traces[2]._id
        traces[3]._id
      ]
  ]

  async.parallel [
    (cb) -> 
      async.each traces, callback, cb
    (cb) ->
      async.each paths, callback, cb
  ], done

