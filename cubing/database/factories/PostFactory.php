<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model\Post;
use Faker\Generator as Faker;

$factory->define(Post::class, function (Faker $faker) {
    $colors = [
        '#ffff93',
        '#fe7a3f',
        '#23aa4b',
        '#cf1818',
    ];
    $img = [
        'https://ethnomir.ru/upload/medialibrary/6b1/rubik.jpg',
        'https://www.interfax.ru/ftproot/textphotos/2016/11/10/%D1%81ube700.jpg',
        'https://www.iphones.ru/wp-content/uploads/2019/08/kubik_rubik-000_resize.jpg',
        'https://biz-brand.ru/wp-content/uploads/2016/11/856325.jpg',
        'https://cccstore.ru/upload/medialibrary/a13/a13b7a4213ce4e905af8e5e0d178da31.jpg',
        'https://images11.popmeh.ru/upload/img_cache/a5d/a5ddac7e136e0c4dca7c2ea3a893cf0f_ce_1936x1032x0x110_cropped_666x444.jpg',
        'https://icdn.lenta.ru/images/2014/05/19/15/20140519154750472/detail_52dfc7b0fcf95a87e0550ea25fbed86e.jpg'
    ];
    return [
        'title' => $faker->text(15),
        'description' => $faker->text(199),
        'image' => $img[$faker->numberBetween(0,6)],
        'category_id' => $faker->numberBetween(1,5),
        'color' => $colors[$faker->numberBetween(0,3)]
    ];
});
