package com.venkteshwarProject.utils;


import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;



public class SmsUtils {

	
	public static final String ENCODING_TYPE="UTF-8";
	public static final String USERNAME="euspacetech.com";
	public static final String PASSWORD="75771722";
	public static final String SENDERID="CHKCKSM";
	
	public static int sendTextMessage(String message,String to) {

		int responseCode = 0;
		URL obj;
		
		try {

			String url = "https://www.txtguru.in/imobile/api.php?username=" 
					+ URLEncoder.encode(USERNAME,ENCODING_TYPE) 
					+ "&password=" + URLEncoder.encode(PASSWORD,ENCODING_TYPE) 
					+ "&source=" + URLEncoder.encode(SENDERID,ENCODING_TYPE) 
					+ "&dmobile=" + URLEncoder.encode(to,ENCODING_TYPE) 
					+ "&message=" + URLEncoder.encode(message,ENCODING_TYPE);

			obj = new URL(url);

			HttpURLConnection con = (HttpURLConnection) obj.openConnection();

			con.setRequestMethod("GET");

			responseCode = con.getResponseCode();

			BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));

			String inputLine;

			StringBuffer response = new StringBuffer();

			while ((inputLine = in.readLine()) != null) {

				response.append(inputLine);
			}

			in.close();
			
			System.out.println("SMS repsonse Code ===>>>> "+responseCode);

			return responseCode;

		} catch (Exception e) {
			e.printStackTrace();
			return responseCode;

		}
	};

}



