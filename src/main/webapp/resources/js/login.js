// login.html에 사용될 jquery

$(document).ready(function() {
    var window_width = $(window).outerWidth();
    var window_height = $(window).outerHeight();

    background_size();

    /* 
      1. 화면이 움직여도 background의 사이즈는 해당 움직임에 맞게 수정된다.
    */
    $(window).resize(function() {
      background_size();
    })
    
    // background의 사이즈를 윈도우 웹 크기에 맞게 측정 하는 함수
    function background_size() {
      window_width = $(window).outerWidth();
      window_height = $(window).outerHeight();

      $('.background').css({
        width: window_width,
        height: window_height
      })
    }


    var pw_content;
    var mode_check = "off";

    // pw 칸의 락 아이콘을 클릭했을 시
    $(document).on('click', '.lock_icon', function() {
      
      // if( $(this).find(".mode").val() == "mode" ) {
      //   mode_check = "off";
      //   console.log("비밀번호 보여주기")
      // } else if( $(this).find(".mode").val() != "mode" ) {

      //   mode_check = "on"
      //   console.log("비밀번호 닫기")
      // }

      if( mode_check == "on") {
        pw_lock(mode_check);

        mode_check = "off";
        console.log("mode_check = " + mode_check);
      }
      else if( mode_check = "off") {
        pw_lock(mode_check);

        mode_check = "on";
        console.log("mode_check = " + mode_check);
      }
    })

    // pw의 아이콘을 클릭할 때마다 input의 성질변화 함수 text -> password
    function pw_lock(on_off) {
      let pw_area;
      

      pw_content = $("#pw").val();
      console.log("pw_content: " + pw_content);

      // pw_area의 아래 태그들 전부 지우고 시작
      $(".pw_area").empty();

      /* on_off = on 일때는 잠긴 자물쇠를, off일 때는 풀린 자물쇠를 
        기존의 내용은 함수가 시작되기전 미리 저장해두고 if문이 동작할때 input의 value에
        넣어주기
      */
      if (on_off == "on") {
        pw_area = `
              <input type="password" name="pw" id="pw" placeholder="비밀번호를 입력해주세요" value="${pw_content}">

              <div class="login_icon lock_icon">
                <img src="../img/lock_on.png" alt="비밀번호 보여주기/안보여주기">
              </div>`;
      } else if (on_off == "off") {
        pw_area = `
              <input type="text" name="pw" id="pw" placeholder="비밀번호를 입력해주세요" value="${pw_content}">

              <div class="login_icon lock_icon">
                <img src="../img/lock_off.png" alt="비밀번호 보여주기/안보여주기">
              </div>`;
      }

      $(".pw_area").append(pw_area);
    }

  })