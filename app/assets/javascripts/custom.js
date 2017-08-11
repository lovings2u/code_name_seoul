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
