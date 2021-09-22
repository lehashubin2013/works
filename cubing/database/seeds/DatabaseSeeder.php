<?php

use App\Model\Category;
use App\Model\Post;
use App\Model\PostTag;
use App\Model\Tag;
use App\Model\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        factory(Category::class, 5)->create();
        factory(Post::class,     50)->create();
        factory(Tag::class,      15)->create();
        factory(User::class,     3)->create();
//        factory(PostTag::class,  50)->create();

    }
}
