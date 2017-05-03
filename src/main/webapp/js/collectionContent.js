$(function(){

var collectionId;
var followButton = $("#followCollectionButton");
var unfollowButton = $("#unfollowCollectionButton");

init();
bindEvent();

function init(){
	var flag;
	collectionId = $("#collectionId").attr("data-id");
	var formData = new FormData();
	formData.append("collectionId",collectionId);
	$.ajax({
        url:basepath + "judgePeopleFollowCollection",
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
    	followButton.hide();
		unfollowButton.show();
    }else{
    	unfollowButton.hide();
		followButton.show();
    }
}

function bindEvent(){
	//关注按钮
	followButton.on("click",function(){
		followCollection(collectionId);
		followButton.hide();
		unfollowButton.show();
	});
	
	//取消关注按钮
	unfollowButton.on("click",function(){
		unfollowCollection(collectionId);
		unfollowButton.hide();
		followButton.show();
	});
}

function followCollection(collectionId){
	var formData = new FormData();
	formData.append("collectionId",collectionId);
	$.ajax({
        url:basepath + "followCollection",
        type:"post",
        data:formData,
        processData:false,
        contentType:false,
        success:function(response){
        }
    });
}

function unfollowCollection(collectionId){
	var formData = new FormData();
	formData.append("collectionId",collectionId);
	$.ajax({
        url:basepath + "unfollowCollection",
        type:"post",
        data:formData,
        processData:false,
        contentType:false,
        success:function(response){
        }
    });
}

});