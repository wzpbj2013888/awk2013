package com.fr.net.manage.action;

import java.util.List;

import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Fail;
import org.nutz.mvc.annotation.Ok;

import com.fr.net.manage.service.NewsService;
import com.fr.net.model.po.News;


@IocBean
@At("/news")
public class NewsAction {
	
	private NewsService newsService;
	
	
	@At("/view/*")
	@Ok("jsp:moban_one/news")
	public List<News> about(String modelindex){
		List<News>  list = newsService.getNewsPage();
		return list;
	}
}
