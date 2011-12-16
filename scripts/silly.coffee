# Silly pictures
#
# When the robot hears one of these phrases a wild picture appears

chucktestas = [
  "chuck testa"
  "just chuck testa"
  "chuck testa with another realistic mount"
  ]

module.exports = (robot) ->
  robot.hear /my spoon is too big/i, (message) ->
    message.send "http://i.imgur.com/Rz1AO.gif"

  robot.hear /waffles/i, (message) ->
    message.send "http://i.imgur.com/1zsw3.gif"
    
  robot.hear /^bullshit$/i, (message) ->
    message.send "http://i.imgur.com/1SR0W.gif"
        
  robot.hear /i just had sex/i, (message) ->
    message.send "http://i.imgur.com/IGTN0.gif"
            
  robot.hear /^science(!)?$/i, (message) ->
    message.send "http://i.imgur.com/2OYGG.gif"

  robot.hear /winter is coming/i, (message) ->
    message.send "http://i.imgur.com/Mzzbx.gif"

  robot.hear /higher/i, (message) ->
    message.send "Can we get much higher?"
        
  robot.hear /i(')?ve made a huge mistake/i, (message) ->
    message.send "http://i.imgur.com/Ql0i6.gif"
            
  robot.hear /i fucking love science/i, (message) ->
    message.send "http://i.imgur.com/Is5P3.jpg"        

  robot.hear /fuck yeah/i, (message) ->
    message.send "http://i.imgur.com/RoRaN.jpg"
                    
  robot.hear /i(')?d tap that/i, (message) ->
    message.send "http://i.imgur.com/JEuzz.png"
                      
  robot.hear /go fuck yourself/i, (message) ->
    message.send "http://i.imgur.com/3w06D.png"
    
  robot.hear /who( the hell)? cares/i, (message) ->  
    message.send "http://www.youtube.com/watch?v=RFZrzg62Zj0&feature=related"
    
  robot.hear /hammer/i, (message) ->
    message.send "http://media.tumblr.com/tumblr_luh0ffPWm61qhzw8s.gif"
  
  robot.hear /love you(,)? strassbot/i, (message) ->
    message.reply "I love you too"
    
  robot.hear /i win/i, (message) ->
    message.send "http://27.media.tumblr.com/tumblr_lt5eydoUNL1qde33io1_500.gif"
    
  robot.hear />:\(/i, (message) ->
    message.send "http://i.imgur.com/P3uA4.gif"
    
  robot.hear /say what/i, (message) ->
    message.send "http://www.youtube.com/watch?v=yqyixwqiCag"
    
  robot.hear /^nope$/i, (message) ->
    message.send message.random chucktestas
