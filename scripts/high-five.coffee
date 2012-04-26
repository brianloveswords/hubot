# Hubot enjoys giving high fives
#
# high five - give hubot some daps.

module.exports = (robot) ->
  robot.respond /high.?five/i, (msg) ->
    console.dir msg
    msg.send "/me slaps #{msg.message.user.name} five!"
