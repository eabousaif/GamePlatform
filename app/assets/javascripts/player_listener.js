$(function() {
  const $play = $(".view_play_sessions")
  $play.off("click").on("click", function(e){
    e.preventDefault()

    const $ul = $("div.display_play_sessions")

    if ($("div.display_play_sessions:visible").length == 0) {
      $.getJSON(this.href).done(function(response){
        const playSessions = new PlaySessionFormatter(response)
        playSessions.playSessionsTemplate()
        $ul.show()
      })
    }
    else {
      $ul.hide()
    }
  })
})

