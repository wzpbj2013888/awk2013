package com.fr.net.manage.action;

import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
@At("/model")
public class ModelAction {
	
	
	@At("/case/*")
	@Ok("jsp:moban_${obj}/case")
	public String casejb(String modelindex){
		return modelindex;
	}
	
	@At("/news/*")
	@Ok("jsp:moban_${obj}/news")
	public String news(String modelindex){
		return modelindex;
	}
	@At("/product/*")
	@Ok("jsp:moban_${obj}/product")
	public String product(String modelindex){
		return modelindex;
	}@At("/about/*")
	@Ok("jsp:moban_${obj}/about")
	public String about(String modelindex){
		return modelindex;
	}
}
