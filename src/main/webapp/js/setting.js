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


/*修改密码模态框处理*/
var openPasswordModal = $(".open-password-modal");
var closeMask = $(".close-mask");
var mask = $(".mask");
var passwordModal = $("#password-modal");

openPasswordModal.click(function(){
    mask.show();
    passwordModal.show();
});
closeMask.click(function(){
    mask.hide();
    passwordModal.hide();
});







/*富文本编辑器创建*/
var editor = new wangEditor('textarea');

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

});