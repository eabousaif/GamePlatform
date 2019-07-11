$(function() {
  const $info = $(".view_play_sessions")
  $info.on("click", function(e){
    e.preventDefault()
    $.getJSON(this.href).done(function(response){
      console.log(response)
    })
  })
})
