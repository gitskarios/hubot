module.exports = (robot) ->
  robot.respond /repos (.*)/i, (response) ->
  	robot.http("https://api.github.com/users/" + response.match[1] + "/repos")
    	.get() (err, res, body) ->
    		response.send "Response!!!!!"
  robot.respond /repos$/i, (response) ->
  	response.send "Repos syntax: `repos {:username}`"