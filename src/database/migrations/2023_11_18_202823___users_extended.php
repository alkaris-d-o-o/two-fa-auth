<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UsersExtended extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->string('username', 100)->after('name');
            $table->string('phone', 30)->after('remember_token');
            $table->string('address', 100)->after('phone');
            $table->string('city', 100)->after('address');
            $table->integer('country')->after('city');

            /* 2FA columns */
            $table->string('code', 6)->after('country')->nullable();
            $table->string('code_token')->after('code')->nullable();
            $table->dateTime('code_time')->after('code_token')->nullable();

            /* Soft deleted included */
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            //
        });
    }
}
