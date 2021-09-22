<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model\PostTag;
use Faker\Generator as Faker;

$factory->define(PostTag::class, function (Faker $faker) {
    return [
        'post_id' => $faker->numberBetween(1,50),
        'tag_id' => $faker->numberBetween(1,15)
    ];
});
