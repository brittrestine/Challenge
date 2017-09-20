$(document).ready(function() {

$(".form-for-favorite").on("submit", function(e){
  e.preventDefault();

  var form = $(this)
  console.log(form)

  $.ajax({
    url: form.attr("action"),
    type: 'Put',
  })
  .done(function(response){
    console.log(response)
    $('.main').html(response)
    // $('.star-profile-page-fav').hide();
    // $('.star-profile-page-notfav').hide();
    // console.log(
    // $('.form-for-favorite').html('<img src="/images/Favorite-Star/Favorite-true3.png"/>'))
    });
  });
});