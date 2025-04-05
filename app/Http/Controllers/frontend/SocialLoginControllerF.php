<?php

namespace App\Http\Controllers\frontend;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Exception;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Laravel\Socialite\Facades\Socialite;




class SocialLoginControllerF extends Controller
{
  public function redirect($provider)
  {
    if ($provider == 'google') {
      return Socialite::driver('google')
        ->scopes(['email'])
        ->redirect();
    }
    return Socialite::driver($provider)->redirect();
  }
  //real work
  public function callback($provider)
  {

    try {

      $socialUser = Socialite::driver($provider)->user();

      $user = User::firstOrCreate(
        ['email' => $socialUser->getEmail()],
        [
          'name' => $socialUser->getName(),
          'password' => Hash::make('123456789'),
          'provider' => $provider,
          'provider_id' => $socialUser->getId(),
          'SocialToken' => $socialUser->token,
          'email_verified_at' => now()
        ]
      );
      Auth::login($user);
      return redirect(route('e-commerce.index'));
    } catch (Exception $e) {
      // dd($e->getMessage());
      return redirect('/user/login')->withErrors(['error' => 'نأسف لحدوث مشكلة بالتسجيل ']);
    }
  }
}
