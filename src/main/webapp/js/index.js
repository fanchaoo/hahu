$(function(){

window.page = 1;

$("#userAvatar").attr("src",localStorage.avatarUrl);

//feed流中，移入移出的处理
var feedMeta = $(".feed-meta");
feedMeta.mouseover(function(){
    $(this).find("div").css("display","inline").show();
}).mouseout(function(){
    $(this).find("div").hide();
});


template.defaults.imports.$longToDateString = longToDateString;

getIndexDetail(window.page);

window.onscroll = function () { 
	if (getScrollTop() + getClientHeight() == getScrollHeight()) { 
		getIndexDetail(window.page);
	} 
} 


//获取首页某页数据
function getIndexDetail(page){
	var feedList = $("#feedList");
	var formData = new FormData();
	formData.append("page",page);
	$.ajax({
	    url:basepath + "getIndexDetail",
	    type:"post",
	    data:formData,
	    processData:false,
	    contentType:false,
	    async:false,
	    success:function(response){	    	
	        if(response.state==0){
	        	var html = template("feedListTemplate",response.data);
	        	feedList.append($(html));
	        }else{
	        	alert("出现了错误...");
	        }
	    }
	});
	window.page++;
}












});