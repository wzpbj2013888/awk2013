<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = "moban1";
%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<meta content="yes" name="apple-mobile-web-app-capable" />
<meta content="telephone=no" name="format-detection" />
<meta name="Author" content="0431" />
<meta name="keywords" content="魔码网络" />
<meta name="description" content="魔码网络" />
<LINK href="master.css" tppabs="/aiweike/css/master.css" rel=stylesheet>
<script language="JavaScript" type="text/javascript"
	src="/aiweike/js/jquery.js"></script>
<script language="JavaScript" type="text/javascript"
	src="/aiweike/js/nav.js"></script>
<script language="JavaScript" type="text/javascript"
	src="/aiweike/js/search.js""></script>
<title>最新资讯_魔码网络</title>
</head>

<body>
	<div class="topbg">
		<a href="index.html"
			tppabs="http://900054.wap.94more.com/3g/html/index.html" title=""><img
			src="homebtn.jpg"
			tppabs="http://900054.wap.94more.com/3g/images/homebtn.jpg"
			alt="搜索按钮" class="homebtn"></a> <a href="index.html"
			tppabs="http://900054.wap.94more.com/3g/html/index.html"
			title="魔码网络移动建站" class="logo"><img src="logo.png"
			tppabs="http://900054.wap.94more.com/3g/images/logo.png"
			alt="魔码网络移动建站"></a> <img src="navbtn.png"
			tppabs="http://900054.wap.94more.com/3g/images/navbtn.png" alt="导航"
			class="navbtn">
	</div>
	<ul class="navbg">
		<li><a href="about.html"
			tppabs="http://900054.wap.94more.com/3g/html/about.html" title="公司简介">公司简介</a></li>
		<li><a href="product.html"
			tppabs="http://900054.wap.94more.com/3g/html/product.html"
			title="家具展示">家具展示</a></li>
		<li><a href="news.html"
			tppabs="http://900054.wap.94more.com/3g/html/news.html" title="最新资讯">最新资讯</a></li>
		<li><a href="case.html"
			tppabs="http://900054.wap.94more.com/3g/html/case.html" title="案例展示">案例展示</a></li>
		<li><a href="contact.html"
			tppabs="http://900054.wap.94more.com/3g/html/contact.html"
			title="联系我们">联系我们</a></li>
	</ul>
	<div class="sub">
		<div class="subsearchbox">
			<div class="search">
				<form id="search" name="search" method="get"
					action="http://900054.wap.94more.com/3g/search.php">
					<input type="text" class="text" name="SeaStr" id="SeaStr"
						value="请输入搜索关键词" /> <input type="submit" class="button"
						title="搜索" value="">
				</form>
			</div>
			<div class="subnav">
				<p>全部分类</p>
			</div>
		</div>
		<div class="clear"></div>
		<ul class="subnavbg">
			<li><a href="product.php-tid=1.htm"
				tppabs="http://900054.wap.94more.com/3g/product.php?tid=1"
				title="欧式风格">欧式风格</a></li>
			<li><a href="product.php-tid=2.htm"
				tppabs="http://900054.wap.94more.com/3g/product.php?tid=2"
				title="现代风格">现代风格</a></li>
			<li><a href="product.php-tid=3.htm"
				tppabs="http://900054.wap.94more.com/3g/product.php?tid=3"
				title="简约风格">简约风格</a></li>
		</ul>
		<ul class="newsul">


			<c:forEach var="model" items="${obj}" varStatus="status">
				<li><a href="news_view-41.html"
					tppabs="http://900054.wap.94more.com/3g/html/news_view-41.html"
					title="${model.title}">${model.content}</a></li>

				<%-- 
	        		${model.createtime} --%>

			</c:forEach>
		</ul>
		<p class="clear"></p>
		<div class="pages" style="width: 250px;">
			<span id="pre" style="cursor: pointer;">pre</span> <span>1/3</span> <span id="next" style="cursor: pointer;">next</span>
			<div class="clear"></div>
		</div>
	</div>
	<div class="clear"></div>
	<p class="indexhr"></p>
	<ul class="footnav">
		<li><a href="about.html"
			tppabs="http://900054.wap.94more.com/3g/html/about.html" title="简介">简介</a></li>
		<li><a href="product.html"
			tppabs="http://900054.wap.94more.com/3g/html/product.html" title="家具">家具</a></li>
		<li><a href="news.html"
			tppabs="http://900054.wap.94more.com/3g/html/news.html" title="资讯">资讯</a></li>
		<li><a href="case.html"
			tppabs="http://900054.wap.94more.com/3g/html/case.html" title="案例">案例</a></li>
		<li><a href="contact.html"
			tppabs="http://900054.wap.94more.com/3g/html/contact.html" title="联系">联系</a></li>
	</ul>
	<p class="support">
		技术支持：<a
			href="javascript:if(confirm(%27http://m.94more.com/  \n\nThis file was not retrieved by Teleport Pro, because it is addressed on a domain or path outside the boundaries set for its Starting Address.  \n\nDo you want to open it from the server?%27))window.location=%27http://m.94more.com/%27"
			tppabs="http://m.94more.com/" title="魔码网络-提供基于互联网的全套解决方案">魔码网络</a><a
			href="javascript:if(confirm(%27http://wap.94more.com/  \n\nThis file was not retrieved by Teleport Pro, because it is addressed on a domain or path outside the boundaries set for its Starting Address.  \n\nDo you want to open it from the server?%27))window.location=%27http://wap.94more.com/%27"
			tppabs="http://wap.94more.com/" title="魔码建站－快速展开网络营销的利器！">[移动建站]</a>
	</p>
	<ul class="footbg">
		<li class="sms"><a href="sms:13888888888" title="短信"><span>短信</span></a></li>
		<li class="tel"><a href="tel:96877" title="电话"><span>电话</span></a></li>
		<li class="map"><a href="map.html"
			tppabs="http://900054.wap.94more.com/3g/html/map.html" title="地图"><span>地图</span></a></li>
		<!--分享(-->
		<li class="share"><a href="share.php-title=最新资讯_魔码网络.htm"
			tppabs="http://900054.wap.94more.com/3g/share.php?title=最新资讯_魔码网络"
			title="分享"><span>分享</span></a></li>
		<!--)分享-->
	</ul>
</body>
<script type="text/javascript">
	var curpage = 2;
	var pagesize = 10;
	$("#pre").click(function() {
		fanye(2, 10);
	});

	function fanye(pagenum, pagesize) {
		jQuery.ajax({
			type : "POST",
			url : "fanye/1/",
			data : {
				'pagenum' : pagenum,
				'pagesize' : pagesize
			},
			success : function(data) {
				$(".R_right").html(data);
				getAllCheckbox();
				senfe("senfe", "#fff", "#f9f9f9", "#e9f2fb", "#a1d3fb");
			},
			error : function() {
				alert("系统出现异常，请稍后重试或联系管理员。");
				return false;
			}

		});
	}
</script>
</html>
