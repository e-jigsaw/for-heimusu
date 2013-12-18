var getHotEntry;

getHotEntry = function() {
  return $.ajax({
    url: "http://feeds.feedburner.com/hatena/b/hotentry",
    dataType: "xml",
    success: function(data) {
      return console.log(data);
    }
  });
};

getHotEntry();
