var g = {};

window.onload = function() {
	// touchType = ('createTouch' in document) ? 'tap' : 'click';
	g.initScroll();

    if(location.href.indexOf("dianping") > -1){
        $(".header .left,.header .right").addClass("hide");
    }

	g.scroll = new TouchScroll({
        id: 'wrapper',
        onscroll: function(){
        	g.l = $(".touchscrollelement").position().left; 
        	g.t = $(".touchscrollelement").position().top; 
        	g.areaObj.css("left",g.l);
        	g.timeObj.css("top",g.t);
        }
    })

    g.urlMsg = getURLInformation();
    $(".date-wrap a").each(function(i,item){
        if($(item).attr("data-t") == g.urlMsg.t){
            $("li",item).addClass('active')
            return false;
        }
    })
    if($(".date-wrap li.active").parent("a").index() > 3){
        $(".data-change").toggleClass("expend");
        
    }
    if($(".date-wrap li").size() == 7){
    	$(".data-change").css("background","none");
    }else if($(".date-wrap li").size() <= 4){
        $(".data-change").addClass("hide");
    }

    var loadInterval = setInterval(function() {
        if ($(".loading").attr("data-lock") == "1") {
            $(".loading").addClass("hide");
            $(".main").removeClass("hide");
            clearInterval(loadInterval);
        }
    }, 500);

    var scrollInterval = setInterval(function(){
    	var touchH = $(".touchscrollwrapper").height();
    	if(touchH == 0){
        	g.scroll.resize();
    	}
    	else{
			// setViewPos();
            clearInterval(scrollInterval);
    	}
    },100);

    $(".data-change").on("click", function() {
    	if($(".date-wrap").find("li").size() > 4){
    		var _this = $(this);
        	_this.toggleClass("expend");
            if($(".date-wrap li").size() < 7){
                if($(".data-change").hasClass('expend')){
                    $(".data-change").addClass("bg");
                }else{
                    $(".data-change").removeClass("bg");
                }
            }
    	}
    })

    g.bNopay = parseInt($(".main").attr("data-due"));
}

g.remToPx = function(rem){
	var win = $(window).width();
	return 100/375*win*rem;
}

// 初始化场次时间样式
g.initScroll = function(){
	var oList = $(".book-list"),
		aUl = $("dl",oList),
	    ul = aUl.eq(0),
	   	wid = 44 * aUl.size();
	oList.css({"width":wid});
	g.areaObj = $(".book-num ul");
	g.areaObj.css("width",wid);
	g.timeObj = $(".book-time ul");
}

//显示toast
function showToast(errMsg) {
    $(".toast .toast-msg").text(errMsg);
    $(".toast").removeClass('hide');
    setTimeout(function(){
        $(".toast").animate({"opacity":0},300,function(){
            $(this).css("opacity",1).addClass("hide");
        })
    },1000);
}

// 显示头部提示
function showHeadTip(){
	$(".book-headTip").animate({"top":"0"},800,function(){
		setTimeout(function(){
			$(".book-headTip").animate({"top":"-0.6rem"},800)
		},2000);
	});
}

// 可订场次显示位置调整
// function setViewPos(){
// 	var l = 0,t = 0,obj,
// 		aUl = $(".book-list ul");
// 		rows = aUl.eq(0).find("li").size(),
// 		cols = aUl.size();
// 	$(".book-list li").each(function(i,item){
// 		var li = $(item);
// 		if(!li.hasClass("disable")){
// 			l = li.parent("ul").index();
// 			return false;
// 		}
// 	})
// 	for (var i = 0; i < rows; i++) {
// 		for (var j = 0; j < cols; j++) {
// 			obj = $('.book-list ul').eq(j).find("li").eq(i);
// 			if(!obj.hasClass("disable")){
// 				t = i;
// 				var ll = -(g.remToPx(0.5)+1) * l;
// 				var tt = -(g.remToPx(0.3)+1) * t;
// 				$(".touchscrollelement").css({"left":ll,"top":tt});
// 				g.areaObj.css("left",ll);
// 				g.timeObj.css("top",tt);
// 				return;
// 			}
// 		}
// 	};
// }

