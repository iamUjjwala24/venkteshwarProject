package com.venkteshwarProject.uuid;
import java.util.UUID;

public class UUIDDemo{
	

	//To generate Id as primary key and user id as FK//

		public static String getId(){
			//UUID id = UUID.randomUUID(); 
		
		return UUID.randomUUID().toString().replaceAll("-", "");
    }
}