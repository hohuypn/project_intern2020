<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Slide;

class SlideController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $slide = Slide::all();
        return response()->json([
            'data' => $slide
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $slide = new Slide($request->all());
        $imageFile = $request->file("image");
        $filename  = microtime().'-'.$imageFile->getClientOriginalName();
        $imageFile->move(public_path('image\slide'), $filename);
        $slide->image = "image\slide\\".$filename;
        $slide->save();
        return response()->json([
            'message' => 'Create successfully new slide',
            'data' => $slide
        ], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $slide = Slide::find($id);
        return response()->json([
            'data' => $slide
        ], 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $slide = Slide::find($id);
        $slide->name = $request->name;

        if ($request->hasFile('image')) {
            $imageFile = $request->file('image');
            $filename  = microtime().'-'.$imageFile->getClientOriginalName();
            $imageFile->move(public_path('image\slide'), $filename);
            $slide->image = "image\slide\\".$filename;
        }
        $slide->save();
        
        return response()->json([
            'message' => 'Update successfully slide',
            'data' => $slide
        ], 201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $slide = Slide::where('id', $id)->delete();
        return response()->json([
            'message' => 'Delete slide successfully!'
        ], 200);
    }
}
