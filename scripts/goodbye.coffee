goodbyes = [
  "Bye, {name}.",
  "Later, {name}.",
  "Take care, {name}.",
  "Peace out, {name}!",
  "Take it easy, {name}.",
  "Stay safe out there, {name}.",
  "Catch you on the flipside, {name}!",
  "I feel so lonely without you, {name}...",
  "Hope you have a very Rifle day, {name}."
]

goodbye = (name) ->
  index = parseInt(Math.random() * goodbyes.length)
  message = goodbyes[index]
  message.replace(/{name}/, name);

module.exports = (robot) ->
  robot.hear /(bye|later),?\s(.*)/i, (msg) ->
    if robot.name.toLowerCase() == msg.match[2].toLowerCase()
      byeMessage = goodbye(msg.message.user.name)
      msg.send(byeMessage)
