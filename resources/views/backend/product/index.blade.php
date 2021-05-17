@extends('backend.layouts.master')
@section('title'){{'Product'}}@endsection
@section('content')
    <div id="layoutSidenav">
        @include('backend.layouts.sideNav')
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid">
                    <h1 class="mt-4">Quản lý sản phẩm</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Dashboard</a></li>
                        <li class="breadcrumb-item active">Quản lý sản phẩm</li>
                    </ol>
                    @can('product_create')
                        <a href="{{route('product.create')}}" class="btn btn-primary addBtn">Thêm sản phẩm
                        </a>
                    @endcan
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table mr-1"></i>
                            Bảng sản phẩm
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                    <tr>
                                        <th>Avatar</th>
                                        <th>Tên</th>
                                        <th>Mô tả</th>
                                        <th>Người bán</th>
                                        <th>Giá ưu đãi</th>
                                        <th>Thương hiệu</th>
                                        <th>Size</th>
                                        <th>Danh mục</th>
                                        <th>Tags</th>
                                        <th>Hành động</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($products as $key => $product)
                                        <tr>
                                            <td class="text-center"><img
                                                    src="
                                                        @if($product->avatar)
                                                    {{asset('backend/images').'/'.$product->avatar}}
                                                    @else
                                                    {{asset('backend/images/product/default.png')}}
                                                    @endif"
                                                    alt="" width="100" height="100"></td>
                                            <td>{{$product->name}}</td>
                                            <td class="article">{{$product->description}}
                                                <script>
                                                    $('.article').readmore({
                                                        speed: 75,
                                                        collapsedHeight: 50,
                                                        moreLink: '<a class="ac" href="#">Show more</a>',
                                                        lessLink: '<a class="kapat" href="#">Show Less</a>',
                                                    });
                                                </script>
                                            </td>

                                            <td>{{$product->user->firstname . ' ' . $product->user->lastname}}</td>
                                            <td>{{number_format($product->discount_price)}}đ</td>
                                            <td>{{$product->brand->name}}</td>
                                            <td>@foreach($product->sizes as $size)
                                                    {{$size->name}},
                                                @endforeach</td>
                                            <td >{{$product->category->name}}</td>
                                            <td>
                                                @foreach($product->tags as $tag)
                                                    {{$tag->name}},
                                                @endforeach
                                            </td>
                                            <td class="d-flex">
                                                @can('product_edit', $product->id)
                                                    <a class="btn btn-primary mr-1"
                                                       href="{{route('product.edit',$product->id)}}">Sửa</a>
                                                @endcan
                                                @can('product_delete',$product->id)
                                                    <form action="{{route('product.destroy',$product->id)}}"
                                                          method="POST">
                                                        @csrf
                                                        <button class="delete btn btn-danger">Xóa</button>
                                                    </form>
                                                @endcan
                                            </td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
            @include('backend.layouts.footer')
        </div>
    </div>
@endsection
