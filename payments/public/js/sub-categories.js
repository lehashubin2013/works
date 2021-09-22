$(function() {
    setTimeout(function(){
        getSubCategories('.option-category'); 
        
        $('body').on('change', '#category-payment', function() {
            getSubCategories(this);
        });
        
    }, 1000);


    function makeOption(container, id, title){
        let newStr = title[0].toUpperCase() + title.slice(1);
        let option = $('<option value="'+ id +'">'+ newStr +'</option>');

        container.append(option);
    }
    function getSubCategories(obj){
        let categoryId = $(obj).val();
        $.ajax({
            url: routes.showSubCategories,
            type: "GET",
            data: {
                'category_id': categoryId
            },
            success: function (data) {
                let select = $('#sub-category-payment');
                select.empty();

                if(data.length !== 0){
                    $.each(data, function (index, value) {
                        makeOption(select, value['id'], value['sub_title']);
                    })
                }else{
                    makeOption(select, 0, 'Нет категорий');
                }
            },
            error: function (msg) {
                alert('Ошибка: '+ msg.error);
            }
        });
    }
});
