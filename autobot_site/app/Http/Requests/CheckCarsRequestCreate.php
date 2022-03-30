<?php

namespace App\Http\Requests;

use App\Http\Requests\MainRequests\CheckCarsRequest;
use Illuminate\Foundation\Http\FormRequest;

class CheckCarsRequestCreate extends CheckCarsRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            //
        ];
    }
}
