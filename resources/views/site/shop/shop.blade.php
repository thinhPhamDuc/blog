@extends('site.layouts.master')
@section('content')
    <body class="shop">
    <!-- page-wrapper start -->
    <div id="page-wrapper">
        <!-- breadcrumbs-area start -->
        <div class="breadcrumbs-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb-content text-center">
                            <h2>shop</h2>
                            <ul>
                                <li><a href="{{route('home')}}">Trang chủ /</a></li>
                                <li class="active"><a href="{{\Illuminate\Support\Facades\URL::to(@$category->name)}}">{{ @$category->name }}>shop</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumbs-area end -->
        <!-- shop-main-area start -->
        <div class="shop-main-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!-- page-bar start -->
                        <div class="page-bar">
                            <div class="shop-tab">
                                <!-- tab-menu start -->
                                <div class="tab-menu-3">
                                    <ul>
                                        <li class="active"><a href="#th" data-toggle="tab"><i
                                                    class="fa fa-list"></i></a></li>
                                        <li><a href="#list" data-toggle="tab"><i class="fa fa-th"></i></a></li>
                                    </ul>
                                </div>
                                <!-- tab-menu end -->
                                <!-- toolbar-sort start -->
                                <div class="toolbar-sorter">
                                    <select class="sorter-options" data-role="sorter">
                                        <<option selected="selected" value="">Sắp xếp theo: Mặc Định</option>
                                        <option value="name asc" {{ @$_GET['sort'] == 'name asc' ? 'selected' : '' }}>Sắp xếp theo: Tên (A - Z)</option>
                                        <option value="name desc" {{ @$_GET['sort'] == 'name desc' ? 'selected' : '' }}>Sắp xếp theo: Tên (Z - A)</option>
                                        <option value="base_price asc" {{ @$_GET['sort'] == 'base_price asc' ? 'selected' : '' }}>Giá tăng dần</option>
                                        <option value="base_price desc" {{ @$_GET['sort'] == 'base_price desc' ? 'selected' : '' }}>Giá giảm dần</option>
                                    </select>
                                </div>
                                <!-- toolbar-sort end -->
                            </div>
                        </div>
                        <!-- page-bar end -->
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-lg-9 order-lg-12">
                        <!-- shop-right-area start -->
                        <div class="shop-right-area mb-30">
                            <!-- tab-area start -->
                            <div class="tab-content">
                                <div class="tab-pane active" id="th">
                                @foreach($paginateProducts as $product)
                                    <!-- product-wrapper start -->
                                        <div class="product-wrapper product-wrapper-3 mb-40">
                                            <div class="product-img">
                                                <a href="{{route('shopDetails', $product->id)}}">
                                                    <img src="{{asset('backend/images').'/'.$product->avatar}}"
                                                         alt="product" class="primary">
                                                    <img src="{{asset('backend/images').'/'.$product->avatar}}"
                                                         alt="product" class="secondary">
                                                </a>
                                                @if($product->discount_price)
                                                    <span class="sale">sale</span>
                                                @endif
                                                <div class="product-icon" >
                                                    <a href="#" data-toggle="tooltip" title="Thêm vào Giỏ Hàng"><i
                                                            class="icon ion-bag" data-url=""></i></a>
                                                    <a href="#" data-toggle="tooltip" title="So Sánh Sản Phẩm"><i
                                                            class="icon ion-android-options"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#mymodal"
                                                       data-item_id="{{$product->id}}"
                                                       title="Xem Nhanh"><i data-item_id="{{$product->id}}" class="icon ion-android-open"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <div class="manufacture-product">
                                                    <a href="#">{{$product->brand->name}}</a>
                                                    <div class="rating">
                                                        <div class="rating-box">
                                                            <div class="rating1">rating</div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <h2>
                                                    <a href="{{route('shopDetails', $product->id)}}">{{$product->name}}</a>
                                                </h2>
                                                <div class="price">
                                                    <ul>
                                                        @if($product->discount_price)
                                                            <li class="old-price">
                                                                <del>{{$product->base_price}}đ</del>
                                                            </li>
                                                            <li class="new-price">{{$product->discount_price}}đ</li>
                                                        @else
                                                            <li class="new-price">{{$product->base_price}}đ</li>
                                                        @endif
                                                    </ul>
                                                </div>
                                                <p>{{$product->description}}</p>
                                            </div>
                                        </div>
                                        <!-- product-wrapper end -->
                                    @endforeach
                                </div>
                                <div class="tab-pane fade" id="list">
                                    <div class="row">
                                        @foreach($paginateProducts as $product)
                                            <div class="col-12 col-md-6 col-lg-4">
                                                <!-- product-wrapper start -->
                                                <div class="product-wrapper mb-40">
                                                    <div class="product-img">
                                                        <a href="product-details.blade.php">
                                                            <img src="{{asset('backend/images').'/'.$product->avatar}}"
                                                                 alt="product" class="primary">
                                                            <img src="{{asset('backend/images').'/'.$product->avatar}}"
                                                                 alt="product" class="secondary">
                                                        </a>
                                                        @if($product->discount_price)
                                                            <span class="sale">sale</span>
                                                        @endif
                                                        <div class="product-icon">
                                                            <a href="#" data-toggle="tooltip" title="Thêm vào Giỏ Hàng Hay Không"><i
                                                                    class="icon ion-bag"></i></a>
                                                            <a href="#" data-toggle="tooltip"
                                                               title="So Sánh Sản Phẩm"><i
                                                                    class="icon ion-android-options"></i></a>
                                                            <a href="#" data-toggle="modal" data-target="#mymodal"
                                                               class="modalShow" data-value="{{$product}}"
                                                               title="Xem Nhanh"><i
                                                                    class="icon ion-android-open"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <div class="manufacture-product">
                                                            <a href="#">{{$product->brand->name}}</a>
                                                            <div class="rating">
                                                                <div class="rating-box">
                                                                    <div class="rating1">rating</div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <h2><a href="product-details.blade.php">{{$product->name}}</a>
                                                        </h2>
                                                        <div class="price">
                                                            <ul>
                                                                @if($product->discount_price)
                                                                    <li class="old-price">
                                                                        <del>{{$product->base_price}}đ</del>
                                                                    </li>
                                                                    <li class="new-price">{{$product->discount_price}}
                                                                        đ
                                                                    </li>
                                                                @else
                                                                    <li class="new-price">{{$product->base_price}}đ</li>
                                                                @endif
                                                            </ul>
                                                        </div>
                                                        <p>{{$product->description}}</p>
                                                    </div>
                                                </div>
                                                <!-- product-wrapper end -->
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                            <!-- tab-area end -->
                            <!-- pagination-area start -->
                            <div class="pagination-area">
                                <div class="pagination-number">
                                    <ul>
                                        {{--                                        <li><a href="#"><i class="fa fa-angle-left"></i></a></li>--}}
                                        {{$paginateProducts->links()}}
                                        {{--                                        <li class="active"><a href="#">1</a></li>--}}
                                        {{--                                        <li><a href="#">2</a></li>--}}
                                        {{--                                        <li><a href="#">3</a></li>--}}
                                        {{--                                        <li><a href="#"><i class="fa fa-angle-right"></i></a></li>--}}
                                    </ul>
                                </div>
                                <div class="product-count">
                                    <p>Hiện 1 - 3 trong {{$products->count()}}</p>
                                </div>
                            </div>
                            <!-- pagination-area end -->
                        </div>
                        <!-- shop-right-area end -->
                    </div>
                    <div class="col-12 col-lg-3">
                        <!-- shop-left-area start -->
                        <div class="shop-left-area">
                            <!-- single-shop start -->
                            <div class="single-shop mb-40">
                                <div class="categories-title">
                                    <h3>Danh Mục Sản Phẩm</h3>
                                </div>
                                <div class="categories-list">
                                    <ul>
                                        @foreach($categories as $category)
                                            <li><a href="#">{{$category->name}}
                                                    @php($i = 0)
                                                    @foreach($products as $product)
                                                        @if($product->category == $category)
                                                            @php($i++)
                                                        @endif
                                                    @endforeach
                                                     ({{$i}})
                                                </a></li>
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                            <!-- single-shop end -->
                            <!-- singl-shop start -->
                            <div class="single-shop mb-40">
                                <div class="categories">
                                    <h3>Lọc Giá</h3>
                                </div>
                                <div id="slider-range"></div>
                                <input type="text" name="text" id="amount"/>
                            </div>
                            <!-- singl-shop end -->
                            <div class="single-shop mb-40">
                                <div class="categories-title">
                                    <h3>Thương Hiệu</h3>
                                </div>
                                <div class="categories-list">
                                    <ul>
                                        @foreach($brands as $brand)
                                            <li><a href="#">{{$brand->name}}@php($i = 0)
                                                    @foreach($products as $product)
                                                        @if($product->brand_id == $brand->id)
                                                            @php($i++)
                                                        @endif
                                                    @endforeach
                                                    ({{$i}})
                                                </a></li>
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                            <!-- single-shop end -->
                            <!-- single-shop start -->
                            <div class="single-shop mb-40">
                                <div class="categories-title">
                                    <h3>Size</h3>
                                </div>
                                <div class="categories-list">
                                    <ul>
                                        @foreach($sizes as $size)
                                            <li><a href="#">{{$size->name}}
                                                    @php($i = 0)
                                                    @foreach($products as $product)
                                                        @if($product->sizes->contains($size))
                                                            @php($i++)
                                                        @endif
                                                    @endforeach
                                                     ({{$i}})</a></li>
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                            <!-- single-shop end -->
                        </div>
                        <!-- shop-left-area end -->
                    </div>
                </div>
            </div>
        </div>
        <!-- shop-main-area end -->
        <!-- modal-area start -->
        <div class="modal-area">
            <!-- single-modal start -->
            <div class="modal fade" id="mymodal" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="modal-img">
                                <div class="single-img">
                                    <a href=""><img src="" alt="Ảnh sản phẩm"
                                                                        class="primary" /></a>
                                </div>
                            </div>
                            <div class="modal-text">
                                <h2><a href=""></a>Tên sản phẩm </h2>
                                <div class="rating">
                                    <div class="rating-box">
                                        <div class="rating5">rating</div>
                                    </div>
                                </div>
                                <div class="price-rate">
                                    <span class="old-price"><del>
                                          Giá chưa giảm giá  đ</del></span>
                                    <span class="new-price">giá sau giảm giá đ</span>
                                </div>
                                <div class="short-description mt-20">
                                    <p>
                                        Mô tả sản phẩm
                                    </p>
                                </div>
                                <form action="#">
                                    <input type="number" value="" />
                                    <button type="submit">Thêm vào Giỏ Hàng</button>
                                </form>
                                <div class="product-meta">
                                    <span>
                                        Category:Thư mục
                                    </span>
                                    <span>
                                        Tag:Tag sản phẩm
                                    </span>

                                </div>
                                <!-- social-icon-start -->
                                <div class="social-icon mt-20">
                                    <ul>
                                        <li><a href="#" data-toggle="tooltip" title="Share on Facebook"><i
                                                    class="fa fa-facebook"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" title="Share on Twitter"><i
                                                    class="fa fa-twitter"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" title="Email to a Friend"><i
                                                    class="fa fa-envelope-o"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" title="Pin on Pinterest"><i
                                                    class="fa fa-pinterest"></i></a></li>
                                        <li><a href="#" data-toggle="tooltip" title="Share on Instagram"><i
                                                    class="fa fa-instagram"></i></a></li>
                                    </ul>
                                </div>
                                <!-- social-icon-end -->
                            </div>

                            <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- single-modal end -->
        </div>
        <!-- modal-area end -->
    </div>
    <!-- page-wrapper end -->

    @endsection
    @section('footer_script')
        <script>

            $('body').on('click', '.ion-android-open', function () {

            });
            $('.ion-android-open').click(function () {
                var product_id = $(this).data('item_id');
                console.log(product_id);
                $.ajax({
                    url: '{{ URL::to('ajax/view-product') }}',
                    type: 'GET',
                    data: {
                        product_id: product_id,
                        qulity: $('.item3 input[name=qulity]').val()
                    },
                    success: function (html) {
                        $('#mymodal .modal-body').html(html);
                    },
                    error: function () {
                        console.log('Gửi ajaax xem sản phẩm lôi');
                    }
                });
            });
        </script>
@endsection
