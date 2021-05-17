@extends('backend.layouts.master')
@section('title'){{'Post'}}@endsection
@section('content')
    <div id="layoutSidenav">
        @include('backend.layouts.sideNav')
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid">
                    <h1 class="mt-4">Quản lý bài viết</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Dashboard</a></li>
                        <li class="breadcrumb-item active">Quản lý sản phẩm</li>
                    </ol>
{{--                    @can('product_create')--}}
                        <a href="{{route('post.create')}}" class="btn btn-primary addBtn">Thêm sản phẩm
                        </a>
{{--                    @endcan--}}
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table mr-1"></i>
                            Bảng bài viết
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                    <tr>
                                        <th>Ảnh</th>
                                        <th>Tiêu đề</th>
                                        <th>Mô tả</th>
                                        <th>Bài viết</th>
                                        <th>Người đăng bài</th>
                                        <th>Danh mục bài viết</th>
                                        <th>Hành động</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($posts as $key => $post)
                                        <tr>
                                            <td class="text-center"><img
                                                    src="
                                                        @if($post->avatar)
                                                    {{asset('backend/images').'/'.$post->avatar}}
                                                    @else
                                                    {{asset('backend/images/product/default.png')}}
                                                    @endif"
                                                    alt="" width="100" height="100"></td>
                                            <td>{{$post->title}}</td>
                                            <td class="article">{{$post->description}}
                                                <script>
                                                    $('.article').readmore({
                                                        speed: 75,
                                                        collapsedHeight: 50,
                                                        moreLink: '<a class="ac" href="#">Show more</a>',
                                                        lessLink: '<a class="kapat" href="#">Show Less</a>',
                                                    });
                                                </script>
                                            </td>
                                            <td>{{$post->content}}</td>
                                            <td>{{$post->user->firstname . ' ' . $post->user->lastname}}</td>

{{--                                            <td >{{$post->category->name}}</td>--}}

                                            <td class="d-flex">
{{--                                                @can('product_edit', $product->id)--}}
                                                    <a class="btn btn-primary mr-1"
                                                       href="{{route('post.edit',$post->id)}}">Sửa</a>
{{--                                                @endcan--}}
{{--                                                @can('product_delete',$product->id)--}}
                                                    <form action="{{route('post.destroy',$post->id)}}"
                                                          method="POST">
                                                        @csrf
                                                        <button class="delete btn btn-danger">Xóa</button>
                                                    </form>
{{--                                                @endcan--}}
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
