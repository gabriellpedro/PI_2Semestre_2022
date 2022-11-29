<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreDonation extends FormRequest
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
            'title'=>'required|max:255|min:3',
            'author'=>'required|max:50|min:2',
            'category'=>'required',
            ];
    }

    /**
     * Get the error messages for the defined validation rules.
     *
     * @return array
     */
    public function messages()
    {
        return [
            'title.required' => 'Este campo é obrigatório.',
            'title.min' => 'O título deve ter no mínimo duas letras.',
            'title.max' => 'O título deve ter no máximo 255 letras.',
            'author.required' => 'Este campo é obrigatório.',
            'author.min' => 'Este nome é curto demais.',
            'author.max' => 'Este nome é longo demais.',
            'category.required' => 'Este campo é obrigatório.',
            
        ];
    }
}
