# Description:
#   Uses the redis brain if REDISTOGO_URL is explicitly defined,
#   otherwise does nothing. This allows developers to hack on hubot
#   without having to install redis, while allowing redis to be easily
#   enabled if needed.
#
# Dependencies:
#   "redis": "0.7.2"
#
# Configuration:
#   REDISTOGO_URL
#
# Commands:
#   None
#
# Author:
#   toolness

Path       = require 'path'

module.exports = (robot) ->
  if not process.env.REDISTOGO_URL
    return
  scriptsPath = Path.resolve "node_modules", "hubot-scripts", "src", "scripts"
  robot.loadFile scriptsPath, 'redis-brain.coffee'
