var basepath = $("#baseUrl").attr("href");


//等待几秒
function sleep(numberMillis) { 
	var now = new Date(); 
	var exitTime = now.getTime() + numberMillis; 
	while (true) { 
		now = new Date(); 
		if (now.getTime() > exitTime) 
		return; 
	} 
}


//long转日期字符串
function longToDateString(num){  
    var dateType = "";  
    var date = new Date();  
    date.setTime(num); 
    dateType = (date.getMonth(date)+1)+"-"+(date.getDate(date));//yyyy-MM-dd格式日期
    time = " "+date.getHours()+":"+date.getMinutes()+":"+date.getSeconds();
    return dateType + time;
}

//获取滚动条当前的位置 
function getScrollTop() { 
var scrollTop = 0; 
if (document.documentElement && document.documentElement.scrollTop) { 
scrollTop = document.documentElement.scrollTop; 
} 
else if (document.body) { 
scrollTop = document.body.scrollTop; 
} 
return scrollTop; 
} 

//获取当前可是范围的高度 
function getClientHeight() { 
var clientHeight = 0; 
if (document.body.clientHeight && document.documentElement.clientHeight) { 
clientHeight = Math.min(document.body.clientHeight, document.documentElement.clientHeight); 
} 
else { 
clientHeight = Math.max(document.body.clientHeight, document.documentElement.clientHeight); 
} 
return clientHeight; 
} 

//获取文档完整的高度 
function getScrollHeight() { 
return Math.max(document.body.scrollHeight, document.documentElement.scrollHeight); 
} 





















$(function(){
	
    //下拉菜单处理
    var profile = $(".nav-profile");
    var downMenu = $(".nav-dropdown");

    profile.mouseover(function(){
        downMenu.show();
    }).mouseout(function(){
        downMenu.hide();
    });

    downMenu.mouseover(function(){
        downMenu.show();
    }).mouseout(function(){
        downMenu.hide();
    });


});