<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class UserSeed extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $user = new User();

        $user->name = 'Admin';
        $user->email = 'robertoereyes01@gmail.com';
        $user->password = bcrypt('12345678');

        $user->save();

        User::factory(10)->create();
    }
}
