<div class="section">
    <div class="container header_user">
            <nav class="navbar navbar-light bg-light">
                <a class="font-weight-bold navbar-brand_user" href="{{route('home')}}">PAYMENT LIST</a>
                <ul class="nav">
                    @guest
                        <li class="nav-item">
                            <a class="nav-link nav-link_user" aria-current="page" href="{{route('login.show')}}">Войти</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link nav-link_user" aria-current="page" href="{{route('register.show')}}">Регистрация</a>
                        </li>
                    @else
                        <li class="nav-item">
                            <a class="nav-link nav-link_user"
                                onclick="event.preventDefault();document.getElementById('logout-form').submit();
                            ">
                                Выход
                            </a>
                        </li>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                            @csrf
                        </form>
                    @endguest
                </ul>
            </nav>
    </div>
</div>
