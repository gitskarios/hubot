module.exports = (robot) ->
  robot.hear /hi/i, (res) ->
    res.send "Hi"
  robot.respond /hi/i, (res) ->
    res.send "Hi"