// 调用取消订单接口
var cancelLock = false;

$('#book-Cancel').on("click",function() {
	var order_id = $(this).attr('order_id');
    if(cancelLock){
		return;
	}
    cancelLock = true;
    $.ajax({
		url: '/order/Cancel',
		type: 'GET',
		dataType: 'JSON',
		cache: false,
		data: {
            id: order_id,
		},
		success: function(res){
			cancelLock = false;
            var res=JSON.parse(res);
			if(res && res.code == 1){
				showToast("订单已取消");
				setTimeout(function(){
					location.reload();
				},500);
			} else {
				showToast(res.msg);
				setTimeout(function () {
					location.reload();
				}, 500);
			}
			$(".book-noPaySprite").addClass("hide");
		},
		error: function(res){
			cancelLock = false;
			showToast('网络出错，请稍后再试');
		}
	});
 });

// 判断是否可以支付
var hrefLock = false;
$('#book-href').on("click",function() {
    var order_id = $(this).attr('order_id');
    if(hrefLock){
        return;
    }
    hrefLock = true;
    $.ajax({
        url: '/order/beforepay',
        type: 'GET',
        dataType: 'JSON',
        cache: false,
        data: {
            id: order_id,
        },
        success: function(res){
            hrefLock = false;
            var res=JSON.parse(res);
            if(res && res.code == 1){
                location.href = $('#book-href').attr("data-href");
            } else {
                showToast(res.data);
                setTimeout(function () {
                    location.reload();
                }, 1000);
            }
            $(".book-noPaySprite").addClass("hide");
        },
        error: function(res){
            hrefLock = false;
            showToast('网络出错，请稍后再试');
        }
    });
 });

$('.piao_botton').delegate(".addcart","click",function() {
    var index =  $(this).attr("index");
    var parentObj = $(this).parent();
    if(parentObj.find("input").length>0){
        $(this).parent().find("input").val(parentObj.find("input").val()*1+1*1);
    }else{
        var movecart = "<div  style='float:left' class='movecart'><img src='/Public/Front/img/del.png' /></div>";
        var input = "<div  style='float:left'><input type='text' index='"+index+"' value='1' /></div>"
        $(parentObj).find("img").attr('src',"/Public/Front/img/add.png");
        $(this).parent().html(movecart+input+parentObj.html());
    }
    //已选项目修改内容修改
    selectedUPdate($(parentObj).parent().children("div")[0],1);
});

$('.piao_botton').delegate(".movecart","click",function() {
    var parentObj = $(this).parent();
    if(parentObj.find("input").val()==1){
        var obj = parentObj.find("div").last();
        $(obj).find("img").attr('src',"/Public/Front/img/b_add.png");
        $(this).parent().html(obj);
    }else{
        $(this).parent().find("input").val(parentObj.find("input").val()*1-1*1);
    }
    //已选项目修改内容修改
    selectedUPdate($(parentObj).parent().children("div")[0],-1);
});


