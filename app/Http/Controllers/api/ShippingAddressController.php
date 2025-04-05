<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use App\Services\Torod;

class ShippingAddressController extends Controller
{


  // protected $shippingService;

  //   public function __construct(Torod $shippingService)
  //   {
  //       $this->shippingService = $shippingService;
  //   }



    // public function getAllCities($regionId)
    // {
    //     $torodAPI = $this->shippingService->apiUrl;
    //     $torodAPIToken = 'Bearer ' . $this->shippingService->shippingServiceToken;

    //     if (!$regionId) {
    //         return response()->json(['error' => 'region_id parameter is required'], 400);
    //     }

    //     $response = Http::withHeaders(['Authorization' => $torodAPIToken])
    //         ->get($torodAPI . "get-all/cities", ['region_id' => $regionId]);

    //     if ($response->successful()) {
    //         $cities = $response->json();
    //         return response()->json($cities);
    //     } else {
    //         return response()->json(['error' => 'Failed to fetch cities'], $response->status());
    //     }
    // }








  public function getCities(Request $request)
  {
    $region_id = $request->region;

    $response = Http::asMultipart()->withHeaders(['Authorization' => $request->token])
      ->get($request->apiURL . "get-all/cities-access");

    $cities = collect($response->Json()['data'])->where('region_id', $region_id)->all();

    return $cities;
  }






}
