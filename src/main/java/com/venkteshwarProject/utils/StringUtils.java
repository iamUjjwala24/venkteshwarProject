package com.venkteshwarProject.utils;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.security.SecureRandom;
import java.util.Random;


public class StringUtils {
	
	public static final String ENCODING_TYPE="UTF-8";
	public static final String USERNAME="";
	public static final String PASSWORD="";
	public static final String SENDERID="CHKCKSM";
	private static final int OTP_LENGTH = 6;

	public static String getOTP() {

		String otpNumbers = "0123456789" + "9876543210";
		Random rnd = new SecureRandom();
		StringBuilder otp = new StringBuilder();
		for (int i = 0; i < OTP_LENGTH; i++) {
			otp.append(otpNumbers.charAt(rnd.nextInt(otpNumbers.length())));
		}
		return otp.toString();
	}
	

//		private static final Logger LOG = LoggerFactory.getLogger(SmsUtils.class);
		
		
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
				
			//	LOG.info("SMS repsonse Code ===>>>> "+responseCode);

				return responseCode;

			} catch (Exception e) {
				e.printStackTrace();
				return responseCode;

			}
		};

	}






