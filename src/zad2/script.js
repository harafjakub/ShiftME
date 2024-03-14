$(document).ready(function() {
    $('.offer-item').hover(function() {
        $(this).css('background-color', '#ccc');
        $(this).find('a').css('color', '#fff');
    }, function() {
        $(this).css('background-color', '');
        $(this).find('a').css('color', '#333');
    });
});
