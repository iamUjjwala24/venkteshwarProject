package com.venkteshwarProject.utils;


public class UUID {


	private UUID() {
		super();
	}

	public static String getId(){
		return java.util.UUID.randomUUID().toString().replaceAll("-", "");
	}

}