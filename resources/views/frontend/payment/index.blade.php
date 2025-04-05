<!DOCTYPE html>
<html>

<head>
    <!-- Other Tags -->
    <title>Moyasar payment form</title>
    <meta charset="UTF-8" />

    <!-- Moyasar Styles -->
    <link rel="stylesheet" href="https://cdn.moyasar.com/mpf/1.7.3/moyasar.css" />

    <!-- Moyasar Scripts -->
    <script src="https://polyfill.io/v3/polyfill.min.js?features=fetch"></script>
    <script src="https://cdn.moyasar.com/mpf/1.7.3/moyasar.js"></script>
    <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp"></script>

    <!-- Download CSS and JS files in case you want to test it locally, but use CDN in production -->
</head>

<body>
    <section
        style="display: flex; height: 100%; width: 100%; justify-content: center; justofy-items: center;flex-direction:column; align-items:center;margin-top:100px">
        <img src="http://127.0.0.1:8000/uploads/settings/r4pkkOuPSC8CTCOvtIjZRMHIU26eccp0sQvzCZ8V.png" alt="morale store"
            width="300px" style="margin-bottom: 20px">
        <h1 style="width: 360px;text-align:center;font-weight:bold;font-size:40px;color:#593b30">
            الدفع باستخدام ميسر
        </h1>
        <div class="mysr-form" style="width: 360px; margin: 40px 0 0 0"></div>
    </section>

    <script>
        Moyasar.init({
            element: '.mysr-form',
            amount: {{ $total * 100 }},
            currency: 'SAR',
            language: 'ar', // Displaying the form in English

            description: 'Morale Woodens Store Products',
            publishable_api_key: '{{ $key }}',
            callback_url: '{{ $callback_URL }}',
            methods: ['creditcard', 'stcpay'],
            // on_completed: 'https://127.0.0.1:8000/',
        })
    </script>
</body>

</html>
