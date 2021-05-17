<header>
    <!-- header-top-area start -->
    <div class="header-top-area" id="sticky-header">
        <div class="container">
            <div class="row">
                <div class="col-6 col-md-2">
                    <!-- logo-area start -->
                    <div class="logo-area">
                        <a href="{{route('home')}}"><img src="{{asset('site/images/logo/1.png')}}" alt="logo"></a>
                    </div>
                    <!-- logo-area end -->
                </div>
                <div class="col-md-7 d-none d-lg-block">
                    <!-- menu-area start -->
                    <div class="menu-area">
                        <nav>
                            <ul>
                                <li><a href="{{route('home')}}">Trang chủ</a></li>
                                <?php
                                $parentMenus = \App\Menu::where('parent_id', 0)->orderBy('order_number')->get();
                                ?>
                                @foreach($parentMenus as $parentMenu)
                                    <li><a href="{{ \Illuminate\Support\Facades\URL::to('public/'.$parentMenu->slug)}}">{{$parentMenu->name}}</a>
                                        <?php
                                        $childrenMenus = \App\Menu::where('parent_id', $parentMenu->id)->orderBy('order_number')->get();
                                        ?>
                                        @if(!$childrenMenus->isEmpty())
                                            <ul class="mega-menu">
                                                @foreach($childrenMenus as $childrenMenu)
                                                    <li>
                                                        <ul class="sub-menu-2">
                                                            <li><a href="{{ \Illuminate\Support\Facades\URL::to('public/'.$childrenMenu->slug)}}">{{$childrenMenu->name}}</a>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                @endforeach
                                            </ul>

                                        @endif

                                    </li>
                                @endforeach
                            </ul>
                        </nav>
                    </div>
                    <!-- menu-area end -->
                </div>
                <div class="col-6 col-md-3">
                    <!-- header-right-area start -->
                    <div class="header-right-area">
                        <ul>
                            <li><a id="show-search" href="#"><i class="icon ion-ios-search-strong"></i></a>
                                <div class="search-content" id="hide-search">
                                            <span class="close" id="close-search">
                                                <i class="ion-close"></i>
                                            </span>
                                    <div class="search-text">
                                        <h1>Tìm Kiếm</h1>
                                        <form action="#">
                                            <input type="text" placeholder="Tìm Kiếm" />
                                            <button class="btn" type="button">
                                                <i class="fa fa-search"></i>
                                            </button>
                                        </form>
                                    </div>
                                </div>
                            </li>
                            <li><a href="{{route('cart')}}"><i class="icon ion-bag"></i></a>
                                <span>
                                    {{\Gloudemans\Shoppingcart\Facades\Cart::content()->count()}}
                                </span>
                                <div class="mini-cart-sub">
                                    <div class="cart-product">
                                        @foreach(\Gloudemans\Shoppingcart\Facades\Cart::content() as $product)
                                            <div class="single-cart">
                                                <div class="cart-img">
                                                    <a href="{{route('shopDetails', $product->id)}}"><img src="
                                                    @foreach($products as $prod)
                                                        @if($prod->id == $product->id)
                                                        {{asset('backend/images').'/'.$prod->avatar}}
                                                        @endif
                                                        @endforeach "
                                                                                                          alt="book" /></a>
                                                </div>
                                                <div class="cart-info">
                                                    <h5><a href="{{route('shopDetails', $product->id)}}">{{$product->name}}</a></h5>
                                                    <p>{{$product->qty}} x {{$product->price}}đ</p>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>
                                    <div class="cart-totals">
                                        <h5>Tổng <span>{{\Gloudemans\Shoppingcart\Facades\Cart::subtotal()}}đ</span></h5>
                                    </div>
                                    <div class="cart-bottom">
                                        <a href="{{route('checkout')}}">Thanh Toán</a>
                                    </div>
                                </div>
                            </li>
                            <li><a href="{{route('wishlist')}}"><i class="fal fa-heart"></i></a>
                            </li>
                            <li><a href="#" id="show-cart"><i class="icon ion-android-person"></i></a>
                                <div class="shapping-area" id="hide-cart">
                                    <div class="single-shapping">
                                        <span>Tài khoản</span>
                                        <ul>
                                            <li><a href="register.php">Đăng Ký</a></li>
                                            <li><a href="login.php">Đăng Nhập</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!-- header-right-area end -->
                </div>
            </div>
        </div>
    </div>
    <!-- header-top-area end -->
    <!-- mobile-menu-area start -->
    <div class="mobile-menu-area d-lg-none">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="mobile-menu">
                        <nav id="mobile-menu-active">
                            <ul id="nav">
                                <li><a href="{{route('home')}}">trang chủ</a></li>
                                <li><a href="{{route('shop')}}">nam</a>
                                    <ul>
                                        <li><a href="{{route('shop')}}">áo khoác</a></li>
                                        <li><a href="{{route('shop')}}">áo len</a></li>
                                        <li><a href="{{route('shop')}}">áo nỉ chui đầu</a></li>
                                        <li><a href="{{route('shop')}}">áo sơ mi</a></li>
                                        <li><a href="{{route('shop')}}">áo phông</a></li>
                                        <li><a href="{{route('shop')}}">áo polo</a></li>
                                        <li><a href="{{route('shop')}}">quần jeans</a></li>
                                        <li><a href="{{route('shop')}}">quần vải</a></li>
                                        <li><a href="{{route('shop')}}">quần kaki</a></li>
                                        <li><a href="{{route('shop')}}">quần shorts</a></li>
                                        <li><a href="{{route('shop')}}">áo phông active</a></li>
                                        <li><a href="{{route('shop')}}">quần active</a></li>
                                        <li><a href="{{route('shop')}}">áo mặc nhà</a></li>
                                        <li><a href="{{route('shop')}}">quần mặc nhà</a></li>
                                        <li><a href="{{route('shop')}}">áo ba lỗ mặc nhà</a></li>
                                        <li><a href="{{route('shop')}}">bộ mặc nhà</a></li>
                                        <li><a href="{{route('shop')}}">áo mặc trong</a></li>
                                        <li><a href="{{route('shop')}}">quần mặc trong</a></li>
                                    </ul>
                                </li>
                                <li><a href="{{route('shop')}}">phụ kiện</a>
                                    <ul>
                                        <li><a href="{{route('shop')}}">khăn ống</a></li>
                                        <li><a href="{{route('shop')}}">khăn choàng</a></li>
                                        <li><a href="{{route('shop')}}">khăn quàng cổ</a></li>
                                        <li><a href="{{route('shop')}}">khăn họa tiết</a></li>
                                        <li><a href="{{route('shop')}}">mũ len</a></li>
                                        <li><a href="{{route('shop')}}">mũ hiphop</a></li>
                                        <li><a href="{{route('shop')}}">mũ bóng chày</a></li>
                                        <li><a href="{{route('shop')}}">mũ lưỡi chai</a></li>
                                    </ul>
                                </li>
                                <li><a href="{{route('shop')}}">nữ</a>
                                    <ul>
                                        <li><a href="{{route('shop')}}">áo khoác</a></li>
                                        <li><a href="{{route('shop')}}">áo len</a></li>
                                        <li><a href="{{route('shop')}}">áo nỉ chui đầu</a></li>
                                        <li><a href="{{route('shop')}}">áo sơ mi</a></li>
                                        <li><a href="{{route('shop')}}">áo phông</a></li>
                                        <li><a href="{{route('shop')}}">áo polo</a></li>
                                        <li><a href="{{route('shop')}}">váy liền</a></li>
                                        <li><a href="{{route('shop')}}">chân váy</a></li>
                                        <li><a href="{{route('shop')}}">quần jeans</a></li>
                                        <li><a href="{{route('shop')}}">quần vải</a></li>
                                        <li><a href="{{route('shop')}}">quần kaki</a></li>
                                        <li><a href="{{route('shop')}}">quần shorts</a></li>
                                        <li><a href="{{route('shop')}}">áo mặc nhà</a></li>
                                        <li><a href="{{route('shop')}}">quần mặc nhà</a></li>
                                        <li><a href="{{route('shop')}}">áo ba lỗ mặc nhà</a></li>
                                        <li><a href="{{route('shop')}}">váy mặc nhà mặc nhà</a></li>
                                        <li><a href="{{route('shop')}}">bộ mặc nhà</a></li>
                                        <li><a href="{{route('shop')}}">áo mặc trong</a></li>
                                        <li><a href="{{route('shop')}}">quần mặc trong</a></li>
                                        <li><a href="{{route('shop')}}">quần tất mặc trong</a></li>
                                    </ul>
                                </li>
                                <li><a href="{{route('shop')}}">Tin Tức</a></li>
                                <li><a href="{{route('contact')}}">liên hệ</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- mobile-menu-area end -->
</header>
