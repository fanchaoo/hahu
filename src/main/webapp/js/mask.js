$(function(){
	/*提问模态框处理*/
	var openMask = $(".open-mask");
	var closeMask = $(".close-mask");
	var mask = $(".mask");
	var askModal = $("#ask-modal");

	openMask.click(function(){
		mask.show();
		askModal.show();
	});
	closeMask.click(function(){
		mask.hide();
		askModal.hide();
	});

	/*富文本编辑器创建*/
	var editor = new wangEditor('questionContent');

	editor.config.menus = [
		'bold',
		'img',
		'fullscreen',
	];

	//配置处理图片上传的路径，最好用相对路径
	editor.config.uploadImgUrl = 'uploadImage';
	//配置图片上传到后台的参数名称
	editor.config.uploadImgFileName = 'paramName';
	editor.create();
	
	
	/*提问表单处理*/
	/* 提问处理 */
	var askButton = $("#askButton");
    var askForm = $("#askForm");
    var questionTitleInput = $("#questionTitle");
    var questionContentTextarea = $("#questionContent");
    var topicNameStringInput = $("#topicNameString");
	
    askButton.on("click",function(){
        var formData = new FormData();
        var v1 = questionTitleInput.val();
        var v2 = questionContentTextarea.val();
        var v3 = topicNameStringInput.val();
        if(v1.trim()==""||v2.trim==""||v3.trim()==""){
        	return;
        }
        formData.append("questionTitle",v1);
        formData.append("questionContent",v2);
        formData.append("topicNameString",v3);
        $.ajax({
            url:basepath + "ask",
            type:"post",
            data:formData,
            processData:false,
            contentType:false,
            success:function(response){
                if(response.state==0){
                	window.location.href = basepath + "question/"+response.data;
                }else{
                	alert("出现了错误...");
                }
            }
        });
    });
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
});