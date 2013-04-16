window.app =
  ready: ->
    $("body").on("change", "#start_time", app.add_end_times)
    $("body").on("click", "#checkin_btn", app.get_location)
  add_end_times: ->
    start = $("#start_time").val()
    settings =
      dataType: "script"
      type: "get"
      url: "pub_crawls/end_times?start_time=#{start}"
    $.ajax(settings)
  get_location: (e) ->
    e.preventDefault()
    token = $("input[name=authenticity_token]").val()
    navigator.geolocation.getCurrentPosition (x) ->
      lat = x.coords.latitude
      long = x.coords.longitude
      console.log(lat, long)
      settings =
        dataType: "script"
        type: "post"
        url: "/check_ins"
        data:
          latitude:lat
          longitude:long
          authenticity_token:token
      $.ajax(settings)




$(document).ready(app.ready)

# %script
#   $(function() {
#     $( ".draggable" ).draggable();
#     $( "#droppable" ).droppable({
#       drop: function( event, ui ) {
#         $( this ).addClass("ui-state-highlight");};});});
