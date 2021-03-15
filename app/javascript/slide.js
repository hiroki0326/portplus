window.addEventListener('DOMContentLoaded', function(){
$(function() {
  $(".slide1").fadeIn(2000);
  setTimeout(dispNextSlide, 4000);
  function dispNextSlide() {
    $(".slide2").fadeIn();
  }
  })
});