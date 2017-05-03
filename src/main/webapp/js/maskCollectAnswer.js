$(function(){
	var answerId;
	
	handleModal();

	
	
	function handleModal(){
		/*创建收藏夹模态框处理*/
		var openMask = $(".toCollectAnswer");
		var closeMask = $(".close-mask");
		var mask = $(".mask");
		var collectionAnswerModal = $("#collectionAnswerModal");
		
		openMask.click(function(event){
			event.preventDefault();
			mask.show();
			collectionAnswerModal.show();
			answerId = $(this).attr("data-id");
			//绑定列表点击事件
			bindEvent($("#collectionList"));
		});
		closeMask.click(function(){
			mask.hide();
			collectionAnswerModal.hide();
		});
	}
	
	
	//绑定事件
	function bindEvent(ul){
		var lis = ul.find("li");
		lis.each(function(){
			var that = $(this);
			var collectionId = that.find("h5").attr("data-id");
			that.status = collectionContainAnswer(collectionId,answerId);
			//alert(status);
			if(that.status == true){
				that.find("i").addClass("collect-right");
			}else{
				that.find("i").removeClass("collect-right");
			}
			$(this).on("click",function(){
				if(that.status==false){
					collect(that);
					that.status = true;
				}else{
					uncollect(that);
					that.status = false;
				}
			});
		});
	}
	
	
	//收藏
	function collect(that){
		//加特效duang
		that.find("i").addClass("collect-right");
		//请求接口
		var formData = new FormData();
		formData.append("collectionId",that.find("h5").attr("data-id"));
		formData.append("answerId",answerId);
		console.log(answerId);
		$.ajax({
            url:basepath + "collectAnswer",
            type:"post",
            data:formData,
            processData:false,
            contentType:false,
            success:function(response){
                console.log(JSON.stringify(response));
            }
        });
	}
	
	//取消收藏
	function uncollect(that){
		//去特效
		that.find("i").removeClass("collect-right");
		//请求接口
		var formData = new FormData();
		formData.append("collectionId",that.find("h5").attr("data-id"));
		formData.append("answerId",answerId);
		$.ajax({
            url:basepath + "uncollectAnswer",
            type:"post",
            data:formData,
            processData:false,
            contentType:false,
            success:function(response){
                console.log(JSON.stringify(response));
            }
        });
	}
	
	//判断某收藏夹是否包含某答案
	function collectionContainAnswer(collectionId,answerId){
		var flag;
		var formData = new FormData();
		formData.append("collectionId",collectionId);
		formData.append("answerId",answerId);
		$.ajax({
            url:basepath + "collectionContainAnswer",
            type:"post",
            data:formData,
            processData:false,
            contentType:false,
            async: false,
            success:function(response){
                flag = response.data;
            }
        });
		return flag;
	}
});