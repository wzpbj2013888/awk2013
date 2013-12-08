$(function(){
		var object_ids ="";
		var object_ids_del ="";
		var bintype = $("#bintype").val();
	$("#update").click(function(){
		$('[name=items]:checkbox:checked').each(function(){
			object_ids+= $(this).val() + "," ;
		});
		object_ids = object_ids.substring(0,object_ids.lastIndexOf(","));
		var href = "javascript:update_op('" + object_ids + "','"+bintype+"');";
		//一个都没有选中的情况
		if(object_ids==""){
			href = "javascript:;";
		}
		$("#updateurl").attr("href",href);
	});
		
	$("#del").click(function(){
		$('[name=items]:checkbox:checked').each(function(){
			object_ids_del+= $(this).val() + "," ;
		});
		object_ids_del = object_ids_del.substring(0,object_ids_del.lastIndexOf(","));
		var href = "javascript:del_op('" + object_ids_del + "','"+bintype+"');";
		//一个都没有选中的情况
		if(object_ids_del==""){
			href = "javascript:;";
		}
		$("#delurl").attr("href",href);
	});	

	$("#delall").live("mouseout",function(){$(this).removeClass('on');})
	.live("mouseover",function(){$(this).addClass('on');});
	//加载数据列表
	//getRecyclebinList();	
	//getAllCheckbox();
});


//获取列表
function getRecyclebinList(){
	$("#recyclebinform").ajaxForm({
		async:false,
		dataType:'html',
		success:function(data){ 
            $("#recyclebinDiv").html(data);
			getAllCheckbox();
    		senfe("senfe","#fff","#f9f9f9","#e9f2fb","#a1d3fb");
   		}
	});
	$("#recyclebinform").submit();
}

function getAllCheckbox(){
    //全选
    $("#checkedAll").click(function(){
			//所有checkbox跟着全选的checkbox走。
			$('[name=items]:checkbox').attr("checked", this.checked );
			if(this.checked){
				activeClass();
			}else{
				dieClass();
			}
	 });
	 $('[name=items]:checkbox').click(function(){
			//定义一个临时变量，避免重复使用同一个选择器选择页面中的元素，提升程序效率。
			var $tmp=$('[name=items]:checkbox');
			//用filter方法筛选出选中的复选框。并直接给CheckedAll赋值。
			$('#checkedAll').attr('checked',$tmp.length==$tmp.filter(':checked').length);
			if($('[name=items]:checkbox:checked').length!=0){
				activeClass();
			}else{
				dieClass();
			}
	 });
}
function activeClass(){
	$("#edit").removeClass("n_niu2 n_hui");
	$("#edit").addClass("n_niu2");
	$("#del").removeClass("n_niu2 n_hui");
	$("#del").addClass("n_niu2");
	mouseAction();
}
function dieClass(){
	$("#edit").removeClass("n_niu2");
	$("#edit").addClass("n_niu2 n_hui");
	$("#del").removeClass("n_niu2");
	$("#del").addClass("n_niu2 n_hui");
}

function mouseAction(){
	$("#update").bind("mouseout",function(){$(this).removeClass('on');})
	            .bind("mouseover",function(){$(this).addClass('on');});
	$("#del").bind("mouseout",function(){$(this).removeClass('on');})
    		 .bind("mouseover",function(){$(this).addClass('on');});
}

function senfe(o,a,b,c,d){
    var t=document.getElementById(o).getElementsByTagName("tr");
    for(var i=0;i<t.length;i++){
        t[i].style.backgroundColor=(t[i].sectionRowIndex%2==0)?a:b;
        t[i].onclick=function(){
	        if(this.x!="1"){
		        this.x="1";//本来打算直接用背景色判断，FF获取到的背景是RGB值，不好判断
		        this.style.backgroundColor=d;
	        }else{
		        this.x="0";
		        this.style.backgroundColor=(this.sectionRowIndex%2==0)?a:b;
	        }
        };
        t[i].onmouseover=function(){
        	if(this.x!="1")this.style.backgroundColor=c;
        };
        t[i].onmouseout=function(){
        	if(this.x!="1")this.style.backgroundColor=(this.sectionRowIndex%2==0)?a:b;
        };
       }
}
