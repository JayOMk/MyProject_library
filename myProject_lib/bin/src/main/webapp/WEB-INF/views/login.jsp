<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Green Library</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap')
</style>
<link rel="stylesheet" href="/css/signIn.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="/js/signIn.js"></script>
<body>
<div class="form">
  <div class="form-toggle"></div>
  <div class="form-panel one">
    <div class="form-header">
      <h1>일반회원 로그인</h1>
    </div>
    <div class="form-content">
      <form name="loginform" action="loginYn" method="post">
        <div class="form-group">
          <label for="email">email</label>
          <input type="email" id="email" name="email" required="required"/>
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" id="password" name="password" required="required"/>
        </div>
        <div class="form-group">
          <label class="form-remember">
            <input type="checkbox"/>Remember Me
          </label><a class="form-recovery" href="#">Forgot Password?</a>
        </div>
        <div class="form-group">
          <button type="submit">Log In</button>
        </div>
      </form>
    </div>
  </div>
  <div class="form-panel two">
    <div class="form-header">
      <h1>회원가입</h1>
    </div>
    <div class="form-content">
      <form>
    <div class="form-group">
        <label for="email">이메일 주소</label>
        <input type="email" id="signup-email" name="email" required="required"/>
    </div>
    <div class="form-group">
        <label for="username">이름</label>
        <input type="text" id="signup-username" name="username" required="required"/>
    </div>
    <div class="form-group">
        <label for="phonenumber">연락처</label>
        <input type="text" id="phonenumber" name="phonenumber" placeholder="ex)010-0000-0000" required="required"/>
    </div>
    <div class="form-group">
        <label for="password">비밀번호</label>
        <input type="password" id="signup-password" name="password" placeholder="8자리 이상/영문,숫자,특수부호의 조합" required="required"/>
    </div>
    <div class="form-group">
        <label for="cpassword">비밀번호 확인</label>
        <input type="password" id="cpassword" name="cpassword" required="required"/>
    </div>
    <div class="form-group">
        <button type="submit" onclick="submitRegistration()">등록</button>
    </div>
</form>
    </div>
  </div>
</div>
<div class="pen-footer"><a href="https://www.behance.net/gallery/30478397/Login-Form-UI-Library" target="_blank"><i class="material-icons">arrow_backward</i>View on Behance</a><a href="https://github.com/andyhqtran/UI-Library/tree/master/Login%20Form" target="_blank">View on Github<i class="material-icons">arrow_forward</i></a></div>
</body>
</html>

<script type="text/javascript">
    /* 회원가입 버튼 클릭 시 동작하는 함수 */
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
</script>
