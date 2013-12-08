package com.fr.net;

import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;

public class MainModule {
	
	/*
	@At("/model/*")
	@Ok("jsp:view.index.hello")
	public String testApp(String model){
		return "hello demo";
	}
	*/
	@At("/model/*")
	@Ok("jsp:/WEB-INF/moban${obj}/case${obj}")
	public String tesModel(String model){
		return model;
	}
}
