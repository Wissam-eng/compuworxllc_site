<?php
// config/services.php

return [
  'test' => [
    'api_url' => 'https://demo.stage.torod.co/en/api/',
  ],
  'live' => [
    'api_url' => 'https://torod.co/en/api/',
  ],
  'clientID' => env('TOROD_SHIPPING_GATEWAY_CLIENT_ID'),
  'clientSecret' => env('TOROD_SHIPPING_GATEWAY_CLIENT_SECRET'),

];
