module.exports = (robot) ->
  robot.respond /repos (.*)/i, (response) ->
  	robot.http("https://api.github.com/users/" + response.match[1] + "/repos")
    	.get() (err, res, body) ->
    		data = JSON.parse body
    		send = "Num repos downloaded: " +  data.length + "\n"
    		send = send + repo.full_name + "\n" for repo in data
    		response.send send
  robot.respond /repos$/i, (response) ->
  	response.send "Repos syntax: `repos {:username}`"