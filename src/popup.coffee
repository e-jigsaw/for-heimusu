getHotEntry = ->
  $.ajax
    url: "http://feeds.feedburner.com/hatena/b/hotentry"
    dataType:"xml"
    success: (data)->
      $(data).find("item").each ->
        title = $(@).find("title").text()
        $(".feeds").append("<p>#{title}</p>")

$("button").on "click", -> getHotEntry()
