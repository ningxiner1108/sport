var type = $('#timetype').val();
console.log(type);
if(type==1){
    $("#date").hide();
    $("#date_define").hide();
}else if(type==2){
    $("#week").hide();
    $("#date_define").hide();
}else if(type==0){
    $("#week").hide();
    $("#date_define").hide();
    $("#date").hide();
}else{
    $("#date").hide();
    $("#week").hide();
}
    
  
//    alert(getLocalTime(1177824835));       
//$("#txt").attr("value",'11');//填充内容