function selectedUPdate(obj,addNum){
    var index = $(obj).attr("index");
    var li_id = $(obj).parent().attr('id');
    var id    = li_id.split("_")[1];
    var text  = $($($(obj).children("div")[0]).children("p")[0]).html();
    var price = $($($(obj).children("div")[2]).children("p")[0]).html();
    var unit  = $($($(obj).children("div")[2]).children("p")[1]).html();
    var existed = 0;
    var selectNum = 0;
    if($("#selected").children("li").length>0){
        $("#selected").children("li").each(function(){
            var t = $(this).find("b").html();
            var se_id = $(this).attr('id');
            var sid   = se_id.split("_")[1];
            if(id == sid){//t.indexOf(text)>-1
                existed = 1;
                var num = t.split("x")[1]*1+addNum;
                if(num==0){
                    this.remove();
                    selectNum--;
                }else{
                    $(this).find("b").html(t.split("x")[0] +"x" +num);
                    $(this).attr('class',num);
                    var fee = $(this).find("em").html();
                    fee = fee.substr(1,fee.length);
                    $(this).find("em").html("￥"+(fee*1+price*addNum));
                }
            }
            selectNum++;
        });
    }

    if(existed==0){
        var tag = $(obj).parent().attr('tag');
        var imgName = tag + ".png";
        var li_str = "<li id='se_"+id+"' class='"+addNum+"'><img src='/Public/Front/img/"+imgName+"' /><p> <b>"+text+" x "+addNum+"</b> <span>"+(price+unit)+"</span> <em>￥"+(price*addNum)+"</em></p></li>";
        if($("#selected").children("li").length==0){
            $("#selected").html(li_str);
        }else{
            $("#selected").children("li").last().after(li_str);
        }
        selectNum++;
    }

    $("#select_title").html("已选散票 ("+selectNum+")");
    //var total_fee = $(".changdi").find("em").html();
    //total_fee = total_fee.substr(0,total_fee.length-1);
    var total_fee = $("#order_amount").html();
    total_fee = total_fee * 1 + price * addNum;
    $("#order_amount").html(total_fee);
    //$(".changdi").find("em").html((total_fee*1+price*addNum)+"元");
}

//弹出界面
$('#woaicss_con1').delegate(".con_fudong","click",function() {
    var index = $(this).attr("index");
    var item  = $(this).find(".img_fd p").html();
    var imgName = "/Public/Front/img/"+$(this).parent().attr("tag") + ".png";
    $("#item").html(item);
    $("#img_notice").attr("src",imgName);
    $("#notice").html($(this).find("span").html());
    ppp('MyDiv');
});

function getURLInformation() {
  var urlMsg = {}; //定义一个空对象urlMsg
  if (window.location.href.split('#')[0].split('?')[1]) {
      var urlSearch = window.location.href.split('#')[0].split('?')[1].split('&');
  }
  if (urlSearch) {
      for (var i = 0; i < urlSearch.length; i++) {
          urlMsg[urlSearch[i].split('=')[0]] = urlSearch[i].split('=')[1] || "";
      }
  }
  return urlMsg;
}



$("#confirmOrder").bind('click',function(){
    var ids = '';
    $(".book-list .cur").each(function(i,items){
        ids += '|'+$(items).attr("id");
    });
    var ticketNum = $("#selected").children("li").length;
    if(ids == '' && ticketNum == 0){
        alert('请先选择场地或散票');
        return false;
    }
    var date     = $(".clearfix .on").children("em").html();
    var spacetid = $("#spacetid").val();
    var oid      = $("#oid").val();
    var shid     = $("#shid").val();
    var user_phone    = $("#user_phone").html();

    if(ids != ''){//场地预定
        ids          = ids.substring(1);
    }

    var tids   = '';
    var id     = 0;
    var addNum = 0;
    if(ticketNum > 0){//散票预定
        $("#selected").children("li").each(function(){
            addNum = $(this).attr("class");
            id     = $(this).attr('id').split('_')[1];
            tids += "|" + id + '_' + addNum;

        });
        tids = tids.substring(1);
    }

    var param    = {date:date,spacetid:spacetid,ids:ids,tids:tids,shid:shid,oid:oid,user_phone:user_phone};
    $.ajax({
        url:'/Mobile/Front/confirmOrder',
        type:'post',
        datatype:'json',
        data:param,
        success:function(data){
            var result = eval("("+data+")");
            if(result.status == 0){
                $("#confirm_username").html($("#user_name").html());
                $("#confirm_phone").html($("#user_phone").html());
                $("#confirm_number").html($("#user_number").html());
                $("#confirm_balance").html(parseFloat($("#user_balance").html()) - parseFloat($("#order_amount").html()));
                $("#confirm_amount").html($("#order_amount").html());
                $("#order_allamount").html($("#order_amount").html());
                //渲染订单场地列表
                var list = "";

                //场地预定列表 start
                $("#confirm_order_number").html(result.order.number);
                var placelist = result.order.placelist;
                $(placelist).each(function(index,item){
                    var tmp = $("#order_info_tmp").html();
                    tmp = tmp.replace('{spaceinfo}',item.spaceinfo);
                    tmp = tmp.replace('{weekinfo}',item.weekinfo);
                    tmp = tmp.replace('{dateinfo}',item.dateinfo);
                    tmp = tmp.replace('{timeinfo}',item.timeinfo);
                    tmp = tmp.replace('{hourinfo}',item.hourinfo);
                    tmp = tmp.replace('{amount}',item.price);
                    list += tmp;
                });
                $("#confirm_order_list").html(list);
                //场地预定列表 end

                //散票预定列表 start
                list = '';
                $("#confirm_ticket_order_number").html(result.ticket.number);
                var ticketlist = result.ticket.ticketlist;
                $(ticketlist).each(function(index,item){
                    var tmp = $("#ticket_info_tmp").html();
                    tmp = tmp.replace('{tag}','/Public/Front/img/' + item.tag + '.png');
                    tmp = tmp.replace('{title}',item.title);
                    tmp = tmp.replace('{gttype}',item.gttype);
                    tmp = tmp.replace('{datezone}',item.datezone);
                    tmp = tmp.replace('{timezone}',item.timezone);
                    tmp = tmp.replace('{price}',item.price);
                    tmp = tmp.replace('{unit}',item.unit);
                    tmp = tmp.replace('{count}',item.count);
                    tmp = tmp.replace('{amount}',item.price * item.count);
                    list += tmp;
                });
                $("#confirm_ticket_order_list").html(list);
                //散票预定列表 end

                showDialog( 'orderSuccess' );
                //window.location.href = '/Mobile/Order/confirm';
            }else if(result.status == 1){
                alert(result.status);
                //window.location.href = '/Mobile/Userinfo/login';
            }else if(result.status == 3){
                //window.location.href = '{:U("/Mobile/Order/index")}';
                alert(result.msg);
                //window.location.reload();
            }else{
                alert(result.msg);
            }
        }
    });

});


