module.exports = (robot) ->
  robot.respond /repos (.*)/i, (response) ->
  	response.send "Repos syntax: repos " + res.match[1]