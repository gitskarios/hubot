module.exports = (robot) ->
  robot.respond /hi/i, (res) ->
    res.send "Hi"
  robot.respond /hello/i, (res) ->
    res.send "Hello"