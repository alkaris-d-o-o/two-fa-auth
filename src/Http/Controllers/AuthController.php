<?php

namespace Alkaris\TwoFAAuth\Http\Controllers;

use Alkaris\TwoFAAuth\Http\Traits\HelperTrait;
use Alkaris\TwoFAAuth\Models\Core\Countries;
use App\Http\Controllers\Controller;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller{
    use HelperTrait;

    /* Path for blade files */
    protected $_path = 'two-fa-auth.';

    public function auth(){
        return view('two-fa-auth::' . $this->_path. '.auth', [

        ]);
    }

    /* Authenticate user */
    public function authenticate(Request $request){
        try{
            dd($request->all());
        }catch (\Exception $e){
            dd($e);
        }
    }


    /* -------------------------------------------------------------------------------------------------------------- */
    /*
     *  Register
     */

    public function register(){
        return view('two-fa-auth::' . $this->_path . 'register', [
            'countries' => Countries::pluck('name', 'id'),
            'codes' => Countries::pluck('phone_code', 'phone_code')
        ]);
    }
    public function registerNow(Request $request){
        try{
            /* ToDo - Return with object; Fill data */
            $user = new User($request->all());

            if(!isset($request->terms)) return back()->with('error', __('You must accept terms and conditions!'));
            if(!isset($request->privacy)) return back()->with('error', __('You must accept privacy policy!'));

            if(!isset($request->name)) return back()->with('name', __('You have to enter your name!'));
            if(!$this->validateEmail($request->email)) return back()->with('email', __('You entered wrong email address'));

            /* Password check */
            try{
                $passwordCheck = $this->passwordCheck($request);
                if($passwordCheck['code'] != '0000') return back()->with('password', $passwordCheck['message']);
            }catch (\Exception $e){ return back()->with('error', __('Error while processing data. Please try again or contact us!')); }

            /* Validate phone number */
            try{
                $request['phone'] = $request->prefix . $request->phone;
                $phoneNumber = $this->phoneNumberCheck($request, '1012');
                if($phoneNumber['code'] != '0000') return back()->with('phone', $phoneNumber['message']);
            }catch (\Exception $e){ return back()->with('error', __('Error while processing data. Please try again or contact us!')); }

            /* Check for unique email and username */
            $user = User::where('email', $request->email)->first();
            if($user) return back()->with('email', __('Email address is already used'));

            $user = User::where('username', $request->username)->first();
            if($user) return back()->with('username', __('Username already used'));

            /* Create new user */
            $request['password'] = Hash::make($request->password);
            $request->request->add(['api_token' => hash('sha256', $request->email. '+'. time())]);
            $request['email_verified_at'] = Carbon::now();
            $request['role'] = 1; // Mobile APP user

            $user = User::create($request->all());

            return redirect()->route('auth');
        }catch (\Exception $e){
            dd($e, $request->all());
        }
    }
}
