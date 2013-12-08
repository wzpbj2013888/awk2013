package com.fr.net.manage.action;

import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
@At("/model")
public class ModelAction {
	
	@At("/*")
	@Ok("jsp:moban${obj}.case")
	public String toModelIndex(String modelindex){
		return modelindex;
	}
	
}
