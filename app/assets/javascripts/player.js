$(function(){
  const $bio = $(".edit_button")
  $bio.on("click", function(e){
    e.preventDefault()
    showForm()
  })
  $(".edit").hide()
})

function showForm() {
  $(".edit").show()
  $(".bio").hide()
  $(".edit_button").hide()
}
