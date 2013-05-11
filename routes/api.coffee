exports.fetchPaths = (req, res) ->
  # fake data
  paths = [
    {
      id: 1
      name: 'C++'
      steps: [
        {
          time: 'Sep 1st, 2007'
          action: 'C++ Course'
        }
        {
          time: 'Dec 1st, 2007'
          action: 'C++ Homework'
        }
      ]
      level: 'advanced'
    }
    {
      id: 2
      name: 'Java'
      steps: [
        {
          time: 'Oct 1st, 2009'
          action: 'Thinking in Java'
        }
        {
          time: 'Dec 1st, 2010'
          action: 'Fiber channel management software'
        }
      ]
      level: 'advanced'
    }
  ]
  res.json paths

exports.fetchPath = (req, res) ->
  id = req.params.id
  console.log id
  # fake data
  path = {
    id: id
    name: 'C++'
    author: 'Jack'
  }
  res.json path
