<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="frm" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>index</title>

  <!-- 구글 폰트 -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&family=Poppins:ital,wght@0,400;1,600&display=swap" rel="stylesheet">

  <!-- css 연결 -->
  <link rel="stylesheet" href="../css/common.css">
  <link rel="stylesheet" href="../css/index.css">
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
      <section class="main_banner"></section>

      <section class="sec part_1">
        <div class="contents_area"></div>
      </section>

      <section class="sec part_2">
        <div class="contents_area"></div>
      </section>

      <section class="sec part_3">
        <div class="contents_area"></div>
      </section>
    </main>

    <footer class="footer">

    </footer>

  </div>
</body>
</html>