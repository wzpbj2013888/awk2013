<%@ include file="/WEB-INF/view/main/head.jsp"%>
<%@ page pageEncoding="UTF-8"%> 
<html>
<head>
<META http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>测试jsp页面</title>
<script type="text/javascript" src="/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
$(function(){
	jQuery.ajax({
		type:"post",
		url:"/test.do",
		success:function(data){
			$("#test").html(data);
		}
	});
});

</script>
</head>

<body>
<h1><%=request.getAttribute("obj") %></h1>
<div id="test"></div>
<div id="testinclude2">
<%@ include file="/WEB-INF/view/index/demo.jsp"%>
</div>

<%@ include file="/WEB-INF/view/main/foot.jsp"%>
</body>
</html>
