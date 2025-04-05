$(document).ready(function () {
  console.log('search.js loaded');
  var navDiv = document.getElementById('main-nav-center');
  var lang = $('html').attr('lang');
    $('#input_search').on('keyup', function() {
        var query = $(this).val();
        console.log(query + 'loaded');
        if (query.length > 0) {
          $.ajax({
            headers: {
              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
                url: '/productSearch',
                type: 'GET',
                data: {
                    'query': query
                },
            success: function (data) {
              console.log(data + 'Success');
              const li = document.createElement('li');
              li.innerHTML = data;
              $('#searchDiv').show();
              $('#search-results').html(data);
              // $('#main-nav-center').css('opacity', '0.5');
              navDiv.style.opacity = '0.5';
                }
            });
        } else {
          $('#searchDiv').hide();
          $('#search-results').empty();
          // $('#main-nav-center').css('opacity', '1');
           navDiv.style.opacity = '1';
      }
      });
});
