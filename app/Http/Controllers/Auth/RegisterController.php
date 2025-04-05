<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Utils\MoraSmsProvider;
use App\Models\User;
use App\Notifications\OtpNotification;
use App\Providers\RouteServiceProvider;
use Illuminate\Auth\Events\Registered;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Termwind\Components\Dd;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
      // protected function validator(array $data)
      // {
      //   return Validator::make($data, [
      //     'name' => ['required', 'string', 'max:255'],
      //     'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
      //     'phone' => ['regex:/^([0-9\s\-\+\(\)]*)$/'],
      //     'password' => ['required', 'string', 'min:8', 'confirmed'],

      //   ]);
      // }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\User
     */

    public function register(Request $request)
    {
      $rules = [
        'name' => ['required', 'string', 'max:255'],
        'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
        'phone' => ['nullable','regex:/^([0-9\s\-\+\(\)]*)$/'],
        'password' => ['required', 'string', 'min:8', 'confirmed'],
      ];
      $validator=Validator::make($request->all(),$rules);
      if ($validator->fails()) {
        return back()->withInput()->withErrors($validator);
      }
      $data = $request->except(['password_confirmation']);
      $data['active'] = '1';
      $data['role'] = '2';
      $data['password'] = Hash::make($data['password']);

      $user = User::create($data);
      // Auth::login($user);
      Auth::attempt($request->only('email', 'password'));
      if (count(getCart()['items']) > 0) {
        foreach (getCart()['items'] as $key => $value) {
          addToCart($user->id,$value);
        }
        session()->forget('cartItems');
        return redirect()->route('e-commerce.checkout');
      }
      return redirect()->route('e-commerce.index');
    }

}
