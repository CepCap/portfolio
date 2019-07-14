$(document).on('turbolinks:load', function() {
  $('.delete-portfolio-link').on('click', function(e) {
    var id = $(this)[0].id
    console.log(id)
    console.log($("div[portfolio-id=" + id + "]"))
    $("div[portfolio-id=" + id + "]").remove();
  })
})
