module.exports = (robot) ->
  robot.respond /repos (.*)/i, (response) ->
  	robot.http("https://api.github.com/users/" + response.match[1] + "/repos")
    	.get() (err, res, body) ->
    		data = JSON.parse body
    		response.send "Data: " +  data.length
    		for repo in data 
    			do  -> response.send #{repo.full_name}
  robot.respond /repos$/i, (response) ->
  	response.send "Repos syntax: `repos {:username}`"