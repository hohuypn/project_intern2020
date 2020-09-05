<?php

use Illuminate\Database\Seeder;

class ProductTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $fake  = Faker\Factory::create();
        // $limit = 30;

        // for ($i = 0; $i < $limit; $i++){
        //     DB::table('products')->insert([
        //         'name' => $fake->name,
        //         'sku' => $fake->random(bcrypt(), 6),
        //         'price' => $fake->randomFloat(2, 0, 100000),
        //         'instock' => $fake->random(10, 100),
        //         'description' => $fake->sentence(15),
        //         'image' => 'http://lorempixel.com/400/200/',
        //         'categories_id' => function () {
        //             return factory(App\Category::class)->create()->id;
        //         },
        //         'displayed' => $fake->default(1),
        //         'created_at' => date("Y-m-d H:i:s"),
        //         'updated_at' => date("Y-m-d H:i:s")
        //     ]);
        // }

        // DB::table('categories')->insert([
        //     ['name' => 'Thời Trang Nam', 'image' => ''],
        //     ['name' => 'Thời Trang Nữ', 'image' => ''],
        //     ['name' => 'Thể Thao & Du Lịch', 'image' => ''],
        //     ['name' => 'Điện Thoại & Phụ Kiện', 'image' => ''],
        //     ['name' => 'Máy Tính & Laptop', 'image' => '']
        // ]);
    }
}
