<?php
use App\Size;
use Illuminate\Database\Seeder;

class CreateSizeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $size=new Size();
        $size->name='S';
        $size->save();

        $size=new Size();
        $size->name='M';
        $size->save();

        $size=new Size();
        $size->name='L';
        $size->save();

        $size=new Size();
        $size->name='XL';
        $size->save();

        $size=new Size();
        $size->name='XXL';
        $size->save();

    }
}
