module.exports = (robot) ->
  robot.respond /repos/i, (response) ->
  	robot.http("")
  		.get() (err, res, body) ->
  			response.send "Repos call " + body