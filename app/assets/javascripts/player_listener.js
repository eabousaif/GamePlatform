$(function() {
  const $play = $(".view_play_sessions")
  $play.on("click", function(e){
    e.preventDefault()
    $.getJSON(this.href).done(function(response){
      const playSessions = new PlaySessionFormatter(response)
      playSessions.playSessionsTemplate()
    })
  })
})

