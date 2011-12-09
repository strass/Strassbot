sh = require('sh')
spotify = require('spotify')

module.exports = (robot) ->
  robot.respond /spotify search ?(album|track|song|artist)? (.*)/i, (msg) ->
    query = msg.match[2]
    if msg.match[1]?
      switch msg.match[1]
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
            msg.send "No results found :("
          switch type
            when "track"
              i = 0
              results = ""
              while i < 4 or i < data.info.num_results
                result = data.tracks[i]
                results += "#{result.name} by #{result.artists.name}: #{result.href} | "
              msg.send msg.results
            when "album"
              i = 0
              results = ""
              while i < 4 or i < data.info.num_results
                result = data.albums[i]
                results += "#{result.name} by #{result.artists.name}: #{result.href} | "
              msg.send msg.results
            when "artist"
              i = 0
              results = ""
              while i < 4 or i < data.info.num_results
                result = data.artists[i]
                results += "#{result.name}: #{result.href} | "
              msg.send msg.results