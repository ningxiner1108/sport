var gid = $('#gid').val();
//console.log(gid);
var shid = $('#shid').val();
//console.log(shid);

var spaceid = $('#spaceid').val();
//console.log(spaceid);

$(function(){ 
       //初始化体育场馆
    $.get(URL+"/getGymData",null,function(data){  
         if(data.state===1){
             $(data.gym).each(function(index,item){
                 if(item.id==gid){
                   $(".gym").append("<option value='"+item.id+"' selected>"+item.name+"</option>");
                 }else{
                    $(".gym").append("<option value='"+item.id+"'>"+item.name+"</option>");
                 }
        }); 
        
       }
    });

  $.get(URL+"/getHallData",{gid:gid},function(data){
            var head = '';
            if(data.state===1){
             $(data.hall).each(function(index,item){
                 if(item.id==shid){
                   head += "<option value='"+item.id+"' selected>"+item.name+"</option>";
                 }else{
                   head += "<option value='"+item.id+"'>"+item.name+"</option>";  
                 }
                
           }); 
             var body = "<select class='hall' name='shid'>"+head+"</select>";
            $(".gym").after(body);
       }
      });
    
         $.get(URL+"/getSpaceData",{gid:gid,shid:shid},function(data){
            var head = '';
            if(data.state===1){
              $(data.space).each(function(index,item){
//                 console.log(spaceid);
                if(item.id==spaceid){
                   head += "<option value='"+item.id+"' selected>"+item.name+"</option>";
                 }else{
                   head += "<option value='"+item.id+"'>"+item.name+"</option>";  
                 }
           }); 
             var body = "<select class='space' name='spaceid'>"+head+"</select>";
            $(".hall").after(body);
       }
      });
    

  $('.gym').bind('change', function(){ 
    $('.hall').remove();
    $('.space').remove();
    var gid = $(this).val(); 
//    console.log(gid);
    if(gid==0){
      $('.hall').remove();
    }else{
          $.get(URL+"/getHallData",{gid:gid},function(data){
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

  $(document).on('change','.hall', function(){
    $('.space').remove();
    var shid = $(this).val(); 
    var gid = $('.gym').val();
    if(shid==0){
      $('.space').remove();
    }else{
          $.get(URL+"getSpaceData",{gid:gid,shid:shid},function(data){
            var head = '';
            if(data.state===1){
             $(data.space).each(function(index,item){
                head += "<option value='"+item.id+"'>"+item.name+"</option>";
           }); 
             var body = "<select class='space' name='spaceid'><option value='0'>请选择</option>"+head+"</select>";
            $(".hall").after(body);
       }
      });
    }
});


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
});