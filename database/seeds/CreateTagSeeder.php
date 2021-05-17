<?php

use App\Tag;
use Illuminate\Database\Seeder;

class CreateTagSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $tags = new Tag();
        $tags->name='Đồ Chơi';
        $tags->save();

        $tags = new Tag();
        $tags->name='Chơi đồ';
        $tags->save();

        $tags = new Tag();
        $tags->name='Quần áo';
        $tags->save();

        $tags = new Tag();
        $tags->name='Phóng lợn';
        $tags->save();

        $tags = new Tag();
        $tags->name='Áo trắng';
        $tags->save();
    }
}
