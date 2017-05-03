var basepath = $("#baseUrl").attr("href");

$(function(){
moveSomeHeight();

var isSelf = $("#isSelf").attr("data-id");
var userId;
var followButton = $("#followUserButton");
var unfollowButton = $("#unfollowUserButton");


if(isSelf=='false'){
	init();
	bindEvent();
}


function init(){
	var flag;
	userId = $("#userId").attr("data-id");
	var formData = new FormData();
	formData.append("userId",userId);
	$.ajax({
        url:basepath + "judgePeopleFollowUser",
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
		followUser(userId);
		followButton.hide();
		unfollowButton.show();
	});
	
	//取消关注按钮
	unfollowButton.on("click",function(){
		unfollowUser(userId);
		unfollowButton.hide();
		followButton.show();
	});
}

function followUser(userId){
	var formData = new FormData();
	formData.append("userId",userId);
	$.ajax({
        url:basepath + "followUser",
        type:"post",
        data:formData,
        processData:false,
        contentType:false,
        success:function(response){
        }
    });
}

function unfollowUser(userId){
	var formData = new FormData();
	formData.append("userId",userId);
	$.ajax({
        url:basepath + "unfollowUser",
        type:"post",
        data:formData,
        processData:false,
        contentType:false,
        success:function(response){
        }
    });
}














	
	
function moveSomeHeight(){
	window.scrollTo(0,document.querySelector("#content").offsetTop);
	$(".profile").attr("href",basepath + "profile/"+localStorage.userId);
	$(".profile-avatar").attr("src",localStorage.avatarUrl);
}

});

