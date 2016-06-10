module.exports = (robot) ->
  robot.respond /repos (.*)/i, (response) ->
  	response.send "Repos from: \*" + response.match[1] + "\*"
  robot.respond /repositories/i, (response) ->
  	response.send "Repos syntax: `repos {:username}`"