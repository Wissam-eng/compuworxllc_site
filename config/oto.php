<?php
return [
  /*
    |--------------------------------------------------------------------------
    | Merchant account authorization info
    |--------------------------------------------------------------------------
    |
    |
     */
  "refresh_token" => "AMf-vBw3xou3c0cG6ECJ7CYmzv2bDTVO-e4LCD1jZ72VkpnGBpxLeLn_Bi55W7lVDjfCqDxrL-dPWCjE8mpgMOQT4wtGSTqZMqn1222USrLQCCu9H1EZAjfyRCpYpYQMblIeBmQndUUuk5JgAOlF1gYYXgnWwJSgkHAfoBeTJUutXP6z9AuWW2BM0j4k2hNqc0l31z0Ejfl-PNR3RnF9uP_e7WJ7S04ApQ",
  "access_token" => "",
  /*
    |--------------------------------------------------------------------------
    | Oto Mode
    |--------------------------------------------------------------------------
    |
    | Mode only values: "test" or "live"
    |
     */
  "mode" => "test",
  /*
    |--------------------------------------------------------------------------
    | Oto currency
    |--------------------------------------------------------------------------
    | EGP , SAR , USD, .. etc
     */
  "currency" => "SAR",
  /*
    |--------------------------------------------------------------------------
    | TEST Payment Request url
    |--------------------------------------------------------------------------
     */
  "test_urls" => [
    "refresh_token" => "https://staging-api.tryoto.com/rest/v2/refreshToken",
    "check_delivery_fee" => "https://api.tryoto.com/rest/v2/checkDeliveryFee",
    "Check_oto_delivery_fee" => "https://api.tryoto.com/rest/v2/checkOTODeliveryFee",
    "create_order" => "https://api.tryoto.com/rest/v2/createOrder",
    "cancel_order" => "https://staging-api.tryoto.com/rest/v2/cancelOrder",
    "order_status" => "https://staging-api.tryoto.com/rest/v2/orderStatus",
    "create_shipment" => "https://api.tryoto.com/rest/v2/createShipment",
    "get_delivery_options" => "https://staging-api.tryoto.com/rest/v2/getDeliveryOptions",
  ],
  /*
    |--------------------------------------------------------------------------
    | LIVE Payment Request url
    |--------------------------------------------------------------------------
     */
  "live_urls" => [
    "refresh_token" => "",
    "available_cities" => "",
    "check_delivery_fee" => "",
    "create_order" => "",
    "cancel_order" => "",
    "order_status" => "",
    "create_shipment" => "",
    "get_delivery_options" => "",
  ],
];
