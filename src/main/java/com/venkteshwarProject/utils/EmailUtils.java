package com.venkteshwarProject.utils;


import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class EmailUtils {

	private EmailUtils() {
		super();
	}

	public static boolean isValidEmail(final String hex) {
		Pattern pattern = Pattern.compile(Constants.EMAIL_PATTERN);
		Matcher matcher = pattern.matcher(hex);
		return matcher.matches();

	}

}