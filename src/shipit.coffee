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
  "http://shipitsquirrel.github.io/images/ship%20it%20squirrel.png",
  "http://28.media.tumblr.com/tumblr_lybw63nzPp1r5bvcto1_500.jpg",
  "http://i.imgur.com/DPVM1.png",
  "http://d2f8dzk2mhcqts.cloudfront.net/0772_PEW_Roundup/09_Squirrel.jpg",
  "http://www.cybersalt.org/images/funnypictures/s/supersquirrel.jpg",
  "http://www.zmescience.com/wp-content/uploads/2010/09/squirrel.jpg",
  "http://1.bp.blogspot.com/_v0neUj-VDa4/TFBEbqFQcII/AAAAAAAAFBU/E8kPNmF1h1E/s640/squirrelbacca-thumb.jpg",
  "https://dl.dropboxusercontent.com/u/602885/github/squirrelmobster.jpeg",
  "http://4.bp.blogspot.com/_GnCoAxcvoNQ/THduga-RWzI/AAAAAAAAA8E/T9Cs7UDv2l4/s1600/squirrel4.jpg",
  "https://i.pinimg.com/564x/11/b0/e7/11b0e776feb91b9b0517a6e670748141.jpg",
  "https://i.pinimg.com/564x/55/57/b8/5557b87147f227c4256017842f4364d4.jpg",
  "https://i.pinimg.com/564x/cd/9f/6f/cd9f6f8177a390bdc55d7437e6894eee.jpg",
  "https://i.pinimg.com/564x/e5/cc/ef/e5ccef5dcc9729601d8234815223e221.jpg",
]

module.exports = (robot) ->

  # Enable a looser regex if environment variable is set
  if process.env.HUBOT_SHIP_EXTRA_SQUIRRELS
    regex = /\bship(ping|z|s|ped)?\s*it\b/i
  else
    regex = /\bship\s*it\b/i

  robot.hear regex, (msg) ->
    msg.send msg.random squirrels
