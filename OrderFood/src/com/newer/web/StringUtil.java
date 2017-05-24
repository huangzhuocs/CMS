package com.newer.web;

public class StringUtil {
	public static boolean isEmpty(String str){
		if(str==null||"".equals(str)){
			return false;
		}else {
			return true;
		}
	}

}
