mongoose = require 'mongoose'
Path = mongoose.model 'Path'

#
# List of paths
#
exports.index = (req, res) ->
  # pagination goes here
  # ...
  Path.list (err, paths) ->
    return res.render '500' if err
    res.json paths

#
# Show path
#
exports.show = (req, res) ->
  id = req.params.id
  Path.load id, (err, path) ->
    return res.render '500' if err
    res.json path
