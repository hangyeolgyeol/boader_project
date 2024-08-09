<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="frm" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>register</title>

  <!-- 구글 폰트 -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&family=Poppins:ital,wght@0,400;1,600&display=swap" rel="stylesheet">

  <!-- css 연결 -->
  <link rel="stylesheet" href="../css/common.css">
  <link rel="stylesheet" href="../css/register.css">

  <!-- jauery -->
  <script src="../js/jquery.js"></script>
  <script src="../js/register.js"></script>

</head>
<body>
  <div id="wrap">
    <header class="header">
      <div class="head_contents_area head_flex">
        <!-- logo -->
        <div class="logo"><a href="<c:url value="/"/>">LOGO</a></div>

        <div class="head_nav">
          <div class="board"><a href="<c:url value="/board"/>">게시판</a></div>
          <div class="login"><a href="<c:url value="/login"/>">로그인</a></div>
          <div class="register"><a href="<c:url value="register"/>">회원가입</a></div>
        </div>
      </div>
    </header>

    <main class="main">
      <div class="contents_area">
        <!-- 회원가입 박스 -->
        <form action="<c:url value="/register"/>" method="post" class="register_area" autocomplete="off">
          <h1 class="register_title">회원가입</h1>
          <p class="register_title2">회원이 되어 다양한 혜택을 경험해 보세요!</p>

          <!-- 회원가입: 아이디 칸 -->
          <div class="id_area info_area">
            <div class="info_title">
              <div>아이디</div>
              <span class="warning" id="id_warning">*</span>
            </div>

            <div class="id_box info_box">
              <input type="text" name="id" id="id" class="info_text" placeholder="아이디 입력(6 ~ 20자)" minlength="6" maxlength="25">
              <!-- 글자수 받아서 js에서 검사할 용도 -->
              <div class="text_length" hidden></div>

              <button>중복 확인</button>
            </div>
          </div>


          <!-- 회원가입: 비밀번호 칸 -->
          <div class="pw_area info_area">
            <div class="info_title">
              <div>비밀번호</div>
              <span class="warning" id="pw_warning">*</span>
            </div>

            <div class="pw_box info_box">
              <input type="text" name="pw" id="pw" class="info_text" placeholder="비밀번호 입력 (문자, 숫자, 특수문자 포함 8 ~ 20자)" minlength="8" maxlength="20">
            </div>
          </div>

          <!-- 회원가입: 비밀번호 확인 칸 -->
          <div class="pw_check_area info_area">
            <div class="info_title">
              <div>비밀번호 확인</div>
              <span class="warning" id="pw_check_warning">*</span>
            </div>

            <div class="pw_check_box info_box">
              <input type="text" id="pw_check" class="info_text" placeholder="비밀번호 재입력">
            </div>
          </div>

          <!-- 회원가입: 이름 칸 -->
          <div class="name_area info_area">
            <div class="info_title">
              <div>이름</div>
              <span class="warning" id="name_warning">*</span>
            </div>

            <div class="name_box info_box">
              <input type="text" name="name" id="name" class="info_text" placeholder="이름을 입력해주세요">
            </div>
          </div>

          <!-- 회원가입: 주소 칸 -->
          <div class="address_area info_area">
            <div class="info_title">
              <div>주소</div>
              <span class="warning" id="address_warning">*</span>
            </div>

            <div class="address_box info_box">
              <input type="text" name="address" id="address" class="info_text" placeholder="주소를 입력해주세요">
            </div>
          </div>

          <!-- 회원가입: 전화번호 칸 -->
          <div class="phone_number_area info_area">
            <div class="info_title">
              <div>전화번호</div>
              <span class="warning" id="phone_number_warning">*</span>
            </div>

            <div class="phone_number_box info_box">
              <input type="text" name="phone_number" id="phone_number" class="info_text" placeholder="휴대폰 번호 입력('-'제외 11자리 입력)">
            </div>
          </div>

          <!-- 회원가입: 이메일 주소 칸 -->
          <div class="email_area info_area">
            <div class="info_title">
              <div>이메일</div>
              <span class="warning" id="email_warning">*</span>
            </div>

            <div class="email_box info_box">
              <input type="text" name="email" id="email" class="info_text">
              <span id="at_sign">@</span>
              <select name="eamil_site" id="email_site" aria-readonly="true">
                <option value="" id="">기타</option>
                <option value="@naver">naver.com</option>
                <option value="@gmail">gmail.com</option>
                <option value="@kakao">kakao.com</option>
                <option value="@amari">amari.com</option>
              </select>
            </div>
          </div>

          <!-- 회원가입: 생년월일 칸 -->
          <div class="birthday_area info_area">
            <div class="info_title">
              <div>생년월일</div>
              <span class="warning" id="birthday_warning">*</span>
            </div>

            <div class="brith">
              <select name="year" id="year"></select>
              <div class="ymd">년</div>

              <select name="month" id="month"></select>
              <div class="ymd">월</div>

              <select name="day" id="day"></select>
              <div class="ymd">일</div>
            </div> <!-- birth 태그 끝-->
          </div> <!-- birthday_area 태그 끝 -->

          <div class="join_check">
            <button type="submit" class="user_join">가입하기</button>
            <button class="not_user_join">가입 취소하기</button>
          </div>

        </form> <!-- register의 form-->

      </div> <!-- register의 contents_area -->
    </main>

    <footer class="footer">

    </footer>
  </div>

<script>
  $(document).ready(function() {

  })
</script>
</body>
</html>