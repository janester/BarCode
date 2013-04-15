window.make =
  stops: []
  ready: ->
    make.drag_drop()
    $("body").on("click", "#done_btn", make.send_stops)
  drag_drop: ->
    $(".draggable").draggable()
    _.each($(".drop"), (x) ->
      $(x).droppable
        drop: (event, ui) ->
          $(this).addClass("ui-state-highlight")
          _.reject make.stops, (x) -> x.spot == $(this).attr("id")
          make.stops.push({spot:$(this).attr("id"), bar:ui.draggable.data().id}))

  send_stops: ->
    token = $("input[name=authenticity_token]").val()
    cid = $("#cid").text()
    settings =
      datatype: "script"
      type: "post"
      url: "/stops"
      data:
        authenticity_token:token
        stops:make.stops
        crawl:cid
    $.ajax(settings)


$(document).ready(make.ready)
