# Hubot enjoys giving high fives
#
# high five - give hubot some daps.
responses = [
  'http://www.transparencyrevolution.com/wp-content/uploads/2012/01/HighFive.jpeg',
  'http://2.bp.blogspot.com/-yyWZyLrC2Qk/TyvnbteVQGI/AAAAAAAAAc8/HMRB5GD9Zik/s1600/internet_high_five-2496.jpg',
  'http://1.bp.blogspot.com/-lhXuymN6k1Q/T3g9krHohXI/AAAAAAAAA4o/R0rD0HLUeM4/s1600/High-Five.jpg',
  'http://bubbasmith.net/wp-content/uploads/2011/07/7177.jpg',
  'http://26.media.tumblr.com/tumblr_m2lcdwcu5f1rqfhi2o1_250.gif',
  'http://media.tumblr.com/tumblr_m1iaczvycj1rqfhi2o1_500.gif',
  'http://media.tumblr.com/tumblr_m0js4pWDPF1qhf6pn.gif',
  'http://x54.xanga.com/8abe30e0c0334276270977/z219908819.gif',
  'http://x84.xanga.com/795f651339630276270934/z220125621.gif',
  'http://x01.xanga.com/57de361239132276270935/z217320589.gif',
  'http://x02.xanga.com/ea1f631039730276270930/z220125618.gif',
  'http://www.tristanx.com/wp-content/uploads/gorilla_shark_highfive.jpg',
  'http://i9.photobucket.com/albums/a65/Hyel/Gifs/REDDWARF-HighFiveLowFive.gif#high%20five%20gif',
  'http://thisiscoreythompson.com/daily-doodle/wp-content/uploads/2011/06/internet-high-five.gif',
  'http://28.media.tumblr.com/tumblr_l1ajhotYN81qzqzo6o1_250.gif',
]

module.exports = (robot) ->
  robot.respond /high.?five/i, (msg) ->
    response = msg.random responses
    msg.send "This high five goes out to #{msg.message.user.name}: #{response}"
