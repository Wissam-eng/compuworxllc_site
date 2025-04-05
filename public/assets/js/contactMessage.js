$(function () {
    $('#Message_Form').on('submit', function (e) {
        e.preventDefault();

        $.ajax({
            url: $(this).attr('action'),
            type: $(this).attr('method'),
            data: new FormData(this),
            processData: false,
            contentType: false,
            dataType: 'json',
            beforeSend: function () {
                $(document).find('span.text-error').text('');
            },
            success: function(data) {
                if (data.status == 0) {
                    $.each(data.error, function (prefix, val) {
                        $('span.'+prefix+'_error').text(val[0]);
                    });
                } else {
                    $('#Message_Form')[0].reset();
                    alert(data.msg);
                }
            }
        });
    })
});
