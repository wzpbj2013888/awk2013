package com.fr.net.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class StringUtil {
	
	//默认时间格式 
	public static DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	public static DateFormat df2 = null;
	public static String Date2String(Date date){
		return df.format(date);
	}
	public static String Date2String(Date date,String pattern){
		if(df2==null){
			df2 = new SimpleDateFormat(pattern);
		}
		return df2.format(date);
	}
	
}
