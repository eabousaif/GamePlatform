// this file is responsible for manipulating the DOM. Thus, it uses jQuery

// $(window).on(“ready”)

$(function() {
  const $info = $(".videogame_item")
  $info.on("click", function(e){

    e.preventDefault()
    $.getJSON(this.href).done(function(json){
      console.log(json)
      const $ol = $("div.individual_game")

    // new VideoGame(response attributes)
      $ol.html("")
      json.forEach(function(game){

        $ol.append(videoGameEl)
      })
    })
  })
})
