<?php

namespace App\Http\Controllers;

use App\Models\TelegramUser;
use Illuminate\Http\Request;

class TelegramUserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $paginate = TelegramUser::query()->paginate();

        return response()->json(['message' => 'success', 'records' => $paginate->items(), 'total' => $paginate->total()], 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\TelegramUser  $telegramUser
     * @return \Illuminate\Http\Response
     */
    public function show(TelegramUser $telegramUser)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\TelegramUser  $telegramUser
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TelegramUser $telegramUser)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\TelegramUser  $telegramUser
     * @return \Illuminate\Http\Response
     */
    public function destroy(TelegramUser $telegramUser)
    {
        //
    }
}