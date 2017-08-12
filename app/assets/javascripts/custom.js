var checkanswer = function(leng) {
    var password = combo.getCombination(leng).join('');
    $('#answer').val(password);
};

var checkanswer2 = function() {
    var arr = $('input[type=text]');
    var answer = '';
    for (var i = 0; i < arr.length; i++) {
        answer += $(arr[i]).val();
    }
    $('#answer').val(answer);
}
var checkanswer3 = function() {
    var arr = $('input[type=text]');
    var answer = [];
    for (var i = 0; i < arr.length; i++) {
        answer.push($(arr[i]).val());
    }
    answer = answer.join();
    $('#answer').val(answer);
}

var get_hint = function() {
  var hint_count = $('#hint-img').attr("data-hint-count");
  console.log(hint_count);
  swal({
  title: '힌트를 사용하시겠습니까?',
  text: "현재 " + hint_count + "회 남았습니다.",
  type: 'warning',
  showCancelButton: true,
  cancelButtonColor: '#d33',
  confirmButtonText: '사용하기',
  cancelButtonText: '취소하기'
}).then(function () {
  $.ajax({
    url: "/hint",
    method: "POST"
  }).done(function() {
    $('#hint-img').attr("data-hint-count", hint_count-1);
    $('#hint-img').attr("onclick", "");
    $('#help-img').attr("onclick", "get_help();");
    })
  })
}
var get_help = function() {
  swal({
  title: '도움을 요청하시겠습니까?',
  type: 'warning',
  showCancelButton: true,
  cancelButtonColor: '#d33',
  confirmButtonText: '사용하기',
  cancelButtonText: '취소하기'
}).then(function () {
  $.ajax({
    url: "/help",
    method: "POST"
  }).done(function(){
    $('#help-img').attr("onclick", "");
    console.log("done");
    })
  })
}
var before_help = function() {
  swal({
    title: '힌트를 먼저 사용하세요.',
    type: 'error'
  })
}
