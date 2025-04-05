<?php

namespace App\Http\Controllers\frontend;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Exception;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Laravel\Socialite\Facades\Socialite;

class SocialLoginController extends Controller
{
    public function redirect($provider)
    {
      return Socialite::driver($provider)->redirect();
    }
    // for test
  // public function callback($provider)
  // {
  //     $socialUser = Socialite::driver($provider)->user();
  //     $user = User::updateOrCreate([
  //       'provider_id' => $socialUser->id,
  //       'provider' => $provider
  //   ], [
  //       'name' => $socialUser->name,
  //       'email' => $socialUser->email,
  //       'password'=>Hash::make('123456789'),
  //       'provider_token' => $socialUser->token,
  //   ]);

  //   Auth::login($user);

  //   return redirect(route('e-commerce.index'));
  // }

  //real work
  public function callback($provider)
  {
    return 'ddd';
    //try{
    /*
      $socialUser = Socialite::driver($provider)->stateless()->user();
      if(User::where('email',$socialUser->getEmail())->exists())
       {
        return redirect('/user/login')->withErrors(['email'=>'This email use different way to login']);
       }
      $user = User::where([
        'provider'=>$provider,
        'provider_id'=>$socialUser->id
      ])->first();
      if(!$user)
      {
        $user = User::create([
          'name' => $socialUser->getName(),
          'email' => $socialUser->getEmail(),
          'password' => Hash::make('123456789'),
          'provider' => $provider,
          'provider_id' => $socialUser->getId(),
          'provider_token' => $socialUser->token,
          'email_verified_at' => now()
        ]);
      }
    Auth::login($user);
    return redirect('/ecommerc-index');
    //}catch(Exception $e)
    //{
      //return redirect(route('e-commerce.index'));
    //}
    */
  }
}
