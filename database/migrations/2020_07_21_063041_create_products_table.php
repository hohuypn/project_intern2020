<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('sku');
            $table->float('price');
            $table->integer('quantity');
            $table->string('description');
            $table->string('image');
            $table->integer('view');
            $table->string('status');
            $table->date('date_manufacture');
            $table->date('date_expiration');
            $table->integer('categories_id')->unsigned()->index();
            $table->boolean('displayed')->default(1);
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
        // Schema::dropIfExists('products');
    }
}
