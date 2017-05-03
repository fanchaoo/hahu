$(function(){


var heads = $(".content ul.head li");
var bodys = $(".content ul.body li");

heads.each(function(index,element){
	$(this).click(function(){
		heads.each(function(){
			$(this).removeClass("active");
		});
		heads.eq(index).addClass("active");
		bodys.each(function(){
			$(this).attr("class","hide");
		});
		bodys.eq(index).attr("class","show");
	});
});

//渲染模版
$.ajax({
    url:basepath + "listCreatingCollection",
    type:"get",
    data:{},
    processData:false,
    contentType:false,
    success:function(response){
        if(response.state==0){
        	var html = template("collectionListTemplate", response.data);
        	$("#collectionList").html(html);
        }else{
        	alert("出故障啦~");
        }
    }
});


});