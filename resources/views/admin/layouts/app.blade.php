@extends('admin.index')
@section('title','Dashboard')
@section('mainContent')
    <!-- partial:partials/_navbar.html -->
    @include('admin.layouts.topbar')
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
    @include('admin.layouts.navbar')
    <!-- partial -->
    @yield('content')
    <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
@stop
