module.exports = (robot) ->
  robot.respond /repos (.*)/i, (response) ->
  	robot.http("https://api.github.com/users/" + response.match[1] + "/repos")
    	.get() (err, res, body) ->
    		data = JSON.parse body
    		response.send "Num repos downloaded: " +  data.length
    		response.send "NUMBER: " +  data.length
    		response.send #{repo.full_name} for repo in data 
  robot.respond /repos$/i, (response) ->
  	response.send "Repos syntax: `repos {:username}`"