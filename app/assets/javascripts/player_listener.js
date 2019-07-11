$(function() {
  const $info = $(".view_play_sessions")
  $info.on("click", function(e){
    e.preventDefault()
    $.getJSON(this.href).done(function(response){
      const playSessions = new PlaySessionFormatter(response)
      playSessions.playSessionsTemplate()
      const $ol = $("div.display_play_sessions")
    })
  })
})
