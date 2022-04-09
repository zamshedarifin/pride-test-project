@extends('admin.layouts.app')
@section('title','Product Create')
@section('content')
    <div class="main-panel">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-md-8 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Product Create Form</h4>
                            <form class="forms-sample" action="{{route('admin.productCreate')}}" method="post" enctype="multipart/form-data">
                                @csrf
                                @if(Session::has('success'))
                                    <p class="alert {{ Session::get('alert-class', 'alert-success') }}">{{ Session::get('success') }}</p>
                                @endif

                                <div class="row">

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="title">Product Title: <i class="text-danger">*</i>
                                            </label>
                                            <input type="text" name="title" value="{{old('title')}}"
                                                   class="form-control" id="title" placeholder="Product title">
                                            @if($errors->has('title'))
                                                <div class="text-danger"><i class="ti-alert"></i>{{ $errors->first('title') }}</div>
                                            @endif
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="simpleMde">Details : <i class="text-danger">*</i></label>
                                            <textarea class="form-control" id="simpleMde" name="details"
                                                      placeholder="Details">{{old('details')}}</textarea>
                                            @if($errors->has('details'))
                                                <div class="text-danger"><i class="ti-alert"></i>{{ $errors->first('details') }}</div>
                                            @endif
                                        </div>
                                    </div>
                                </div>

                                <div class="row">

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="datepicker">Color: <i class="text-danger">*</i></label>
                                            <select class="form-control" name="color">
                                                @foreach($colors as $color)
                                                <option value="{{$color->id}}" {{old('color') == $color->id ? 'selected' : ''}}>{{$color->color_name}}</option>
                                                @endforeach
                                            </select>
                                            @if($errors->has('color'))
                                                <div class="text-danger"><i class="ti-alert"></i>{{ $errors->first('color') }}</div>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="mark">Price: <i class="text-danger">*</i></label>
                                            <input type="number" name="price" id="mark" value="{{old('price')}}" placeholder="Price"
                                                   class="form-control">
                                            @if($errors->has('price'))
                                                <div class="text-danger"><i class="ti-alert"></i>{{ $errors->first('price') }}</div>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="logo">Thumbnail: <i class="text-danger">*</i></label>
                                            <input type="file" name="thumbnail" value="1644731809.png"
                                                   class="form-control file-size" id="logo">
                                            @if($errors->has('thumbnail'))
                                                <div class="text-danger"><i class="ti-alert"></i>{{ $errors->first('thumbnail') }}</div>
                                            @endif
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="status">Status: <i class="text-danger">*</i></label>
                                            <select name="status" id="status" class="form-control">
                                                <option value="" selected disabled>Choose...</option>
                                                <option value="1" {{old('status')=='1'?'selected':''}}>Active</option>
                                                <option value="2" {{old('status')=='2'?'selected':''}}>Inactive</option>
                                            </select>
                                            @if($errors->has('status'))
                                                <div class="text-danger"><i class="ti-alert"></i>{{ $errors->first('status') }}</div>
                                            @endif
                                        </div>
                                    </div>
                                </div>

                                <p class="font-weight-bold"> Add More Image</p>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                    <div class="input-group control-group increment" >
                                        <input type="file" name="moreImage[]" class="form-control">
                                        <div class="input-group-btn">
                                            <button class="btn btn-success" id="incr" type="button"><i class="glyphicon glyphicon-plus"></i>Add</button>
                                        </div>
                                    </div>
                                            @if($errors->has('moreImage'))
                                                <div class="text-danger"><i class="ti-alert"></i>{{ $errors->first('moreImage') }}</div>
                                            @endif


                                    <div class="clone hide">
                                        <div class="control-group input-group" style="margin-top:10px">
                                            <input type="file" name="moreImage[]" class="form-control">
                                            <div class="input-group-btn">
                                                <button class="btn btn-danger" type="button"><i class="glyphicon glyphicon-remove"></i> Remove</button>
                                            </div>
                                        </div>
                                    </div>
                                        </div>
                                    </div>
                                </div>

                                <button type="submit" class="btn btn-primary me-2">Submit</button>
                                <button type="button" class="btn btn-light">Cancel</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <h6 class="card-title" style="font-size: 14px">Thumbnail Preview</h6>
                                    <img src="{{asset('admin/images/thumb.png')}}" class="card-img rounded h-100 w-100"
                                         alt="...">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop
@push('script')

    <script>
        $("#logo").change(function () {
            readURL(this);
        });
        function readURL(input) {
            if (input.files && input.files[0]) {
                let FileSize = input.files[0].size / 1024;
                if (FileSize > 1024) {
                    alert("This photo should not be larger than 1024 Kb");
                    $('.card-img').attr('src', "{{asset('admin/images/thumb.png')}}");
                    $(input).val('');

                } else {
                    const reader = new FileReader();
                    reader.onload = function (e) {
                        $('.card-img').attr('src', e.target.result);
                    }
                    reader.readAsDataURL(input.files[0]);
                }
            }
        }
    </script>


    <script>
        $(document).ready(function() {
            $("#incr").click(function(){
                var html = $(".clone").html();
                $(".increment").after(html);
            });
            $("body").on("click",".btn-danger",function(){
                $(this).parents(".control-group").remove();
            });
        });
    </script>
@endpush
