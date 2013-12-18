getHotEntry = ->
  $.ajax
    url: "http://feeds.feedburner.com/hatena/b/hotentry"
    dataType:"xml"
    success: (data)->
      console.log data

getHotEntry()