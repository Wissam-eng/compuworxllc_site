<?php

namespace App\Http\Requests\admin;

use Illuminate\Foundation\Http\FormRequest;

class UpdateCategoryRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
          'name_ar' => 'required|string|max:255',
          'name_en' => 'required|string|max:255',
          'description_ar' => 'nullable|string|max:255',
          'description_en' => 'nullable|string|max:255',
          'metadata_ar' => 'nullable|string|max:255',
          'metadata_en' => 'nullable|string|max:255',
          'keywords_ar' => 'nullable|string|max:255',
          'keywords_en' => 'nullable|string|max:255',
          'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
          'parent_id' => 'nullable|integer',
          'ordering' => 'integer',
          'status' => 'required|in:active,inactive',

      ];
    }
}
