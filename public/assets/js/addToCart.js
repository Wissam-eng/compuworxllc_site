$(document).ready(function () {
  $('.add-to-cart').click(function(event) {
    event.preventDefault();
    var product_id = $(this).data('product-id');
    var quantity = $(this).data('quantity');
      $.ajax({
        headers: {
          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
            url: $(this).attr('action'),
            type: $(this).attr('method'),
            data: {
                "_token": "{{ csrf_token() }}",
                "product_id": product_id,
                "quantity": quantity
            },
            success: function(response) {
                $('#cart').load(location.href + ' #cart');
          }
        });
    });
});
