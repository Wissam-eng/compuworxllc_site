<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Age extends Model
{
  use HasFactory;
  protected $table = 'ages';
  protected $fillable = [
    'from',
    'to',
  ];
}
