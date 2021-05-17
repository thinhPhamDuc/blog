@extends('backend.layouts.master')
@section('title'){{'Product'}}@endsection
@section('content')
    <div id="layoutSidenav">
        @include('backend.layouts.sideNav')
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid">
                    <h1 class="mt-4">Quản lý thanh menu</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Dashboard</a></li>
                        <li class="breadcrumb-item active">Quản lý sản phẩm</li>
                    </ol>
                        <a href="{{route('menu.create')}}" class="btn btn-primary addBtn">Thêm menu
                        </a>
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table mr-1"></i>
                            Bảng thanh menu
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Slug</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($menus as $key => $menu)
                                        <tr>

                                            <td>{{$menu->name}}</td>
                                            <td>{{$menu->slug}}</td>

                                            <td class="d-flex">
                                                    <a class="btn btn-primary mr-1"
                                                       href="{{route('menu.edit',$menu->id)}}">Sửa</a>

                                                    <form action="{{route('menu.destroy',$menu->id)}}"
                                                          method="POST">
                                                        @csrf
                                                        <button class="delete btn btn-danger">Xóa</button>
                                                    </form>
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
