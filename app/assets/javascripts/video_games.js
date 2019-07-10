$(document).ready(function(){
  $("#games").on("click", function(game){
    game.preventDefault()
    console.log(this)
    $.get(this.href).success(function(response){
      $(div.display_games).html(response)
    })
  })
})