/*显示弹出层*/
function showDialog( str ){
    $( '#' + str ).addClass( 'show' );
}

function confirmOrder(order_number){
    var user_phone = $("#user_phone").html();
    if(user_phone == ''){
        alert('用户信息错误，请重试');
        return;
    }
    if(confirm('确定用户信息并核销当前预定订单吗？')){
        $.ajax({
            url:'/Mobile/Front/consumeOrder',
            type:'post',
            datatype:'json',
            data:{order_number:order_number,user_phone:user_phone},
            success:function(data){
//                console.log(data);
                var result = eval("("+data+")");
                if(result.status == 200){
                    alert('核销成功！');
                    window.location.reload();
                }else{
                    alert(result.msg);
                }
            }
        });
    }
}

function confirmTicketOrder(order_number){
    var user_phone = $("#user_phone").html();
    if(user_phone == ''){
        alert('用户信息错误，请重试');
        return;
    }
    if(confirm('确定用户信息并核销当前散票订单吗？')){
        $.ajax({
            url:'/Mobile/Front/consumeTicketOrder',
            type:'post',
            datatype:'json',
            data:{order_number:order_number,user_phone:user_phone},
            success:function(data){
//                console.log(data);
                var result = eval("("+data+")");
                if(result.status == 200){
                    alert('核销成功！');
                    window.location.reload();
                }else{
                    alert(result.msg);
                }
            }
        });
    }
}

function cancelOrder(order_number, amount, id){
    $("#cancel_username").html($("#user_name").html());
    $("#cancel_phone").html($("#user_phone").html());
    $("#cancel_number").html($("#user_number").html());
    $("#cancel_balance").html($("#user_balance").html());
    $("#cancel_amount").html(amount);
    $("#cancel_allamount").html(amount);
    $("#cancel_order_number").html(order_number);
    $("#cancel_order").html($("#order_" + order_number).html());
    $("#cancel_order").find(".operate-area").remove();
    $("#cancel_order_id").val(id);
    showDialog( 'cancelOrder' );
}

