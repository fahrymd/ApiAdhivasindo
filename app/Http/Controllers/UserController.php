<?php
namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;



class UserController extends Controller
{
    public function index()
    {
        $users = User::all(); 
    
        return view('users.index', compact('users'));
    }

    public function create()
    {
        return view('users.create');
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|string',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|min:6',
        ]);
        $validatedData['password'] = bcrypt($validatedData['password']);

        try {
            User::create($validatedData);
    
            return redirect('/users')->with('success', 'data user berhasil di tambahkan');
        } catch (\Exception $e) {
            return back()->withInput()->withErrors(['error' => 'Gagal menambahkan data, silahkan coba kembali.']);
        }
    }

    public function edit($id)
{
    $user = User::findOrFail($id);
    return view('users.edit', compact('user'));
}

public function update(Request $request, $id)
{
    // Validasi input
    $validatedData = $request->validate([
        'name' => 'required|string',
        'email' => 'required|email|unique:users,email,' . $id,
        'password' => 'required|min:6',
    ]);

    $user = User::findOrFail($id);

 

    // Enkripsi password baru dan simpan perubahan
    $user->name = $validatedData['name'];
    $user->email = $validatedData['email'];
    $user->password = bcrypt($validatedData['password']);
    $user->save();

    return redirect()->route('users.index')->with('success', 'data user telah di update');
}
public function destroy(User $user)
    {
        $user->delete();

        return redirect()->route('users.index')->with('success', 'data user berhasil di hapus');
    }

}
