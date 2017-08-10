$(function($) {
  $(document).ready(function() {

    // http://www.jsfuck.com/
    var pin = 8534;
    var enterCode = "";
    enterCode.toString();

    $("#numbers button").click(function() {

      var clickedNumber = $(this).text().toString()[0];
      enterCode = enterCode + clickedNumber;
      var lengthCode = parseInt(enterCode.length);
      lengthCode--;
      $("#fields .numberfield:eq(" + lengthCode + ")").addClass("active");

      if (lengthCode == 3) {

        // Check the PIN
        if (enterCode == pin) {
          // Right PIN!
          alert("맞춤!");
          $("#fields .numberfield").addClass("right");
          $("#anleitung p").html("Amazing!<br>You entered the correct Code!");

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

      } else {}

    });

    $("#restartbtn").click(function(){
      enterCode = "";
      $("#fields .numberfield").removeClass("active");
      $("#fields .numberfield").removeClass("right");
      $("#numbers").removeClass("hide");
      $("#anleitung p").html("<strong>Please enter the correct PIN-Code.</strong><br> It is: 1234 / Also try a wrong code");
    });

  });
});
