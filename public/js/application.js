$(document).ready(function() {

  $(".form-for-favorite").on("submit", function(e){
    e.preventDefault();

    var form = $(this);

    $.ajax({
      url: form.attr("action"),
      type: 'Put',
    })
    .done(function(response){
      if(response == "true"){
        $('.star-profile-page-notfav').hide();
        $('.form-for-favorite').html('<img src="/images/Favorite-Star/Favorite-true3.png"/>');
      } else {
        $('.star-profile-page-fav').hide();
        $('.form-for-favorite').html('<img src="/images/Favorite-Star(False)/Favorite-False.png"/>');
      }
    });
  });
});