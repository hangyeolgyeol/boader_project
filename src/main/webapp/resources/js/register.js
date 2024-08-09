$(document).ready(function() {
  console.log("회원가입 제이쿼리 시작");

  // 입력을 제한 할 특수문자의 정규식
  var replaceId = /[<>()""+_|~[\]]/gi;
  // 숫자가 아닌 정규식
  var replaceNotInt = /[^0-9]/gi;
  // 특수분자 정규식 변수(공백 미포함)
  var replaceChar = /[ ~!@\#$%^&*\()\-=+_'\;<>0-9\/.\`:\"\\,\[\]?|{}]/gi;
  // 완성형 아닌 한글 정규식
  var replaceNotFullKorean = /[ㄱ-ㅎㅏ-ㅣ]/gi;

/*  ************** 정보 기재칸 접근 제한자 걸기 ************** */

  /* #id칸에서 포커스가 벗어났을 때 */
  $("#id").on("focusout", function() { 
    console.log("focusout 테스트");

    let x = $(this).val(); /* id의 value 값 */
    if (x.length > 0) { /* id의 value 값이 입력되었을때 */
      if (x.match(replaceId)) { /* match - 전체 정보중에 찾으려는 문자가 있는지 확인 */
        /* #id의 value 값 중에 replaceId의 특수기호가 포함되어 있다면 빈칸으로 교체 */
        x = x.replace(replaceId, ""); /* 교체한 값을 다시 x에 저장 */
      }
      
      $(this).val(x);
    }
  }).on("keyup", function() { /* #id 칸에서 키를 땠을 때 */
    $(this).val($(this).val().replace(replaceId, ""));
  });

  // 비밀번호 확인
  $("#pw_check").on("focusout", function() {
    console.log("pw_check 중")
    let pw_val = $("#pw").val();

    if ($(this).val() != pw_val) {
      $("#pw_check_warning").css({ color: "red"})
      $("#pw_check_warning").text("비밀번호가 틀립니다!");
    }
    else {
      $("#pw_check_warning").css({ color: "green"})
      $("#pw_check_warning").text("올바른 비밀번호 입니다.");
    }
  });

  // 이름 확인
  $("#name").on("focusout", function() {
    let x = $(this).val();
    if (x.length > 0) {
      if (x.match(replaceChar) || x.match(replaceNotFullKorean)) {
        console.log("이름 체크")
        x = x.replace(replaceChar, "").replace(replaceNotFullKorean, "");
      }
      $(this).val(x);
    }
  }).on("keyup", function() {
    $(this).val($(this).val().replace(replaceChar, ""));
  });

  // 주소 확인
  $("#address").on("focusout", function() {
    let x = $(this).val();
    if (x.length > 0) {
      if (x.match(replaceChar)) {
        x = x.replace(replaceChar, "");
      }
    }
    $(this).val(x);
  }).on('keyup', function() {
    $(this).val($(this).val().replace(replaceChar, ""));
  })

  // 전화번호 확인
  $("#phone_number").on('focusout', function() {
    let x = $(this).val();
    if (x.length > 0) {
      if (!x.match(replaceNotInt)) {
        x = x.replace(replaceNotInt, "");
      }
      $(this).val(x);
    }
  }).on("keyup", function() {
    $(this).val($(this).val().replace(replaceNotInt, ""));
  });



/*  ************** 생년월일 년도와 월에 따라 일자 바뀌게 하기 ************** */

  // 화면이 출력될 때 바로 일자 새겨넣기
  getDate();

  // 생년월일: 몇년도
  for(let i=0; i<100; i++) {
    let year = `<option value="${2024 - i}">${2024 - i}</option>`;

    $('#year').append(year);
  }
  // 생년월일: 몇월
  for(let i=1; i<=12; i++) {
    let month = `<option value="${i}">${i}</option>`;

    $('#month').append(month);
  }
  // 생년월일: 몇일
  $(document).on('change', '#year', function() {
    getDate();
  })

  $(document).on('change', '#month', function() {
    getDate();
  })

  function getDate() {
    $("#day").empty(); // select#day 의 하위 option 태그들을 전부 지우고 들어간다.

    let year = $("#year").val();
    let month = $("#month").val();
    console.log(year + "년" + month + "월");

    let dt = new Date(year, month, 0);
    console.log(dt);
    let lastDate = dt.getDate(); // year과 month를 통해 그해 그월의 마지막 일을 뽑아내는건가?
    console.log("마지막일: " + lastDate);

    for(let i=1; i<=lastDate; i++) {
      let day = `<option value=${i}>${i}</option>`;

      $("#day").append(day);
    }
  }

});