$(document).ready(function() {
    $.ajax({
        url: 'get_data.php',
        type: 'post',
        data: { action: 'get_wojewodztwa' },
        success: function(response) {
            $('#wojewodztwa_select').html(response);
        }
    });

    $('#wojewodztwa_select').change(function() {
        var wojewodztwo = $(this).val();

        $.ajax({
            url: 'get_data.php',
            type: 'post',
            data: { action: 'get_miasta', wojewodztwo: wojewodztwo },
            success: function(response) {
                $('#miasta_select').html(response).prop('disabled', false);
            }
        });
    });

    $('#miasta_select').change(function() {
        var miasto = $(this).val();

        $.ajax({
            url: 'get_data.php',
            type: 'post',
            data: { action: 'get_informacje', miasto: miasto },
            success: function(response) {
                var data = JSON.parse(response);
                $('#informacje_miejskie').text(data.informacje);
                $('#herb').html('<img src="' + data.herb + '" alt="Herb">');
            }
        });
    });
});
