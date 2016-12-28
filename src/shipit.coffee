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
  "https://camo.githubusercontent.com/dfd5b1e5bd069d89d70ef0416a9fe41f0c7a57d4/687474703a2f2f692e696d6775722e636f6d2f73374d52672e6a7067",
  "https://shipitsquirrel.github.io/images/squirrel.png",
  "https://media.tumblr.com/tumblr_lybw63nzPp1r5bvcto1_500.jpg",
  "http://i.imgur.com/DPVM1.png",
  "http://d2f8dzk2mhcqts.cloudfront.net/0772_PEW_Roundup/09_Squirrel.jpg",
  "http://www.cybersalt.org/images/funnypictures/s/supersquirrel.jpg",
  "http://www.zmescience.com/wp-content/uploads/2010/09/squirrel.jpg",
  "https://dl.dropboxusercontent.com/u/602885/github/sniper-squirrel.jpg",
  "http://1.bp.blogspot.com/_v0neUj-VDa4/TFBEbqFQcII/AAAAAAAAFBU/E8kPNmF1h1E/s640/squirrelbacca-thumb.jpg",
  "https://dl.dropboxusercontent.com/u/602885/github/soldier-squirrel.jpg",
  "https://dl.dropboxusercontent.com/u/602885/github/squirrelmobster.jpeg",
  "https://40.media.tumblr.com/8732a803c04c32dbc04c6cb37add2c44/tumblr_nm3d0o27Rc1urg4cfo1_500.jpg",
  "http://www.boonut.info/pics/squirrel.jpg",
  "http://www.freakingnews.com/pictures/44500/Batman-Squirrel-44792.jpg",
  "https://s-media-cache-ak0.pinimg.com/236x/22/c7/61/22c761f2b65cd28e70b6c6165e691e72.jpg",
]

module.exports = (robot) ->

  # Enable a looser regex if environment variable is set
  if process.env.HUBOT_SHIP_EXTRA_SQUIRRELS
    regex = /\bship(ping|z|s|ped)?\s*it\b/i
  else
    regex = /\bship\s*it\b/i

  robot.hear regex, (msg) ->
    msg.send msg.random squirrels
