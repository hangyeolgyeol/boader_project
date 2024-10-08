<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="frm" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>board</title>

  <!-- 구글 폰트 -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&family=Poppins:ital,wght@0,400;1,600&display=swap" rel="stylesheet">

  <!-- css 연결 -->
  <link rel="stylesheet" href="../css/common.css">
  <link rel="stylesheet" href="../css/board.css">
</head>
<body>
  <div id="wrap">
    <!-- 모든 페이지에서 공용으로 쓰는 header -->
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

    <!-- board페이지의의 메인 -->
    <main class="main">
      <div class="contents_area">
        <!-- 검색바 -->
        <div class="search_area contents_area">
          <select name="keyword" id="keyword">
            <option value="T">제목</option>
            <option value="TW">제목 + 글쓴이</option>
            <option value="W">글쓴이</option>
          </select>

          <div class="search_box">
            <input type="text" name="search" id="search">
            <button class="btn_search">검색</button>
          </div>

          <button class="create_writer">글쓰기</button>
          
        </div> <!-- search_area 태그 끝 -->

        <!-- 게시글 리스트 -->
        
        <table>
          <thead>
            <tr>
              <th class="no">번호</th>
              <th class="title">제목</th>
              <th class="writer">이름</th>
              <th class="regdate">등록일</th>
              <th class="view_count">조회수</th>
            </tr>
          </thead>

          <tbody>
            <tr>
              <td class="no">2</td>
              <td class="title">test title</td>
              <td class="writer">asdf</td>
              <td class="regdate">2024-08-01</td>
              <td class="view_count">1</td>
            </tr>
          </tbody>

          <tfoot>

          </tfoot>

        </table>
      </div>
    </main>

    <footer class="footer">

    </footer>

  </div> <!-- #wrap의 닫기 태그 -->
</body>
</html>