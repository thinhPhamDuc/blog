<?php

namespace App\Http\Controllers\Backend\Banner;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Banner;
class BannerController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(Request $request)
    {
        //
    }
    public function index()
    {
        $banners = Banner::all();
        return view('backend.banner.index', compact('banners'));
    }

    public function create()
    {
        return view('backend.banner.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'collection' => 'required',
            'subtitle' => 'required',
            'title' => 'required',
            'description' => 'required',
        ],
            [
                'name.required' => 'Không được để trống',
                'collection.required' => 'Không được để trống',
                'subtitle.required' => 'Không được để trống',
                'title.required' => 'Không được để trống',
                'description.required' => 'Không được để trống'
            ]);

        $banner = new Banner();
        $banner->name = $request->name;
        $banner->collection = $request->collection;
        $banner->subtitle = $request->subtitle;
        $banner->title = $request->title;
        $banner->description = $request->description;
        $banner->save();
        if ($request->hasFile('fileToUpload')){
            $image_src = saveFile($request->file('fileToUpload'), 'banner/' . date('Y/m/d'));
            $banner->image = $image_src;
            $banner->save();
        }
        return redirect()->route('banner');
    }

    public function edit($id)
    {
        $banner = Banner::find($id);
        return view('backend.banner.edit', compact('banner'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required',
            'collection' => 'required',
            'subtitle' => 'required',
            'title' => 'required',
            'description' => 'required',
        ],
            [
                'name.required' => 'Không được để trống',
                'collection.required' => 'Không được để trống',
                'subtitle.required' => 'Không được để trống',
                'title.required' => 'Không được để trống',
                'description.required' => 'Không được để trống'
            ]);

        $banner = Banner::find($id);
        $banner->name = $request->name;
        $banner->collection = $request->collection;
        $banner->subtitle = $request->subtitle;
        $banner->title = $request->title;
        $banner->description = $request->description;
        $banner->save();

        if ($request->hasFile('fileToUpload')){
            $image_src = saveFile($request->file('fileToUpload'), 'banner/' . date('Y/m/d'));
            $banner->image = $image_src;
            $banner->save();
        }

        return back()->with('success', 'Sửa thành công');
    }

    public function destroy($id)
    {
        Banner::destroy($id);
        return redirect()->route('banner');
    }
}
