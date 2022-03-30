<?php

namespace App\Http\Requests\MainRequests;

use Illuminate\Foundation\Http\FormRequest;

class CheckCarsRequest extends FormRequest
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

    public function getMark1()
    {
        return $this->input('mark1');
    }

    public function getIdTelegramm()
    {
        return $this->input('id_telegramm');
    }

    public function getNumber()
    {
        return $this->input('number');
    }

    public function getApproved()
    {
        return $this->input('approved');
    }

    public function getId()
    {
        return $this->input('id');
    }
}
