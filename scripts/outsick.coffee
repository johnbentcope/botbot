fs	= require 'fs'
userList = 'usersfeb23.json'

foo = ->
	fs.readFileSync userList, 'utf8'
#for uname in JSON.parse(foo()).members
#  employees.push
#    "firstName" : uname.profile.first_name
#    "lastName"  : uname.profile.last_name


  #msg.reply "#{uname.profile.first_name} #{uname.profile.last_name} - #{uname.id}"


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
		msg.emote "is not smart enough to remember the list yet, so don't rely on me for this service. It's just for fun now."
