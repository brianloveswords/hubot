# Display a random tweet from twitter about a subject
#
# <keyword> tweet - Returns a link to a tweet about <keyword>
#

module.exports = (robot) ->
  robot.respond /(?:(?:get|find|show) (?:me)? an? )?(.*) tweet$/i, (msg) ->
    rawSearch = msg.match[1]
    search = escape(rawSearch)
    msg.http('http://search.twitter.com/search.json')
     .query(q: search, rpp: 100)
      .get() (err, res, body) ->
        tweets = JSON.parse(body)

        if tweets.results? and tweets.results.length > 0
          tweet  = msg.random tweets.results
          msg.send tweet.text
          msg.send "(http://twitter.com/#!/#{tweet.from_user}/status/#{tweet.id_str})"
        else
          msg.reply "No one is tweeting about #{rawSearch}."