function changeOrder(order_number, amount, id){
    $("#change_username").html($("#user_name").html());
    $("#change_phone").html($("#user_phone").html());
    $("#change_number").html($("#user_number").html());
    $("#change_balance").html($("#user_balance").html());
    $("#change_amount").html(amount);
    $("#change_allamount").html(amount);
    $("#changel_order_number").html(order_number);
    $("#change_order").html($("#order_" + order_number).html());
    $("#change_order").find(".operate-area").remove();
    $("#change_order_id").val(id);

    $("#oid").val(id);
    showDialog( 'changeOrder' );
}

$("#cancelOrderButton").bind('click',function(){
    var oid = $("#cancel_order_id").val();
    $.ajax({
        url:'/Mobile/Order/refound',
        type:'post',
        datatype:'josn',
        data:{oid:oid},
        success:function(data){
            var result = eval("("+data+")");
            alert(result.msg);
            if(result.status == 200){
                window.location.reload();
            }
        }
    });
});

$("#changeOrderButton").bind("click",function(){
    $( this ).closest( '.overlay' ).removeClass( 'show' );
});

$("#autocomplete").keyup(function(event){
    if(event.keyCode ==13){
        var number  = $(this).val();
        var stid    = $("#stid").val();
        $.ajax({
            url:'/Mobile/Front/queryOrderByNumber',
            type:'post',
            datatype:'json',
            data:{number:number,stid:stid},
            success:function(data){
                var result = eval("("+data+")");
                if(result.status == 200){
                    if(result.data.userinfo == null){
                        $("#user_name").html('--');
                        $("#user_phone").html('--');
                        $("#user_number").html('--');
                        $("#user_balance").html('--元');
                        $("#order_list").html('');
                    }else{
                        $("#user_name").html(result.data.userinfo.nickname);
                        $("#user_phone").html(result.data.userinfo.phone);
                        $("#user_number").html(result.data.userinfo.number);
                        $("#user_balance").html(result.data.userinfo.balance+'元');
                    }


                    //场地预定展示 start
                    var list = "";
                    var placelist = result.data.placelist;
                    $(placelist).each(function(index,item){
                        var tmp = $("#order_list_tmp").html();
                        tmp = tmp.replace(/{order_id}/g,item.id);
                        tmp = tmp.replace(/{order_number}/g,item.number);
                        tmp = tmp.replace('{order_icon}','/Public/Front/img/'+item.icon+'.png');
                        tmp = tmp.replace('{order_name}',item.path);
                        tmp = tmp.replace('{order_week}',item.weekinfo);
                        tmp = tmp.replace('{order_date}',item.dateinfo);
                        tmp = tmp.replace('{order_time}',item.timeinfo);
                        tmp = tmp.replace('{order_hour}',item.hourinfo);
                        tmp = tmp.replace(/{order_amount}/g,item.amount);
                        list += tmp;
                    });
                    $("#order_list").html(list);
                    //场地预定展示 end

                    //散票预定展示 start
                    list = "";
                    var ticketlist = result.data.ticketlist;
                    $(ticketlist).each(function(index,item){
                        var tmp = $("#ticket_list_tmp").html();
                        tmp = tmp.replace(/{number}/g,item.number);
                        tmp = tmp.replace('{tag}','/Public/Front/img/' + item.tag + '.png');
                        tmp = tmp.replace('{title}',item.title);
                        tmp = tmp.replace('{gttype}',item.gttype);
                        tmp = tmp.replace('{datezone}',item.datezone);
                        tmp = tmp.replace('{timezone}',item.timezone);
                        tmp = tmp.replace('{price}',item.price);
                        tmp = tmp.replace('{count}',item.count);
                        tmp = tmp.replace('{unit}',item.unit);
                        tmp = tmp.replace('{amount}',item.count * item.price);
                        list += tmp;
                    });
                    $("#ticket_list").html(list);
                    //场地预定展示 end

                }else{
                    alert(result.msg);
                }
            }
        });
    }
});


$("#shid_select").bind('change',function(){
    var id = $(this).val();
    window.location.href = '/Mobile/Front/index/shid/' + id;
})