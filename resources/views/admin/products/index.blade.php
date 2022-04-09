@extends('admin.layouts.app')
@section('title','Products')
@section('content')
    <div class="main-panel">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header border bottom">
                            <h4 class="card-title text-uppercase font-weight-bold">Manage Products <span
                                    class="badge badge-warning"></span></h4>
                            <a href="{{route('admin.productCreate')}}"
                               class="float-right btn btn-info btn-sm mb-0"><i class="fa fa-plus-circle"></i>
                                Add Product</a>
                        </div>
                        <div class="card-body">
                            <div class="table-overflow">
                                @if(Session::has('success'))
                                    <p class="alert {{ Session::get('alert-class', 'alert-success') }}">{{ Session::get('success') }}</p>
                                @endif

                                <table class="table table-condensed table-striped">
                                    <thead class="thead-dark">
                                    <tr>
                                        <th scope="col">S.L</th>
                                        <th scope="col">Thumbnail</th>
                                        <th scope="col">Title</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Color</th>
                                        <th scope="col" class="text-center">Status</th>
                                        <th class="text-center" scope="col">Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    @forelse($products as $product)
                                        <tr>
                                            <td></td>
                                            <td width="10%">
                                                <div class="list-media">
                                                    <div class="media-img">
                                                        @if($product->thumbnail)
                                                            <img class="rounded"
                                                                 src="{{asset('uploads/product/'.$product->thumbnail)}}"
                                                                 alt=""/>
                                                        @else
                                                            <img class="rounded"
                                                                 src="{{asset('admin/images/thumb.png')}}"
                                                                 alt=""/>
                                                        @endif
                                                    </div>
                                                </div>
                                            </td>
                                            <td width="20%">
                                                    {{$product->title}}
                                            </td>
                                            <td width="20%">
                                                    {{$product->price}}
                                            </td>

                                            <td width="20%">
                                                    {{$product->color->color_name}}
                                            </td>
                                            <td>

                                                @if($product->status == 1)
                                                    <span class="badge badge-success">Active</span>
@else
                                                    <span class="badge badge-danger">inActive</span>
                                                    @endif

                                            </td>
                                            <td class="text-center">
                                                <a href="{{route('admin.productUpdate',$product->id)}}"
                                                   class="btn btn-info btn-sm"><i class="ti-pencil"></i></a>
                                                <a href="{{route('admin.destroy',$product->id)}}"
                                                   onclick="return confirm('Are you sure want to delete this?')"
                                                   class="btn btn-danger btn-sm"><i class="ti-trash"></i></a>
                                            </td>
                                        </tr>
@empty
                                        <tr>
                                            <td colspan="9">
                                                No Quiz Available
                                            </td>
                                        </tr>
                                    @endforelse
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop
