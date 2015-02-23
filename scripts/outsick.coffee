# fs	= require 'fs'
# fs.readFile './users.json', (err, data) -> fileText = data

staff = [
	'Alex Acevedo',
	'Amanda Mestdagh',
	'Anna Bond',
	'Anna May',
]

module.exports = (robot) ->
	robot.respond /(.*) is out( (.*))?/i, (msg) ->
		outName = msg.match[1]
		status = msg.match[2] || "null"
		status = status.trim()
		if status == ""
		  status = "null"
		minder = msg.message.user.name
		if status == "sick"
		  msg.reply "So #{outName} called out sick? I don't believe them, but I'll add them to the list."
		else if status == "vacationing"
		  msg.reply "Oh well that's nice, #{outName} deserves a break#{status}. I'll add them to the list."
		else if status is "null"
		  msg.reply "#{outName}? No excuse? No surprise. I'll add them to the list."
		else
		  msg.reply "So #{outName} is out #{status}? That's nifty. I'll add them to the list."
		#msg.reply fileText
