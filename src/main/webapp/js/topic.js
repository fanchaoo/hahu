$(function(){




    //feed流中，移入移出的处理
    var feedMeta = $(".feed-meta");
    feedMeta.mouseover(function(){
        $(this).find("div").css("display","inline").show();
    }).mouseout(function(){
        $(this).find("div").hide();
    });




    

	//点赞按钮处理
	var voteUp = $(".vote-up");
	var voteDown = $(".vote-down");

	voteUp.click(function(){
		$(this).attr("clicked","true");
		$(this).css("background-color","#698EBF").css("color","white");
		$(this).find("i").css("border","6px solid #698EBF").css("border-bottom","6px solid white");
	}).mouseover(function(){
		if($(this).attr("clicked")=="false"){
			$(this).css("background-color","#698EBF").css("color","white");
			$(this).find("i").css("border","6px solid #698EBF").css("border-bottom","6px solid white");
		}
	}).mouseout(function(){
		if($(this).attr("clicked")=="false"){
			$(this).css("background-color","#EFF6FA").css("color","#698ebf");
			$(this).find("i").css("border","6px solid white").css("border-bottom","6px solid #698EBF");
		}
	});

	voteDown.click(function(){
		$(this).attr("clicked","true");
		$(this).css("background-color","#698EBF");
		$(this).find("i").css("border","6px solid #698EBF").css("border-top","6px solid white");
	}).mouseover(function(){
		if($(this).attr("clicked")=="false"){
			$(this).css("background-color","#698EBF");
			$(this).find("i").css("border","6px solid #698EBF").css("border-top","6px solid white");
		}
	}).mouseout(function(){
		if($(this).attr("clicked")=="false"){
			$(this).css("background-color","#EFF6FA");
			$(this).find("i").css("border","6px solid white").css("border-top","6px solid #698EBF");
		}
	});



});