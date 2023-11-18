<?php

namespace Alkaris\TwoFAAuth\Models\Core;
use Illuminate\Database\Eloquent\Model as Eloquent;

class Countries extends Eloquent {
    protected $table = 'api__countries';
    protected $guarded = ['id'];
}
