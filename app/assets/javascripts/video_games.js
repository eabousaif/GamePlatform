$(document).ready(function(){
  $(".videogame_item").on("click", function(e){
    e.preventDefault()
    $.ajax({
      method: "GET",
      url: this.href
    }).done(function(response){
      $("div.display_games").html(response)
    })
  })
})
