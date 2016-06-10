module.exports = (robot) ->
  robot.respond /repos/i, (response) ->
  	robot.http("https://api.github.com/users/alorma/repos")
  		.get() (err, res, body) ->
  			response.send "Repos call " + body