$(document).ready(function(){
  $(".game_item").on("click", function(game){
    game.preventDefault()
    console.log(this)
  })
})
