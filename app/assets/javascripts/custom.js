var checkanswer = function() {
    var password = combo.getCombination().join('');
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