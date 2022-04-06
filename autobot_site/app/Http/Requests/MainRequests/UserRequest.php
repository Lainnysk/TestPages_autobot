<?php

namespace App\Http\Requests\MainRequests;

use App\Models\Address;
use App\Models\Essence;
use App\Models\Role;
use Illuminate\Foundation\Http\FormRequest;

class UserRequest extends FormRequest
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

    public function getName()
    {
        return $this->input('name');
    }

    public function getSurname()
    {
        return $this->input('surname');
    }

    public function getPatronymic()
    {
        return $this->input('patronymic');
    }

    public function getPhoneNumber()
    {
        return $this->input('phone_number');
    }

    public function getTelegramId()
    {
        return $this->input('telegram_id');
    }

    public function getApproved()
    {
        return $this->input('approved');
    }

    public function getRole()
    {
        if($this->input('id_role') != '')
        {
            return Role::getById($this->input('id_role'));
        }
        return '';
    }

    public function getEssence()
    {
        if($this->input('id_essence'))
        {
            return Essence::getEssenceById($this->input('id_essence'));
        }
        return '';
    }

    public function getAddress()
    {
        if($this->input('id_address'))
        {
            return Address::getAddressById($this->input('id_address'));
        }
        return '';
    }

    public function getIdUser()
    {
        return $this->input('id_user');
    }
}
