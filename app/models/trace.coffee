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
  tags: 
    type: []
    get: getTags
    set: setTags
  createdAt: 
    type: Date
    default: Date.now
  updatedAt: 
    type: Date
    default: Date.now


# 
# Validations
# 

# 
# Pre/post process
# 
TraceSchema.pre 'save', (next) ->
  this.createdAt = this.createdAt || Date.now if this.isNew
  this.updatedAt = Date.now
  next()

mongoose.model 'Trace', TraceSchema
