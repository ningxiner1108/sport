$('#priceconfigid').bind('change', function(){ 
    var val = $(this).val(); 
    console.log(val);
    if(val!==0){
        $("#priceTable").show();
     }
     $.ajax({
            type: "get",
            url: "http://sport.24parking.com.cn/index.php/Admin/Sport/getPriceDetail",
            dataType:"json",
            data: {"id":val},
            success: function(data){
//               console.log(data.detail);
               var tbody = '';
                if(data.state===1){
                    $(data.detail).each(function(index,item){
                          tbody += "<tr><td class=''>"+item.timezone+"</td><td class=''>"+item.price+"元</td></tr>"
                          
                     });
                     $("#detailList").html(tbody);
                      console.log(tbody);
                }
            },
            });
    });  
        

