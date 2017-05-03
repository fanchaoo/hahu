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


var page = 1;
var questionList = $("#questionList");
var moreQuestionButton = $("#moreQuestion");
moreQuestionButton.on("click",function(event){
	event.preventDefault();
	
	var formData = new FormData();
	formData.append("page",page);
	$.ajax({
	    url:basepath + "listQuestionByPage",
	    type:"post",
	    data:formData,
	    processData:false,
	    contentType:false,
	    success:function(response){
	        if(response.state==0){
	        	var html = template("questionListTemplate",response.data);
	        	questionList.append($(html));
	        	page = page + 1;
	        }else{
	        	alert("出现了错误...");
	        }
	    }
	});
	
});

moreQuestionButton.click();

});

