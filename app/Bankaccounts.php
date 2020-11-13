<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bankaccounts extends Model
{
    protected $table = 'bankaccounts';

    protected $fillable = ['users_id', 'bank_name', 'account_number', 'balance'];
}
