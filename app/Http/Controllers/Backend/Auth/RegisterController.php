<?php

namespace App\Http\Controllers\Backend\Auth;
use Illuminate\Http\Request;
use App\Mail\verifyEmail;
use App\User;
use App\VerifyUser;

use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;


class RegisterController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(Request $request)
    {
        //
    }
    public function create(){
        return view('backend.auth.register');
    }
    public function store(Request $request)
    {
        $request->validate([
            'firstname' => 'required|max:255',
            'lastname' => 'required|max:255',
            'email' => 'required|email|unique:users',
            'password' => 'required|confirmed',
        ], [
            'firstname.required' => 'Không được để trống',
            'lastname.required' => 'Không được để trống',
            'email.required' => 'Không được để trống',
            'password.required' => 'Không được để trống',
            'password.confirmed' => 'Mật khẩu không khớp',
            'email.email' => 'Email không đúng định dạng',
            'email.unique' => 'Email đã tồn tại'
        ]);
        $user = new User();
        $user->firstname = $request->firstname;
        $user->lastname = $request->lastname;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->save();

        $verified_user = new VerifyUser();
        $verified_user->token = Str::random(60);
        $verified_user->user_id = $user->id;
        $verified_user->save();

        Mail::to($user->email)->send(new verifyEmail($user));
        session()->put('email_resend', $user->email);
        return redirect()->route('resend');

        // The blog post is valid...
    }
}
