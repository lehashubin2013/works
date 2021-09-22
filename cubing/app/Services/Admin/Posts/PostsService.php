<?php

namespace App\Services\Admin\Posts;

use App\Model\Category;
use App\Model\Post;

class PostsService
{
    public function store($data){
        $data = Post::create($data);
    }
    public function destroy($id){
        Post::where('id', '=', $id)->delete();
    }
    public function update($data, $id){
        $post = Post::where('id', '=', $id);
        $post->update($data);
    }
}
