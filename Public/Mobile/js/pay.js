function wxpay(){
    var signPackage;
    $.ajax({
        async: false,
        type: "get",
        url: "/Mobile/WeiXin/getJsSign?url=" + encodeURIComponent(location.href),
        dataType: "json",
        cache: false,
        success: function (data) {
            signPackage = (data instanceof Object) ? data : JSON.parse(data);
        }
    });

    wx.config({
        debug: false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
        appId: signPackage.appid, // 必填，公众号的唯一标识
        timestamp: signPackage.timestamp, // 必填，生成签名的时间戳
        nonceStr: signPackage.noncestr, // 必填，生成签名的随机串
        signature: signPackage.signature,// 必填，签名，见附录1
        jsApiList: ['chooseWXPay'] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2
    });
}


function callpay() {
    if($("#paystatus").val() == 1){
        return false;
    }else{
        $("#paybutton").html("支付处理中...");
        $("#paystatus").val(1);
    }
    wxpay();

    var id = 0;
    var ids = '0';
    var amount = 0;
    var amounts = '0';
    $(".list_pay").each(function(){
        if($(this).find(".list_select").attr('src') == '/static/images/select_all_yes.png'){
            id = $(this).find('.list_pay_id').html();
            amount = $('#list_amount_'+id).html();
            ids += '_' + id;
            amounts += '_' + amount;
        }
    });
    var param = '{"ids":"'+ids+'","amounts":"'+amounts+'"}';
    var amount      = $(".list_amount").find(".list_pay_right_amount").children("span").html();
    if(parseFloat(amount) > 0){
        jsApiCall();
    }else{
        if(parseFloat($("#allamount").val()) == 0){
            alert('请先选择需要支付的账单');
            return false;
        }
        var para = '{"orderNumber":"'+$("#orderNumber").val()+'"}';

        $.ajax({
            url:"/Mobile/DiscountPay/notify",
            type:"post",
            data:para,
            dataType:"json",
            success:function(datas){
                if(datas.status == 200){
                    // 支付成功后的回调函数
                    var num = new Number($("#allamount").val());
                    var allamount		 = num.toFixed(2);

                    num = new Number($("#alldiscount").val());
                    var discount		 = num.toFixed(2);
                    var orderNumber  = $("#orderNumber").val();
                    var url = '';
                    if($("#url").val() == "wxpay"){
                        url = 'Mobile/WxOrderForm/suc/amount/'+allamount+'/discount/'+discount+'/orderNumber/'+orderNumber;
                    }else{
                        url = 'Mobile/OrderForm/suc/amount/'+allamount+'/discount/'+discount+'/orderNumber/'+orderNumber;
                    }
                    location.href = G.baseUrl + url;
                }
            }
        });
        //location.href = G.baseUrl + 'Mobile/DiscountPay/notify/orderNumber/'+orderNumber;
    }
}


//调用微信JS api 支付
function jsApiCall() {
    var timeStamp   = $("#timeStamp").val();
    var nonceStr    = $("#nonceStr").val();
    var packages    = $("#packages").val();
    var paySign     = $("#paySign").val();

    if(packages != ''){
        wx.chooseWXPay({
            timestamp: timeStamp, // 支付签名时间戳，注意微信jssdk中的所有使用timestamp字段均为小写。但最新版的支付后台生成签名使用的timeStamp字段名需大写其中的S字符
            nonceStr: nonceStr, // 支付签名随机串，不长于 32 位
            package: packages, // 统一支付接口返回的prepay_id参数值，提交格式如：prepay_id=***）
            signType: 'MD5', // 签名方式，默认为'SHA1'，使用新版支付需传入'MD5'
            paySign: paySign, // 支付签名
            success: function (res) {// 支付成功后的回调函数
                var oid    = $("#oid").val();
                var amount = $("#amount").val();
                var number = $("#number").val();
                location.href = G.baseUrl + 'Mobile/Order/success/amount/'+amount+'/id/'+oid+'/number/'+number;
            },
            cancel:function(res){
                $("#confirm").html("确认支付");
                $("#paystatus").val(0);
            }
        });
    }

}
