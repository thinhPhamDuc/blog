<?php
use App\Brand;
use Illuminate\Database\Seeder;

class CreateBrandSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $brand=new Brand();
        $brand->name='Calvin Klein';
        $brand->save();

        $brand=new Brand();
        $brand->name='Diesel';
        $brand->save();

        $brand=new Brand();
        $brand->name='Polo';
        $brand->save();

        $brand=new Brand();
        $brand->name='Tommy Hilfiger';
        $brand->save();

        $brand=new Brand();
        $brand->name='Armani';
        $brand->save();

        $brand=new Brand();
        $brand->name='Prada';
        $brand->save();

        $brand=new Brand();
        $brand->name='H&M';
        $brand->save();

        $brand=new Brand();
        $brand->name='Chanel';
        $brand->save();
    }
}
