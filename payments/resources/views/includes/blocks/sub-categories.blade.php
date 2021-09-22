<div class="section">
    @if(!$categories->isEmpty())
    <div class="container p-3 mb-3 bottom-line">
        <div class="row d-flex justify-content-center ">
            <div class="col-5">
                <form method="POST" action="{{route('add.sub.category')}}">
                    @csrf
{{--                    category_id--}}
                    <label for="category-title" class="form-label"><h3>Выбрать категорию</h3></label>
                    <br>
                    <select name='category_id'
                            id="category-title"
                            class="form-control">
                        @foreach($categories as $category)
                            <option value="{{$category->id}}">{{mb_convert_case($category->title, MB_CASE_TITLE, "UTF-8")}}</option>
                        @endforeach
                    </select>
                    <br>
{{--                    category_id--}}

{{--                    sub-category-title--}}
                    <label for="sub-category-title" class="form-label"><h3>Добавить подкатегорию</h3></label>
                    <input type="text"
                           name="sub_title"
                           id="sub-category-title"
                           class="form-control">
                    @error('title')
                    <small>
                        Такая категория уже существует
                    </small>
                    @enderror
                    <br>
{{--                    sub-category-title--}}

                    <input type="submit"
                           value="Добавить"
                           name="submit_category"
                           class="btn btn_user">
                </form>
            </div>
            <div class="col-5">
                <h3>Категории</h3>
                <ol class="list-group list-group-flush">
                    @foreach($categories as $category)
                        <li class="list-group-item">
                            <div class="d-flex w-100 justify-content-between">
                                <p class="mb-1">{{mb_convert_case($category->title, MB_CASE_TITLE, "UTF-8")}}</p>
                                <small class="text-muted">{{$category->created_at}}</small>
                            </div>
                            <ol class="list-group list-group-numbered pl-5">
                                @foreach($category->subCategory as $sub)
                                    <li class="row">
                                        <span class="col-10">{{mb_convert_case($sub['sub_title'], MB_CASE_TITLE, "UTF-8")}}</span>
                                        <form class="logout-form col-2" action="{{ route('delete.sub.category', $sub->id) }}" method="POST" >
                                            @csrf
                                            @method('DELETE')
                                            <input type="submit"
                                                   value="X"
                                                   style="border: none; background: transparent">
                                        </form>
                                    </li>

                                @endforeach
                            </ol>
                        </li>
                    @endforeach
                </ol>
            </div>
        </div>
    </div>
    @endif
</div>
