<?php

use Illuminate\Database\Seeder;

class CategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $fake  = Faker\Factory::create();
        // $limit = 10;

        // for ($i = 0; $i < $limit; $i++){
        //     DB::table('categories')->insert([
        //         'name' => $fake->name,
        //         'image' => $fake->image('public/storage/images',640,480, null, false),
        //         'created_at' => date("Y-m-d H:i:s"),
        //         'updated_at' => date("Y-m-d H:i:s")
        //     ]);
        // }
        DB::table('categories')->insert([
            ['name' => 'Thời Trang Nam', 'image' => ''],
            ['name' => 'Thời Trang Nữ', 'image' => ''],
            ['name' => 'Thể Thao & Du Lịch', 'image' => ''],
            ['name' => 'Điện Thoại & Phụ Kiện', 'image' => ''],
            ['name' => 'Máy Tính & Laptop', 'image' => '']
        ]);
    }
}
