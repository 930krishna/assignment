<?php

namespace App\Http\Controllers;

use DB;
use App\Users;
use App\Bankaccounts;
use Illuminate\Http\Request;

class AccountsController extends Controller
{
    public function addAccounts(Request $request) {
      // logic to add bank account record goes here
      if (Users::where('id', $request->user_id)->exists()) {
        $bank = new Bankaccounts;
        $bank->users_id = $request->user_id;
        $bank->bank_name = $request->bank_name;
        $bank->account_number = $request->account_number;
        $bank->balance = $request->balance;
        $bank->save();

        return response()->json([
            "message" => "Record inserted successfully"
        ], 201);
      } else {
        return response()->json([
          "message" => "User not found"
        ], 404);
      }     
      
    }
    
    public function listAccounts($user_id) {
      // list of all user bank accounts
      if (Bankaccounts::where('users_id', $user_id)->exists()) {
        $bankAccounts = Bankaccounts::where('users_id', $user_id)->get()->toJson(JSON_PRETTY_PRINT);
        return response($bankAccounts, 200);
      } else {
        return response()->json([
          "message" => "Record not found"
        ], 404);
      } 
    }
    
    public function listUsers() {
      // list of all users and his balance                       
        $users = DB::table('users')
                ->select('users.id','users.first_name','users.last_name', 'users.email',
                            DB::raw("(SELECT SUM(bankaccounts.balance) FROM bankaccounts
                                WHERE bankaccounts.users_id = users.id
                                GROUP BY bankaccounts.users_id) as total_balance"))
                ->get()
                ->toJson(JSON_PRETTY_PRINT);
        
        return response($users, 200);
     
    }
}
