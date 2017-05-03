$(function(){

var topicId;
var followTopicButton = $("#followTopicButton");
var unfollowTopicButton = $("#unfollowTopicButton");

init();
bindEvent();

function init(){
	var flag;
	topicId = $("#topicId").attr("data-id");
	var formData = new FormData();
	formData.append("topicId",topicId);
	$.ajax({
        url:basepath + "judgePeopleFollowTopic",
        type:"post",
        data:formData,
        processData:false,
        contentType:false,
        async:false,
        success:function(response){
        	flag = response.data;
        }
    });
	
	if(flag==true){
    	followTopicButton.hide();
		unfollowTopicButton.show();
    }else{
    	unfollowTopicButton.hide();
    	followTopicButton.show();
    }
}

	
function bindEvent(){
	//关注按钮
	followTopicButton.on("click",function(){
		followTopic(topicId);
		followTopicButton.hide();
		unfollowTopicButton.show();
	});
	
	//取消关注按钮
	unfollowTopicButton.on("click",function(){
		unfollowTopic(topicId);
		unfollowTopicButton.hide();
		followTopicButton.show();
	});
}


function followTopic(topicId){
	var formData = new FormData();
	formData.append("topicId",topicId);
	$.ajax({
        url:basepath + "followTopic",
        type:"post",
        data:formData,
        processData:false,
        contentType:false,
        success:function(response){
        }
    });
}

function unfollowTopic(topicId){
	var formData = new FormData();
	formData.append("topicId",topicId);
	$.ajax({
        url:basepath + "unfollowTopic",
        type:"post",
        data:formData,
        processData:false,
        contentType:false,
        success:function(response){
        }
    });
}















//点赞按钮处理
var voteUp = $(".vote-up");


voteUp.each(function(){
	var likeState = $(this).attr("clicked");
	if(likeState=="true"){
		$(this).removeClass("like-unclicked")
		$(this).find("i").removeClass("like-unclicked-i");
		$(this).addClass("like-clicked")
		$(this).find("i").addClass("like-clicked-i");
		$(this).attr("disabled","true");
	}
});

voteUp.click(function(){
	$(this).removeClass("like-unclicked")
	$(this).find("i").removeClass("like-unclicked-i");
	$(this).addClass("like-clicked")
	$(this).find("i").addClass("like-clicked-i");
	
	$(this).attr("clicked","true");
	$(this).attr("disabled","true");
	//发送请求
	var formData = new FormData();
	formData.append("answerId",$(this).attr("answer-id"));
	var that = $(this);
	$.ajax({
      url:basepath + "likeAnswer",
      type:"post",
      data:formData,
      processData:false,
      contentType:false,
      success:function(response){
      	 that.html(parseInt(that.text()) + 1 + "");
      	 that.append("<i class='like-clicked-i'></i>");
      }
  });
	
}).mouseover(function(){
	if($(this).attr("clicked")=="false"){
		$(this).removeClass("like-unclicked")
		$(this).find("i").removeClass("like-unclicked-i");
		$(this).addClass("like-clicked")
		$(this).find("i").addClass("like-clicked-i");
	}
}).mouseout(function(){
	if($(this).attr("clicked")=="false"){
		$(this).removeClass("like-clicked")
		$(this).find("i").removeClass("like-clicked-i");
		$(this).addClass("like-unclicked")
		$(this).find("i").addClass("like-unclicked-i");
	}
});


});