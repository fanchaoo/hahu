$(function(){
	/*创建收藏夹模态框处理*/
	var openMask = $("#toAddCollection");
	var closeMask = $(".close-mask");
	var mask = $(".mask");
	var addCollectionModal = $("#addCollectionModal");

	openMask.click(function(event){
		event.preventDefault();
		mask.show();
		addCollectionModal.show();
	});
	closeMask.click(function(){
		mask.hide();
		addCollectionModal.hide();
	});

	/*创建收藏夹表单提交*/
	var addCollectionButton = $("#addCollectionButton");
	var collectionNameInput = $("#collectionName");

	addCollectionButton.on("click",function(){
        var formData = new FormData();
        formData.append("collectionName",collectionNameInput.val());
        $.ajax({
            url:basepath + "addCollection",
            type:"post",
            data:formData,
            processData:false,
            contentType:false,
            success:function(response){
                if(response.state==0){
                	location.reload();
                }else{
                	alert("出现了错误...");
                }
            }
        });
    });
		
});