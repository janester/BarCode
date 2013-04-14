window.app =
  ready: ->
    $("body").on("change", "#start_time", app.add_end_times)
  add_end_times: ->
    start = $("#start_time").val()
    settings =
      dataType: "script"
      type: "get"
      url: "pub_crawls/end_times?start_time=#{start}"
    $.ajax(settings)
$(document).ready(app.ready)
