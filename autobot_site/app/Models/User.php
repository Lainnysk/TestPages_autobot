<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'role_id'
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function getRoleId()
    {
        return $this->attributes['role_id'];
    }

    public function getRole(): Role
    {
        return Role::query()->where('id', $this->attributes['role_id'])->firstOrFail();
    }

    public function checkRole(array|string $roles): bool
    {
        $result = false;

        $current_user_role_name = $this->getRole()->getName();

        if(is_array($roles))
        {
            foreach($roles as $role)
            {
                if($role == $current_user_role_name)
                {
                    $result = true;
                }
            }
        }
        elseif(is_string($roles) && $roles == $current_user_role_name)
        {
            $result = true;
        }

        return $result;
    }
}
