# site <searchkey> - returns url details if it exists
#

module.exports = (robot) ->
  robot.respond /site (.*)/i, (msg) ->
    searchkey = escape(msg.match[1])
    msg.http("api-path/get_gi_screenshot.php?SearchKey=#{searchkey}")
      .get() (err, res, body) ->
        try
          json = JSON.parse(body)
          msg.send "   Site Description: #{json.status_text}\n
  		  ScreenshotUrl: #{json.Screeshot_url}\n"
        catch error
          msg.send "Screenshot not found"