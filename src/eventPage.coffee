getHotEntry = ->
  $.ajax
    url: "http://feeds.feedburner.com/hatena/b/hotentry"
    dataType:"xml"
    success: (data)->
      console.log data

chrome.alarms.onAlarm.addListener (alarm)->
  getHotEntry() if alarm.name is "refresh"

chrome.alarms.create "refresh"
  "periodInMinutes": 10