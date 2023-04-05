<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name')->nullable();
            $table->string('prenom')->nullable();
            $table->string('adresse')->nullable();
            $table->string('email')->unique();
            $table->string('telephone')->nullable();
            $table->string('fixe')->nullable();
            $table->string('cni')->nullable();
            $table->string('ville')->nullable();
            $table->string('photo')->nullable();
            $table->string('ninea')->nullable();
            $table->integer('etat')->default(1);
            $table->string('dateNaissance')->nullable();
            $table->foreignId('nationalite_id')->nullable()->constrained('nationalites');
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->rememberToken();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
};
