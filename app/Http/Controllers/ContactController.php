<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contact;

class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $contact = Contact::all();
        return response()->json([
            'data' => $contact
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
        $validatedData = $request->validate([
            'name' => 'required',
            'email' => 'email|required',
            'title' => 'required',
            'message' => 'required'
        ]);
        $contact = Contact::create($validatedData);
        return response()->json([
            'message' => 'Create successfully!',
            'data' => $contact
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
        $contact = Contact::find($id);
        return response()->json([
            'data' => $contact
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
        $contact = Contact::where('id', $id)->update([
            'name' => $request->name,
            'email' => $request->email,
            'title' => $request->title,
            'message' => $request->message
        ]);
        return response()->json([
            'message' => 'Update successfully!'
        ],  201);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $contact = Contact::where('id', $id)->delete();
        return response()->json([
            'message' => 'Delete successfully'
        ], 200);
    }
}
