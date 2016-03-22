# Description:
#   Rodent Motivation
#
#   Set the environment variable HUBOT_SHIP_EXTRA_SQUIRRELS (to anything)
#   for additional motivation
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_SHIP_EXTRA_SQUIRRELS
#
# Commands:
#   ship it - Display a motivation squirrel
#
# Author:
#   maddox

squirrels = [
  "http://i.imgur.com/RLQpXfX.png",
  "http://i.imgur.com/sA1h34D.jpg",
  "http://i.imgur.com/DEnnA6m.jpg",
  "http://i.imgur.com/oHJIlXI.jpg",
  "http://i.imgur.com/DPVM1.png",
  "http://i.imgur.com/BVpkdrU.jpg",
  "http://i.imgur.com/NSanWiX.jpg",
  "http://i.imgur.com/TEVqIZQ.jpg",
  "http://i.imgur.com/mUuDkyK.jpg",
  "http://i.imgur.com/ERCNrhd.jpg",
  "http://i.imgur.com/nxMZSJi.png"
]

module.exports = (robot) ->

  # Enable a looser regex if environment variable is set
  if process.env.HUBOT_SHIP_EXTRA_SQUIRRELS
    regex = /\bship(ping|z|s|ped)?\s*it\b/i
  else
    regex = /\bship\s*it\b/i

  robot.hear regex, (msg) ->
    msg.send msg.random squirrels
