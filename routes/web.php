<?php

use Illuminate\Support\Facades\Route;



Route::get('/', function () {
    return view('welcome');
});
Route::group(['prefix' => 'admin', 'middleware' => 'guest'], function (){
    Route::get('register', 'Backend\Auth\RegisterController@create')->name('register');
    Route::post('register', 'Backend\Auth\RegisterController@store');

    Route::get('resend', 'Backend\Auth\VerificationController@create')->name('resend');
    Route::post('resend', 'Backend\Auth\VerificationController@resend');

    Route::get('verifyEmail/{token}', 'Backend\Auth\VerificationController@verifyEmail')->name('verify');

    Route::get('login', 'Backend\Auth\LoginController@create')->name('login');
    Route::post('login', 'Backend\Auth\LoginController@store');
    Route::post('logout', 'Backend\Auth\LoginController@destroy')->name('logout')->withoutMiddleware('guest');
});
Route::group(['prefix' => 'admin', 'middleware' => 'auth'], function (){
    //Dashboard
    Route::get('dashboard', 'Backend\DashboardController@index')->name('dashboard');

    //Banner
    Route::group(['prefix' => 'banner'], function (){
        Route::get('/', 'Backend\Banner\BannerController@index')->name('banner') ->middleware('can:banner_view');
        Route::get('/create', 'Backend\Banner\BannerController@create')->name('banner.create')->middleware('can:banner_create');
        Route::post('/store', 'Backend\Banner\BannerController@store')->name('banner.store');
        Route::get('/edit/{Banner}', 'Backend\Banner\BannerController@edit')->name('banner.edit')->middleware('can:banner_edit');
        Route::post('/update/{Banner}', 'Backend\Banner\BannerController@update')->name('banner.update');
        Route::post('/delete/{Banner}', 'Backend\Banner\BannerController@destroy')->name('banner.destroy')->middleware('can:banner_delete');
    });
    //Tag

    //Post
    Route::group(['prefix' => 'post'], function (){
        Route::get('/', 'Backend\Post\PostController@index')->name('post') ;
        Route::get('/create', 'Backend\Post\PostController@create')->name('post.create');
        Route::post('/store', 'Backend\Post\PostController@store')->name('post.store');
        Route::get('/edit/{Post}', 'Backend\Post\PostController@edit')->name('post.edit');
        Route::post('/update/{Post}', 'Backend\Post\PostController@update')->name('post.update');
        Route::post('/delete/{Post}', 'Backend\Post\PostController@destroy')->name('post.destroy');
    });
    //Product

    Route::group(['prefix' => 'product'], function (){

        Route::get('/', 'Backend\Product\ProductController@index')->name('product')->middleware('can:product_view');
        Route::get('/create', 'Backend\Product\ProductController@create')->name('product.create')->middleware('can:product_create');
        Route::post('/store', 'Backend\Product\ProductController@store')->name('product.store')->middleware('can:product.store');
        Route::get('/edit/{Product}', 'Backend\Product\ProductController@edit')->name('product.edit')->middleware('can:product_edit,Product');
        Route::post('/update/{Product}', 'Backend\Product\ProductController@update')->name('product.update');
        Route::post('/delete/{Product}', 'Backend\Product\ProductController@destroy')->name('product.destroy')->middleware('can:product_delete,Product');

        Route::get('category', 'Backend\Product\ProductCategoryController@index')->name('productCategory')->middleware('can:productCategory_view');
        Route::get('category/create', 'Backend\Product\ProductCategoryController@create')->name('productCategory.create')->middleware('can:productCategory_create');
        Route::post('category/store', 'Backend\Product\ProductCategoryController@store')->name('productCategory.store');
        Route::get('category/edit/{ProductCategory}', 'Backend\Product\ProductCategoryController@edit')->name('productCategory.edit')->middleware('can:productCategory_edit');
        Route::post('category/update/{ProductCategory}', 'Backend\Product\ProductCategoryController@update')->name('productCategory.update');
        Route::post('category/delete/{ProductCategory}', 'Backend\Product\ProductCategoryController@destroy')->name('productCategory.destroy')->middleware('can:productCategory_delete');

        Route::get('brand', 'Backend\Product\BrandController@index')->name('brand')->middleware('can:brand_view');
        Route::get('brand/create', 'Backend\Product\BrandController@create')->name('brand.create')->middleware('can:brand_create');
        Route::post('brand/store', 'Backend\Product\BrandController@store')->name('brand.store');
        Route::get('brand/edit/{Brand}', 'Backend\Product\BrandController@edit')->name('brand.edit')->middleware('can:brand_edit');
        Route::post('brand/update/{Brand}', 'Backend\Product\BrandController@update')->name('brand.update');
        Route::post('brand/delete/{Brand}', 'Backend\Product\BrandController@destroy')->name('brand.destroy')->middleware('can:brand_delete');

        Route::get('size', 'Backend\Product\SizeController@index')->name('size')->middleware('can:size_view');
        Route::get('size/create', 'Backend\Product\SizeController@create')->name('size.create')->middleware('can:size_create');
        Route::post('size/store', 'Backend\Product\SizeController@store')->name('size.store');
        Route::get('size/edit/{Size}', 'Backend\Product\SizeController@edit')->name('size.edit')->middleware('can:size_edit');
        Route::post('size/update/{Size}', 'Backend\Product\SizeController@update')->name('size.update');
        Route::post('size/delete/{Size}', 'Backend\Product\SizeController@destroy')->name('size.destroy')->middleware('can:size_delete');

    });
    //User
    Route::group(['prefix' => 'user'], function (){
        Route::get('/', 'Backend\User\UserController@index')->name('user')->middleware('can:user_view');

        Route::get('/create', 'Backend\User\UserController@create')->name('user.create')->middleware('can:user_create');

        Route::post('/store', 'Backend\User\UserController@store')->name('user.store');
        Route::get('/edit/{User}', 'Backend\User\UserController@edit')->name('user.edit')->middleware('can:user_edit');

        Route::post('/update/{User}', 'Backend\User\UserController@update')->name('user.update');
        Route::post('/delete/{User}', 'Backend\User\UserController@destroy')->name('user.destroy')->middleware('can:user_delete');

        Route::group(['prefix' => 'profile'], function () {
            Route::get('{user}', 'Backend\User\UserprofileController@edit')->name('profile');
            Route::post('{user}', 'Backend\User\UserprofileController@update');
            Route::get('editPass/{user}', 'Backend\User\UserprofileController@editPassword')->name('changePassword');
//            ->middleware('auth')
            Route::post('editPass/{user}', 'Backend\User\UserprofileController@updatePassword');
        });
    });
    //Role
    Route::group(['prefix' => 'role'], function (){
        Route::get('/', 'Backend\Role\RoleController@index')->name('role')->middleware('can:role_view');
        Route::get('/create', 'Backend\Role\RoleController@create')->name('role.create')->middleware('can:role_create');
        Route::post('/store', 'Backend\Role\RoleController@store')->name('role.store');
        Route::get('/edit/{Role}', 'Backend\Role\RoleController@edit')->name('role.edit')->middleware('can:role_edit');
        Route::post('/update/{Role}', 'Backend\Role\RoleController@update')->name('role.update');
        Route::post('/delete/{Role}', 'Backend\Role\RoleController@destroy')->name('role.destroy')->middleware('can:role_delete');
    });
    //Permission
    Route::group(['prefix' => 'permission'], function (){
        Route::get('/', 'Backend\Permission\PermissionController@index')->name('permission')->middleware('can:permission_view');
        Route::get('/create', 'Backend\Permission\PermissionController@create')->name('permission.create')->middleware('can:permission_create');
        Route::post('/store', 'Backend\Permission\PermissionController@store')->name('permission.store');
        Route::get('/edit/{Permission}', 'Backend\Permission\PermissionController@edit')->name('permission.edit')->middleware('can:permission_edit');
        Route::post('/update/{Permission}', 'Backend\Permission\PermissionController@update')->name('permission.update');
        Route::post('/delete/{Permission}', 'Backend\Permission\PermissionController@destroy')->name('permission.destroy')->middleware('can:permission_delete');
    });

    //Setting

    //Menu
    Route::group(['prefix' => 'menu'], function (){
        Route::get('/', 'Backend\Menu\MenuController@index')->name('menu');
//        ->middleware('can:permission_view')
        Route::get('/create', 'Backend\Menu\MenuController@create')->name('menu.create');
//        ->middleware('can:permission_create')
        Route::post('/store', 'Backend\Menu\MenuController@store')->name('menu.store');
        Route::get('/edit/{Menu}', 'Backend\Menu\MenuController@edit')->name('menu.edit');
//        ->middleware('can:permission_edit')
        Route::post('/update/{Menu}', 'Backend\Menu\MenuController@update')->name('menu.update');
        Route::post('/delete/{Menu}', 'Backend\Menu\MenuController@destroy')->name('menu.destroy');
//        ->middleware('can:permission_delete')
    });

});
Route::group(['prefix' => 'public'], function (){
    Route::get('','Site\HomeController@index')->name('home');
    Route::get('blog','Site\BlogController@index')->name('blog');
    Route::get('blog/{id}','Site\BlogController@show')->name('blogDetails');
    Route::get('shop','Site\ShopController@index')->name('shop');
    Route::get('shop/details/{Product}','Site\ShopController@show')->name('shopDetails');

    Route::get('contact','Site\ContactController@index')->name('contact');

    Route::get('wishlist','Site\WishlistController@index')->name('wishlist');
    Route::get('checkout','Site\CheckoutController@index')->name('checkout');
    Route::get('checkoutSuccess','Site\CheckoutController@success')->name('checkout-success');

    //đăng nhập và đăng kí cho khách hàng

    //
    Route::get('/ajax/view-product', 'Site\ShopController@ajaxViewProduct')->name('productPopup');
    Route::get('cart','Site\CartController@cart')->name('cart');

    Route::get('addCart/{id}','Site\ShopController@addCart')->name('addCart');
    Route::get('cart/{id}','Site\CartController@deleteItem')->name('cartDelete');
    Route::get('cartUpdate/{id}','Site\CartController@updateItem')->name('cartUpdate');

    Route::get('{slug}', 'Site\ShopController@list')->name('shop.list');

});
