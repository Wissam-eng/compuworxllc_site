$(function () {
  console.log('subscribes.js loaded');
  $('#subscribeForm').submit(function (e) {
    e.preventDefault();
    var email = $('#email').val();
    var data = {
      email: email
    };
    console.log(data);
    $.ajax({
      headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
      },
      url: $(this).attr('action'),
      type: $(this).attr('method'),
      data: data,
      // processData: false,
      // contentType: false,
      dataType: 'json',
      beforeSend: function () {
          $(document).find('span.text-error').text('');
      },
      success: function(data) {
          if (data.error) {
            $.each(data.error, function (prefix, val) {
                  alert(val[0]);
                  $('span.' + prefix + '_error').text(val[0]);
              });
          } else {
            $('#subscribeForm')[0].reset();
              alert('send successfully');
          }
      }
    });
  }
  );
});
