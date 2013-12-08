$(function(){
	changeTab("model");
});

function changeTab(type){
	var tourl = "";
	if(type=="model"){
		tourl = "/manage/modellist";
	}else if(type=="user"){
		art.dialog.alert("将在后续版本中开发！");
		return;
	}else if(type=="auth"){
		art.dialog.alert("将在后续版本中开发！");
		return;
	}
	jQuery.ajax({
		type:"POST",
		url:tourl,
		success:function(data){
			$(".R_right").html(data);
			getAllCheckbox();
    		senfe("senfe","#fff","#f9f9f9","#e9f2fb","#a1d3fb");
	    },
	    error:function(){
	    	alert("系统出现异常，请稍后重试或联系管理员。");
	    	return false;
	    }
    });
}

function delmodel(modelids){
	jQuery.ajax({
		type:"POST",
		url:tourl,
		success:function(data){
			$(".R_right").html(data);
			getAllCheckbox();
    		senfe("senfe","#fff","#f9f9f9","#e9f2fb","#a1d3fb");
	    },
	    error:function(){
	    	alert("系统出现异常，请稍后重试或联系管理员。");
	    	return false;
	    }
    });
}