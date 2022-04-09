<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\ProductAlbum;
use App\Models\ProductImage;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        $products = Product::latest('id')->paginate();
        return view('admin.layouts.content',compact('products'));
    }

    public function products()
    {
        $products = Product::latest('id')->get();
        return view('admin.products.index',compact('products'));
    }
    public function productCreate(Request $request)
    {
        if($request->isMethod('post'))
        {
            $request->validate([
                'title'=>'required',
                'details'=>'required',
                'color'=>'required',
                'price'=>'required',
                'thumbnail'=>'required',
                'status'=>'required',
//                'moreImage' => 'mimes:jpeg,png,jpg,gif|max:2048',
//                'moreImage.*' => 'mimes:jpeg,png,jpg,gif|max:2048'
            ]);

            $proDuct = new Product();
            $proDuct->title = $request->title;
            $proDuct->product_id = \Str::random(12);
            $proDuct->details = $request->details;
            $proDuct->album_id = $request->color;
            $proDuct->price = $request->price;
            if ($request->hasFile('thumbnail')) {
                $extension = $request->thumbnail->getClientOriginalExtension();
                $image = \Str::random(4) . '.' . $extension;
                $request->thumbnail->move(public_path('uploads/product/'), $image);
                $proDuct->thumbnail = $image;
            }
            $proDuct->status = $request->status;
            $proDuct->save();

            $images= $request->moreImage;
            $i=0;
            foreach($images as $image)
            {
                $i++;
                $photo= new ProductImage();
                $photo->product_id = $proDuct->id;
                $file = $image;
                $filename = \Str::random(4).$file->getClientOriginalName();
                $file->move(public_path('uploads/product/'), $filename);
                $photo->image = 'uploads/product/'.$filename;
                $photo->save();
            }

            return back()->with('success','New Product Added Successfully');
        }
        else {
            $colors = ProductAlbum::get();
            return view('admin.products.create', compact('colors'));
        }
    }

    public function productUpdate(Request $request,$id)
    {
        if($request->isMethod('post'))
        {
            $request->validate([
                'title'=>'required',
                'details'=>'required',
                'color'=>'required',
                'price'=>'required',
                'status'=>'required',
//                'moreImage' => 'mimes:jpeg,png,jpg,gif|max:2048',
//                'moreImage.*' => 'mimes:jpeg,png,jpg,gif|max:2048'
            ]);

            $proDuct = Product::findOrFail($id);
            $proDuct->title = $request->title;
            $proDuct->product_id = \Str::random(12);
            $proDuct->details = $request->details;
            $proDuct->album_id = $request->color;
            $proDuct->price = $request->price;
            if ($request->hasFile('thumbnail')) {
                $extension = $request->thumbnail->getClientOriginalExtension();
                $image = \Str::random(4) . '.' . $extension;
                $request->thumbnail->move(public_path('uploads/product/'), $image);
                $proDuct->thumbnail = $image;
            }
            $proDuct->status = $request->status;
            $proDuct->save();

            $images= $request->moreImage;
            $i=0;
            foreach($images as $image)
            {
                $i++;
                $photo= new ProductImage();
                $photo->product_id = $proDuct->id;
                $file = $image;
                $filename = \Str::random(4).$file->getClientOriginalName();
                $file->move(public_path('uploads/product/'), $filename);
                $photo->image = 'uploads/product/'.$filename;
                $photo->save();
            }

            return back()->with('success','Product Updated Successfully');
        }
        else {
            $product= Product::findOrFail($id);
            $colors = ProductAlbum::get();
            return view('admin.products.update', compact('colors','product'));
        }
    }

    public function productDestroy($id)
    {
        Product::destroy($id);
        return back()->with('success','Product Has Been Deleted');
    }
}
