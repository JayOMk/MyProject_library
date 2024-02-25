$(document).ready(function() {
  var panelOne = $('.form-panel.two').height(),
    panelTwo = $('.form-panel.two')[0].scrollHeight;

  $('.form-panel.two').not('.form-panel.two.active').on('click', function(e) {
    e.preventDefault();

    $('.form-toggle').addClass('visible');
    $('.form-panel.one').addClass('hidden');
    $('.form-panel.two').addClass('active');
    $('.form').animate({
      'height': panelTwo
    }, 200);
  });

  $('.form-toggle').on('click', function(e) {
    e.preventDefault();
    $(this).removeClass('visible');
    $('.form-panel.one').removeClass('hidden');
    $('.form-panel.two').removeClass('active');
    $('.form').animate({
      'height': panelOne
    }, 200);
  });
});

 function submitRegistration() {
    var email = $("#signup-email").val();
    var username = $("#signup-username").val();
    var phonenumber = $("#phonenumber").val();
    var password = $("#signup-password").val();

    var formData = {
        email: email,
        name: username,
        phone: phonenumber,
        password: password,
    };

    // 회원가입 데이터를 서버로 전송하는 Ajax 호출
    $.ajax({
        type: "POST",
        url: "signUp",
        data: formData,
        success: function (data) {
            alert("회원가입이 완료되었습니다.");
            window.location.href = "login";
        },
        error: function (xhr, status, error) {
            console.error(xhr.responseText);
            alert("회원가입 중 오류가 발생했습니다. 다시 시도해주세요.");
        },
    });
}