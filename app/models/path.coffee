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

# 
# Validations
# 

# 
# Pre/post process
# 


# 
# Methods
# 
PathSchema.methods = {}


# 
# Statics
# 
PathSchema.statics = 
  load: (id, cb) ->
    this
    .findOne({_id: id})
    .populate('traces')
    .exec(cb)

  list: (cb) ->
    this
    .find()
    .exec(cb)

mongoose.model 'Path', PathSchema


