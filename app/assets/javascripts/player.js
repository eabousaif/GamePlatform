$(function(){
  const $update = $(".edit_player")
  const $edit = $(".edit_button")
  const $bio = $(".bio")

  $edit.on("click", function(event){
    event.preventDefault()
    showForm()
  })

  $update.on("submit", function(event){
    event.preventDefault()
    $.ajax({
      type: "PATCH",
      url: $(this).attr('action') + "?" + $(this).serialize(),
      dataType: "json",
      contentType: "application/json"
    }).done(function(response){
      $bio.append()
      hideForm()
    })
  })
})

function showForm() {
  $(".edit").show()
  $(".bio").hide()
  $(".edit_button").hide()
}

function hideForm() {
  $(".edit").hide()
  $(".bio").show()
  $(".edit_button").show()
}
