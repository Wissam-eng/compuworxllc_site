<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FAQs extends Model
{
    //
    protected $guarded = [];

    public function apiData($lang) {
      return [
        'id' => $this->id,
        'question' => $this['question_'.$lang],
        'answer' => $this['answer_'.$lang]
      ];
    }
}
