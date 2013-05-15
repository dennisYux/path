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

  clearPaths = (cb) ->
    Path.find (err, paths) ->
      async.each paths, callback, cb

  clearTraces = (cb) ->
    Trace.find (err, traces) ->
      async.each traces, callback, cb

  async.parallel [clearPaths, clearTraces], done

# 
# Seed database
# 

exports.seedDb = (done) ->

  callback = (item, fn) ->
    item.save fn

  paths = [

    new Path
      title: 'C++'
      category: 'Technique'
    new Path
      title: 'Java'
      category: 'Technique'
  ]

  seedPaths = (cb) ->
    async.each paths, callback, cb

  async.parallel [seedPaths], done

