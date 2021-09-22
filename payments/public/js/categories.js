$(function() {
    getCategories();





    function makeOption(container, id, title){
        let newStr = title[0].toUpperCase() + title.slice(1);
        let option = $('<option class="option-category" value="'+ id +'">'+ newStr +'</option>');

        container.append(option);
    }
    function getCategories(){
        $.ajax({
            url: routes.showCategories,
            type: "GET",
            success: function (data) {
                let select = $('#category-payment');
                select.empty();

                if(data.length !== 0){
                    $.each(data, function (index, value) {
                        makeOption(select, value['id'], value['title']);
                    })
                }
            },
            error: function (msg) {
                alert('Ошибка: '+ msg.error);
            }
        });
    }
});
