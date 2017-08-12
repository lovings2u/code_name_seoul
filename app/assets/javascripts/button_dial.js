$(document).on("turbolinks:load", function() {
  var loading = function(e) {
    e.preventDefault();
    e.stopPropagation();
    e.target.classList.add('loading');
    e.target.setAttribute('disabled','disabled');
    setTimeout(function(){
      e.target.classList.remove('loading');
      e.target.removeAttribute('disabled');
    },1500);
  };

  var btns = document.querySelectorAll('button');
  for (var i=btns.length-1;i>=0;i--) {
    btns[i].addEventListener('click',loading);
  }
  $("#btn158").on("click", function() {
    swal({
    title: '조직원 인상착의는\n다음페이지에',
    imageUrl: 'https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/quiz/h_q7_next_password1.png',
    imageWidth: 640,
    imageHeight: 420,
    animation: false,
    confirmButtonText: '이 버튼을 누르면 다시 돌아올 수 없습니다!'
  }).then(function() {
    $.ajax({
      url: '/answer',
      method: 'POST',
      data: { 'answer': 162 }
    }).done(function(data) {
      window.location.reload();
      });
    }, function(dismiss){
      window.location.reload();
      console.log(dismiss);
    });
  });
  $("#btn162").on("click", function() {
    swal({
    title: '조직원 인상착의는\n다음페이지에',
    imageUrl: 'https://s3.ap-northeast-2.amazonaws.com/codename-seoul/seoul/now/quiz/h_q7_next_password2.png',
    imageWidth: 660,
    imageHeight: 430,
    animation: false,
    confirmButtonText: '이 버튼을 누르면 다시 돌아올 수 없습니다!'
  }).then(function() {
    $.ajax({
      url: '/answer',
      method: 'POST',
      data: { 'answer': 162 }
    }).done(function(data) {
      window.location.reload();
      });
    }, function(dismiss){
      console.log(dismiss);
      window.location.reload();
    });
  });
});
