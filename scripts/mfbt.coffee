# Hubot will let you know if it's mfbt
#
# mfbt - Is it?

module.exports = (robot) ->
  robot.hear /((is it)|(it is)|(it\'s)) mfbt/i, (msg) ->
    now = new Date
    hour = now.getUTCHours()
    day = now.getDay()
    if day > 0 and day < 6 and hour < 17 and hour > 7
      msg.send "Sadly no, it is not mfbt."
    else
      msg.send "http://isitmfbt.com/fuck-yes.png"