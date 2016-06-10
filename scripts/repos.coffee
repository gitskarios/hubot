module.exports = (robot) ->
  robot.respond /repos/i, (response) ->
  	response.send "Repos syntax: {repos {:username}"
  robot.respond /repos (.*)/i, (response) ->
  	response.send "Repos frrom repos " + res.match[1]