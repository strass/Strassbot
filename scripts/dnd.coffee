# DnD Lookup and misc stuff
#
# To-do: make to-do

balasarmaneuvers = [
  ""
  ""
  ""
  ""
  ""
  ]

module.exports = (robot) ->
  robot.respond /D(n|&)D feat(s)?/i, (message) ->
    message.send "http://dnd.savannahsoft.eu/list_feats.html"
  robot.respond /D(n|&)D skill(s)?/i, (message) ->
    message.send "http://dnd.savannahsoft.eu/list_skills.html"
  robot.respond /D(n|&)D search (.*)/i, (message) ->
    message.send "http://dnd.savannahsoft.eu/search.html?keyword="
  robot.respond /D(n|&)D books/i, (message) ->
    message.send "http://www.lovingdragons.info/dd/"
  robot.respond /D(n|&)D maneuvers/i, (message) ->
    message.send "http://eberronunlimited.wikidot.com/maneuvers-and-stances"
  robot.respond /D(n|&)D XP/i, (message) ->
    message.send "http://www.incorporeal.org/rpg/tools/d20/"