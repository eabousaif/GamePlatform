$(function(){
  const $bio = $(".edit_button")
  $bio.on("click", function(e){
    e.preventDefault()
    $(".edit").show()
    $(".bio").hide()
    $(".edit_button").hide()
  })
  $(".edit").hide()
})
