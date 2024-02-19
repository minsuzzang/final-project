$(document).ready(function () {
    const inner_input = $("#password");
    const outer_input = $("#outer-input");
  
    // disable input from typing
    inner_input.on('input', function () {
      if (inner_input.val().length > 4) {
        inner_input.val(inner_input.val().substr(0, 4));
      }
    });
  
    $("#enter").on('click', function (event) {
      event.preventDefault();
      if (inner_input.val().length <= 4) {
        outer_input.val(inner_input.val());
        $("#popupA").dialog("close");  // 추가된 코드
      } else {
        alert("Password should be maximum 4 characters");
      }
    });
  
    // add password
    $(".calc").click(function () {
      let value = $(this).val();
      if ((inner_input.val().length + value.length) <= 4) {
        inner_input.val(inner_input.val() + value);
      }
    });
  
    $("#clear").click(function () {
      inner_input.val("");
    });
});
