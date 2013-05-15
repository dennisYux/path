mongoose = require 'mongoose'
Schema = mongoose.Schema

# 
# Getters and setters
# 
getTags = (tags) ->
  tags.join ','

setTags = (tags) ->
  tags.split ','

# 
# Trace schema
# 
TraceSchema = new Schema 
  title:
    type: String
    default: ''
    trim: true
  body:
    type: String
    default: ''
    trim: true
  image:
    cdnUrl: String
    files: []
  createdAt: 
    type: Date
    default: Date.now
  tags: 
    type: []
    get: getTags
    set: setTags

mongoose.model 'Trace', TraceSchema
