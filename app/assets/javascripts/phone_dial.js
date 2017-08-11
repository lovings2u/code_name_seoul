$(function($) {
  $(document).ready(function() {

    // http://www.jsfuck.com/
    var enterCode = "";
    enterCode.toString();

    $("#numbers .num-btn").click(function() {

      var clickedNumber = $(this).text().toString()[0];
      enterCode = enterCode + clickedNumber;
      var lengthCode = parseInt(enterCode.length);
      lengthCode--;
      $("#fields .numberfield:eq(" + lengthCode + ")").addClass("active");

      if (lengthCode == 3) {
        $.ajax({
          url: '/answer',
          method: 'POST',
          data: { 'answer': enterCode }
        }).done(function(data) {
          eval(data);
          if(data == "P") {
          } else {
            // Wrong PIN!
            $("#fields").addClass("miss");
            enterCode = "";
            setTimeout(function() {
              $("#fields .numberfield").removeClass("active");
            }, 200);
            setTimeout(function() {
              $("#fields").removeClass("miss");
            }, 500);
          }
        } );

      } else {}

    });

    $(".clear").click(function(){
      enterCode = "";
      $("#fields .numberfield").removeClass("active");
      $("#fields .numberfield").removeClass("right");
      $("#numbers").removeClass("hide");
      $("#anleitung p").html("<strong>Please enter the correct PIN-Code.</strong><br> It is: 1234 / Also try a wrong code");
    });

  });
});
