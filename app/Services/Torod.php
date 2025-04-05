<?php

namespace App\Services;

use GuzzleHttp\Psr7;
use GuzzleHttp\Psr7\HttpFactory;
use Illuminate\Support\Facades\Http;

class Torod
{
  protected $mode;
  public $apiUrl;
  protected $clientID;
  protected $clientSecret;
  public $shippingServiceToken;
  protected $shippingPickupAddress;

  public function __construct()
  {
    $this->mode = env('TOROD_SHIPPING_GATEWAY_MODE', 'test');
    $this->apiUrl = config("torod.$this->mode.api_url");
    $this->clientID = config('torod.clientID');
    $this->clientSecret = config('torod.clientSecret');
    $this->shippingServiceToken = $this->generateToken()['bearer_token'];
    $this->shippingPickupAddress = $this->createPickUpAddress();
  }

  ///// Step 1 : genereate Bearer Token for Session
  public function generateToken()
  {
    // dd($this->apiUrl);
    $response = Http::asMultipart()->post($this->apiUrl . "token", [
      'client_id' => $this->clientID,
      'client_secret' => $this->clientSecret,
    ]);
    return $response->json()['data'];
  }

  ///// Step 2 : create WareHouse Pickup Address
  public function createPickUpAddress()
  {
    // $response = Http::asMultipart()->withHeaders(['Authorization' => 'Bearer ' . $this->shippingServiceToken])
    //   ->post($this->apiUrl . "create/address", [
    //     'warehouse_name' => env('APP_NAME'),
    //     'warehouse' => env('TOROD_SHIPPING_WAREHOUSE_ADDREESS_ID'),
    //     'contact_name' => env('APP_NAME'),
    //     'phone_number' => getSettingValue('mobile'),
    //     'email' => getSettingValue('email'),
    //     'type' => 'address',
    //     'locate_address' => env('TOROD_SHIPPING_WAREHOUSE_ADDREESS'),
    //   ]);
    // if ($response->successful()) {
    //   return $response->json()['data'];
    // } else {
    //   $response = Http::asMultipart()->withHeaders(['Authorization' => 'Bearer ' . $this->shippingServiceToken])
    //     ->post($this->apiUrl . "address/details", [
    //       'warehouse' => env('TOROD_SHIPPING_WAREHOUSE_ADDREESS_ID'),
    //     ]);
    //   return $response->json()['data'];
    // }
  }

  ///// Step 3 : create Order
  public  function createOrder($userData, $orderItems, $orderWeight, $orderData)
  {

    $data = [
      'name' => $userData->first_name . ' ' . $userData->last_name,
      'email' => $userData->email,
      'phone_number' => $userData->phone,
      'item_description' => 'Morale Store Woodens',
      'order_total' => $orderData->total,
      'payment' => 'prepaid',
      'weight' => $orderWeight,
      'no_of_box' => '1',
      'type' => 'address_city',
      'address' => $userData->address,
      'city_id' => $userData->city,
    ];
    // creating Order
    $response = Http::asMultipart()->withHeaders(['Authorization' => 'Bearer ' . $this->shippingServiceToken])
      ->post($this->apiUrl . "order/create", $data);
    $shippingMethods = $this->getShippingMethods(collect($response->json()['data']));
    return $shippingMethods;
  }

  // Step 4 : Get Shipping Methods
  public  function getShippingMethods($orderData)
  {

    $data = [
      'order_id' => $orderData['order_id'],
      'warehouse' => env('TOROD_SHIPPING_WAREHOUSE_ADDREESS_ID'),
      'type' => 'normal',
      'filter_by' => 'fastest'
    ];

    // getting Shipping Methods
    $response = Http::asMultipart()->withHeaders(['Authorization' => 'Bearer ' . $this->shippingServiceToken])
      ->post($this->apiUrl . "courier/partners", $data);
    $responseData = $response->json();
    $responseData['orderID'] = $orderData['order_id'];
    return $responseData;
  }

  // Step 5 : Order Ship Process
public function orderShippingProcess($orderData)
{
    try {
        // Make the API request
        $response = Http::asMultipart()
            ->withHeaders(['Authorization' => 'Bearer ' . $this->shippingServiceToken])
            ->post($this->apiUrl . "order/ship/process", $orderData);

        // Return the JSON response from the API
        return $response->json();
    } catch(\Exception $e){
        // Handle the exception
        // Log the error, return a custom error response, or re-throw the exception
        // For now, let's just return a generic error message
        //return ['error' => 'An error occurred while processing the order: ' . $e->getMessage()];
    }
}



///public function orderShippingProcess($orderData)
//{
    // Wrap $orderData inside a 'contents' key
  ///  $requestData = [
   ///     'contents' => $orderData
   /// ];
///
    // Make the API request
  ///  $response = Http::asMultipart()
       /// ->withHeaders(['Authorization' => 'Bearer ' . $this->shippingServiceToken])
        //->post($this->apiUrl . "order/ship/process", $orderData);
//dd( $response->json());
    //return $response->json();
//}



  public  function trackOrder($trackingID)
  {
    // getting Shipping Methods
    $response = Http::asMultipart()->withHeaders(['Authorization' => 'Bearer ' . $this->shippingServiceToken])
      ->post($this->apiUrl . "order/track", [
        'tracking_id' => $trackingID
      ]);

    return $response->json();
  }
}
