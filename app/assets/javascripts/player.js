$(function(){
  const $bio = $(".edit_button")
  $bio.on("click", function(e){
    e.preventDefault()
    $(".edit").show()
  })
  $(".edit").hide()
})
