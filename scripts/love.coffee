module.exports = (robot) ->
	robot.respond /love me/i, (msg) ->
		msg.send "That may be legal here, but my server is in Alabama. We can never be."
