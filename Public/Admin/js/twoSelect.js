$(function(){ 
    //初始化体育场馆
    $.get("http://sport.24parking.com.cn/index.php/Admin/Sport/getGymData",null,function(data){  
         if(data.state===1){
             $(data.gym).each(function(index,item){
                 $(".gym").append("<option value='"+item.id+"'>"+item.name+"</option>");
        }); 
       }
    });

  $('.gym').bind('change', function(){ 
    $('.hall').remove();
    $('.space').remove();
    var gid = $(this).val(); 
    console.log(gid);
    if(gid==0){
      $('.hall').remove();
    }else{
          $.get("http://sport.24parking.com.cn/index.php/Admin/Sport/getHallData",{gid:gid},function(data){
            var head = '';
            if(data.state===1){
             $(data.hall).each(function(index,item){
                head += "<option value='"+item.id+"'>"+item.name+"</option>";
           }); 
             var body = "<select class='hall' name='shid'><option value='0'>请选择</option>"+head+"</select>";
            $(".gym").after(body);
       }
      });
    }
});


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
});