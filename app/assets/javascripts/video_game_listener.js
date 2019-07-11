// this file is responsible for manipulating the DOM. Thus, it uses jQuery

// $(window).on(“ready”)

$(function() {
  const $info = $(".videogame_item")
  $info.on("click", function(e){

    e.preventDefault()
    $.getJSON(this.href).done(function(response){
      const $list = $("div.display_games")
      const video_game = response.video_game
      const videoGameObject = new VideoGame(video_game.name, video_game.description, video_game.rating, video_game.release_year)
      $list.html("")
      $list.append(videoGameObject.videoGameEl())
    })
  })
})
