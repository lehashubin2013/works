<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Главная</title>
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
    <link rel="stylesheet" href="{{asset('css/style.css')}}">
</head>
<body>
    @include('includes.header')

    @yield('content')

    @include('includes.footer')

    {{--    Bootsrap   --}}
    <script src="{{asset('js/app.js')}}"></script>
    {{--    jQuery   --}}
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    @auth
    {{--    jCanvas  --}}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jcanvas/21.0.1/min/jcanvas.min.js"></script>
    {{--    Routes  --}}
    <script type="text/javascript">
        window.routes = {
            'showSubCategories': "{{ route('ajax.sub.categories') }}",
            'showCategories': "{{ route('ajax.categories') }}",
            'ajaxGetPayments': "{{ route('ajax.payments') }}",
        };
    </script>

    <script src="{{asset('js/canvas.js')}}"></script>
    @if(!$categories->isEmpty())
        {{--    AjaxCategories  --}}
        <script src="{{asset('js/categories.js')}}"></script>
        {{--    AjaxSubCategories  --}}
        <script src="{{asset('js/sub-categories.js')}}"></script>
    @endif
    @endauth
</body>
</html>
