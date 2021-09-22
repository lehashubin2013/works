<div class="section">
    <div class="container p-3 mb-3 bottom-line">
        <div class="row d-flex justify-content-center ">
            <div class="col-5">
                <form method="POST" action="{{route('add.category')}}">
                    @csrf
{{--                    category-title--}}
                    <label for="category-title" class="form-label"><h3>Добавить категорию</h3></label>
                    <input type="text"
                           name="title"
                           id="category-title"
                           class="form-control">
                    @error('title')
                    <small>
                        Такая категория уже существует
                    </small>
                    @enderror
{{--                    category-title--}}

                    <input type="text"
                           name="user_id"
                           value="{{auth()->user()->id}}"
                           hidden>
                    <br>
                    <input type="submit" value="Добавить" name="submitCategory" class="btn btn_user">
                </form>
            </div>

            <div class="col-5">
                <h3>Категории</h3>
                <ul class="list-group list-group-flush">
                    @foreach($categories as $category)
                        <li class="list-group-item">
                            <div class="d-flex w-100 justify-content-between">
                                <p class="mb-1 col-4">{{mb_convert_case($category->title, MB_CASE_TITLE, "UTF-8")}}</p>
                                <small class="text-muted">{{$category->created_at}}</small>
                                <form class="logout-form" action="{{ route('delete.category', $category->id) }}" method="POST" >
                                    @csrf
                                    @method('DELETE')
                                    <input type="submit"
                                           value="X"
                                           style="border: none; background: transparent">
                                </form>
                            </div>
                        </li>
                    @endforeach


                </ul>
            </div>
        </div>
    </div>
</div>
