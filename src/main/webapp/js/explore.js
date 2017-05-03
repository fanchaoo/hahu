$(function(){


//获取今天数据
function listTodayHotAnswer(){
	var todayHotList = $("#todayHotList");
	$.ajax({
	    url:basepath + "listTodayHotAnswer",
	    type:"post",
	    data:{},
	    processData:false,
	    contentType:false,
	    success:function(response){	    	
	        if(response.state==0){
	        	var html = template("todayHotListTemplate",response.data);
	        	todayHotList.append(html);
	        }else{
	        	alert("出现了错误...");
	        }
	    }
	});
}	

//获取本月数据
function listMonthHotAnswer(){
	var monthHotList = $("#monthHotList");
	$.ajax({
	    url:basepath + "listMonthHotAnswer",
	    type:"post",
	    data:{},
	    processData:false,
	    contentType:false,
	    success:function(response){	    	
	        if(response.state==0){
	        	var html = template("monthHotListTemplate",response.data);
	        	monthHotList.append($(html));
	        }else{
	        	alert("出现了错误...");
	        }
	    }
	});
}		

listTodayHotAnswer();
listMonthHotAnswer();
	


/*tab栏切换*/
var heads = $(".content > .head > li");
var bodys = $(".content > .body > li");

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

 //feed流中，移入移出的处理
var feedMeta = $(".feed-meta");
feedMeta.mouseover(function(){
    $(this).find("div").css("display","inline").show();
}).mouseout(function(){
    $(this).find("div").hide();
});






});

