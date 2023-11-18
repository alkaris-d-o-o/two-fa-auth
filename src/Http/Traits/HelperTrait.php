<?php

namespace Alkaris\TwoFAAuth\Http\Traits;

use Alkaris\TwoFAAuth\Models\Core\Countries;
use Generator;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

trait HelperTrait{
    protected function validateEmail($email){
        return preg_match('/\A[a-z0-9]+([-._][a-z0-9]+)*@([a-z0-9]+(-[a-z0-9]+)*\.)+[a-z]{2,4}\z/', $email) && preg_match('/^(?=.{1,64}@.{4,64}$)(?=.{6,100}$).*/', $email);
    }

    protected function passwordCheck(Request $request, $code = '10'){
        try{
            if(!isset($request->password)) throw new \Exception(__('Please, enter your password'), $code. '11');
            if (strlen($request->password) < 8) throw new \Exception(__('Password must contain at least 8 characters'), $code. '11');
            if (!preg_match("/\d/", $request->password)) throw new \Exception(__('Password must contain at least one digit'), $code. '11');
            if (!preg_match("/[A-Z]/", $request->password) and !preg_match("/[a-z]/", $request->password)) throw new \Exception(__('Password must contain letters'), $code. '11');
            if (!preg_match("/\W/", $request->password)) throw new \Exception(__('Password must contain at least one special character'), $code. '11');

            return ["code" => "0000", "message" => "OK!"];
        }catch (\Exception $e){
            return ["code" => $e->getCode(), "message" => $e->getMessage()];
        }
    }

    /*
     *  Phone number check
     */
    public function phoneNumberCheck(Request &$request, $code = '10'){
        try{
            $country = Countries::where('id', $request->country)->first();

            if(!isset($country->phone_code)) throw new \Exception(__('Phone code is currently not supported ..'), $code);

            if(!(strpos($request->phone, $country->phone_code) !== false)) throw new \Exception(__('Country prefix is not available. For choosen country, please use this format: ' . ($country->phone_code) . "XX XXX XXX(X)"), $code);

            $request['prefix'] = $country->phone_code;
            $request['phone'] = str_replace($country->phone_code, "", $request->phone);

            return ["code" => "0000", "message" => "OK!"];
        }catch (\Exception $e){
            return ["code" => $e->getCode(), "message" => $e->getMessage()];
        }
    }
}
