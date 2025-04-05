<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Auth;
use App\Models\User;

class VerificationCodeController extends Controller
{


  public function verifyEmail()
  {

    $lang = app()->getLocale();

    return view('frontend.verification.index', [
      'title' => trans('common.verification'),
      'breadcrumbs' => [
        [
          'url' => '',
          'text' => trans('common.verification')
        ]
      ]
    ], compact('lang'));
  }



  public function checkVerificationCode(Request $request)
  {
      $verificationCode = (int) $request->input('verification_code');
      $userEmail = session('email');
      // dd( $userEmail);
      $user = User::where('email', $userEmail)->first(); // Retrieve the user based on the email

      if ($user && $verificationCode === $user->otp) {
          // OTP verification successful
          $user->update(['email_verified_at' => now()]);

          // Log in the user
          Auth::login($user);
          // Redirect to the desired location after successful verification and login
          return redirect()->route('e-commerce.index')->with('success', 'Email verified successfully!');
      } else {
          // OTP verification failed
          return redirect()->back()->with('error', 'Invalid verification code!')->withInput($request->only('email')); // Pass email back to the form
      }
  }

}
