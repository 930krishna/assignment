<?php

namespace App\Http\Controllers;

use App\Users;
use Illuminate\Http\Request;

class ApiController extends Controller
{
    public function getAllUsers() {
      // logic to get all users goes here
        $users = Users::get()->toJson(JSON_PRETTY_PRINT);
        return response($users, 200);
    }

    public function createUser(Request $request) {
      // logic to create a users record goes here
        $user = new Users;
        $user->first_name = $request->first_name;
        $user->last_name = $request->last_name;
        $user->email = $request->email;
        $user->contact = $request->contact;
        $user->address_line_one = $request->address_line_one;
        $user->address_line_two = $request->address_line_two;
        $user->save();

        return response()->json([
            "message" => "record inserted successfully"
        ], 201);
       
    }

    public function getUser($id) {
      // logic to get a users record goes here
      if (Users::where('id', $id)->exists()) {
        $users = Users::where('id', $id)->get()->toJson(JSON_PRETTY_PRINT);
        return response($users, 200);
      } else {
        return response()->json([
          "message" => "User not found"
        ], 404);
      } 
    }

    public function updateUser(Request $request, $id) {
      // logic to update a users record goes here
         if (Users::where('id', $id)->exists()) {
        $user = Users::find($id);
        $user->first_name = is_null($request->first_name) ? $user->first_name : $request->first_name;
        $user->last_name = is_null($request->last_name) ? $user->last_name : $request->last_name;
        $user->email = is_null($request->email) ? $user->email : $request->email;
        $user->contact = is_null($request->contact) ? $user->contact : $request->contact;
        $user->address_line_one = is_null($request->address_line_one) ? $user->address_line_one : $request->address_line_one;
        $user->address_line_two = is_null($request->address_line_two) ? $user->address_line_two : $request->address_line_two;
        $user->save();

        return response()->json([
            "message" => "record updated successfully"
        ], 200);
        } else {
            return response()->json([
                "message" => "User not found"
            ], 404);        
        }
    }

    public function deleteUser($id) {
      // logic to delete a users record goes here
         if(Users::where('id', $id)->exists()) {
        $user = Users::find($id);
        $user->delete();

        return response()->json([
          "message" => "record deleted"
        ], 202);
      } else {
        return response()->json([
          "message" => "User not found"
        ], 404);
      }
    }
}
