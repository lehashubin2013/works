<div class="section">
    @if(!$categories->isEmpty())
    <div class="container p-3 mb-3">
        <div class="row d-flex justify-content-center ">
            <div class="col-5">
                <form method="POST" action="{{route('add.payment')}}">
                    @csrf
{{--                    paid--}}
                    <label for="payments" class="form-label"><h3>Добавить расходы</h3></label>
                    <input type="text"
                           name="paid"
                           id="paid"
                           class="form-control">
                    @error('paid')
                        {{$message}}
                    @enderror
                    <br>
{{--                    paid--}}

{{--                    category_id--}}
                    <label for="category-payment" class="form-label"><h3>В категории</h3></label>
                    <br>
                    <select name='category_id'
                            id="category-payment"
                            class="form-control">
{{--                        @foreach($categories as $category)--}}
{{--                            @if ($loop->first)--}}
{{--                                <option class="option-category"--}}
{{--                                        value="{{$category->id}}"--}}
{{--                                        selected>{{mb_convert_case($category->title, MB_CASE_TITLE, "UTF-8")}}</option>--}}
{{--                            @else--}}
{{--                                <option class="option-category"--}}
{{--                                        value="{{$category->id}}">{{mb_convert_case($category->title, MB_CASE_TITLE, "UTF-8")}}</option>--}}
{{--                            @endif--}}
{{--                        @endforeach--}}
                    </select>
                    @error('category_id')
                        {{$message}}
                    @enderror
                    <br>
{{--                    category_id--}}

{{--                    sub_category_id--}}
                    <label for="sub-category-payment" class="form-label"><h3>И подкатегории</h3></label>
                    <br>
                    <select
                        name='sub_category_id'
                        id="sub-category-payment"
                        class="form-control">

                    </select>
                    @error('sub_category_id')
                        {{$message}}
                    @enderror
                    <br>
{{--                    sub_category_id--}}

                    <input type="text"
                           name="user_id"
                           value="{{auth()->user()->id}}"
                           hidden>
                    <br>
                    <input type="submit"
                           value="Добавить"
                           name="submitCategory"
                           class="btn btn_user">
                </form>
            </div>
            <div class="col-5">
                <h3>Расходы</h3>
                <ul class="list-group list-group-flush">
                    @foreach($payments as $payment)
                        <li class="list-group-item">
                            <div class="d-flex w-100 justify-content-between">
                                <p class="mb-1 col-2">{{mb_convert_case($payment->title, MB_CASE_TITLE, "UTF-8")}}</p>
                                @if($payment->sub_title != null)
                                <p class="mb-1 col-2">{{mb_convert_case($payment->sub_title, MB_CASE_TITLE, "UTF-8")}}</p>
                                @endif
                                <p class="mb-1">{{$payment->paid}} ₽</p>
                                <small class="text-muted">{{$payment->created_at_payments}}</small>
                                <form class="logout-form" action="{{ route('delete.payment', $payment->p_id) }}" method="POST" >
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
    @endif
</div>
