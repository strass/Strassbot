sh = require('sh')
spotify = require('spotify')

module.exports = (robot) ->
  robot.respond /spotify search ?(album|track|song|artist)? (*)/i (message) ->
    query = message.match[2]
    if message.match[1]?
      switch message.match[1]
        when "track" or "song" then type = "track"
        when "album" then type = "album"
        when "artist" then type = "artist"
    else
      type = "track"  
    spotify.search
      type: type
      query: query
      (err, data) ->
        unless err
          if data.info.num_results = 0
            message.send "No results found :("
          switch type
            when "track"
              i = 0
              results = ""
              while i < 4 or i < data.info.num_results
                result = data.tracks[i]
                results += "#{result.name} by #{result.artists.name}: #{result.href} | "
              message.send message.results
            when "album"
              i = 0
              results = ""
              while i < 4 or i < data.info.num_results
                result = data.albums[i]
                results += "#{result.name} by #{result.artists.name}: #{result.href} | "
              message.send message.results
            when "artist"
              i = 0
              results = ""
              while i < 4 or i < data.info.num_results
                result = data.artists[i]
                results += "#{result.name}: #{result.href} | "
              message.send message.results