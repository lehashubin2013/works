$(function() {
    let DATA_PAYMENTS = {
        payments: {},
        sum: 0
    };
    getPayments()
    initializationCanvas()



    function initializationCanvas(){
        let canvas = $('#main-canvas');
        let OPTION_CANVAS = {
            width: 900,
            height: 400,
            widthCol: 50,
            indent: 110
        }
        canvas.css({'width': OPTION_CANVAS.width+'px'});
        canvas.css({'height': OPTION_CANVAS.height+'px'});
        canvas.drawLine({
            strokeStyle: '#e0bb22',
            strokeWidth: 2,
            x1: 0, y1: OPTION_CANVAS.height-30,
            x2: OPTION_CANVAS.width, y2: OPTION_CANVAS.height-30
        });

        outputByPercent(DATA_PAYMENTS);

        function outputByPercent(data){
            $.each(getPercent(data), function(index, value){
                let newStr = index[0].toUpperCase() + index.slice(1);
                let percent = value[0];
                let payment = value[1];
                canvas.drawRect({
                    fillStyle: '#2b4b43',
                    x: OPTION_CANVAS.indent, y: OPTION_CANVAS.height-30,
                    fromCenter: false,
                    width: OPTION_CANVAS.widthCol,
                    height: -percent*2
                });
                canvas.drawText({
                    text: percent+'%',
                    fontFamily: 'Nunito',
                    fontSize: 17,
                    x: OPTION_CANVAS.indent+30, y: OPTION_CANVAS.height+(-percent*2)-50,
                    fillStyle: '#333333',
                });
                canvas.drawText({
                    text: payment+'₽',
                    fontFamily: 'Nunito',
                    fontSize: 17,
                    x: OPTION_CANVAS.indent+30, y: OPTION_CANVAS.height+(-percent*2)-75,
                    fillStyle: '#333333',
                });
                canvas.drawText({
                    text: newStr,
                    fontFamily: 'Nunito',
                    fontSize: 17,
                    x: OPTION_CANVAS.indent+25, y: OPTION_CANVAS.height-10,
                    fillStyle: '#333333',
                });
                OPTION_CANVAS.indent += 110;
            })
        }
    }
    function getPayments(){
        $.ajax({
            url: routes.ajaxGetPayments,
            type: "GET",
            async: false,
            success: function (data) {
                DATA_PAYMENTS.payments = data['payments'];
                DATA_PAYMENTS.sum = data['sumPayments'];
            },
            error: function (msg) {
                alert('Ошибка: '+ msg);
            }
        });
    }
    function getPercent(data){
        let percent = {};
        $.each(data.payments, function(index, value){
            percent[index] = [];
            percent[index].push(getPercent(data.sum, value).toFixed(2))
            percent[index].push(value);
        });
        return percent;

        function getPercent(sum, number){
            return (number/sum)*100;
        }
    }
});


