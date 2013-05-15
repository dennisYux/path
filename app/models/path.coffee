mongoose = require 'mongoose'
Schema = mongoose.Schema

# 
# Path schema
# 
PathSchema = new Schema
  title: 
    type: String
    default: ''
    trim: true
  category: 
    type: String
    default: ''
    trim: true
  image:
    cdnUrl: String
    files: []
  traces: [
    type: Schema.Types.ObjectId
    ref: 'Trace'
  ]
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
PathSchema.pre 'save', (next) ->
  this.createdAt = this.createdAt || Date.now if this.isNew
  this.updatedAt = Date.now
  next()

# 
# Methods
# 
PathSchema.methods = {}


# 
# Statics
# 
PathSchema.statics = 
  load: (id, cb) ->
    this.findOne({_id: id}).populate('traces').exec(cb)

  list: (cb) ->
    this.find().exec(cb)

mongoose.model 'Path', PathSchema


