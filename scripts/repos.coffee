module.exports = (robot) ->
  robot.respond /repos (.*)/i, (response) ->
  	if (res.match[1] is not "")
	  	robot.http("https://api.github.com/users/" + res.match[1] + "/repos")
	  		.get() (err, res, body) ->
	  			response.send "Repos call " + body
	 else 
	 	response.send "Empty username"