/** Toggle Views **/
$(function() {
   $("#neighborhood").click(function() {
      // remove classes from all
      $("a").removeClass("active");
      $('.event_body').removeClass("active");
      $('.member_body').removeClass("active");
      $('.about_body').removeClass("active");
      // add class to the one we clicked
      $('#neighborhood').addClass("active");
      $('.neighborhood_body').addClass("active");
   });
    $("#events").click(function() {
      // remove classes from all
      $("a").removeClass("active");
      $('.neighborhood_body').removeClass("active");
      $('.member_body').removeClass("active");
      $('.about_body').removeClass("active");
      // add class to the one we clicked
      $('#events').addClass("active");
      $('.event_body').addClass("active");
   });
     $("#members").click(function() {
      // remove classes from all
      $("a").removeClass("active");
      $('.neighborhood_body').removeClass("active");
      $('.event_body').removeClass("active");
      $('.about_body').removeClass("active");
      // add class to the one we clicked
      $('#members').addClass("active");
      $('.member_body').addClass("active");
   });
     $("#about").click(function() {
      // remove classes from all
      $("a").removeClass("active");
      $('.neighborhood_body').removeClass("active");
      $('.event_body').removeClass("active");
      $('.member_body').removeClass("active");
      // add class to the one we clicked
      $('#about').addClass("active");
      $('.about_body').addClass("active");
   });
});