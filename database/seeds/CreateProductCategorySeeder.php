<?php
use App\ProductCategory;
use Illuminate\Database\Seeder;

class CreateProductCategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $productCategory=new ProductCategory();
        $productCategory->name='Áo khoác Nữ';
        $productCategory->parent_id='0';
        $productCategory->save();

        $productCategory=new ProductCategory();
        $productCategory->name='Áo len';
        $productCategory->parent_id='0';
        $productCategory->save();

        $productCategory=new ProductCategory();
        $productCategory->name='Áo khoác';
        $productCategory->parent_id='0';
        $productCategory->save();

        $productCategory=new ProductCategory();
        $productCategory->name='Nam';
        $productCategory->parent_id='0';
        $productCategory->save();

        $productCategory=new ProductCategory();
        $productCategory->name='Áo sơ mi';
        $productCategory->parent_id='0';
        $productCategory->save();

        $productCategory=new ProductCategory();
        $productCategory->name='Quần áo thể thao';
        $productCategory->parent_id='0';
        $productCategory->save();

        $productCategory=new ProductCategory();
        $productCategory->name='Thời trang công sở';
        $productCategory->parent_id='0';
        $productCategory->save();
        $productCategory=new ProductCategory();
        $productCategory->name='Phụ kiện';
        $productCategory->parent_id='0';
        $productCategory->save();
        $productCategory=new ProductCategory();
        $productCategory->name='Áo khoác mùa đông';
        $productCategory->parent_id='0';
        $productCategory->save();
    }
}
