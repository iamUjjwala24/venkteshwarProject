package com.venkteshwarProject.utils;


import java.util.Arrays;
import java.util.Collections;
import java.util.List;

//import com.venkteshwarProject.service.impl.VenkteshServiceImpl;

public class Constants{
	
	
	private Constants() {
		super();
	}

	public static final String BROKERAGE_IN_PERCENTAGE = "PERCENTAGE";
	public static final String BROKERAGE_IN_ABSOLUTE = "ABSOLUTE";
	public static final String NOTIFICATION_TITLE = "B2B Cabs";
	public static final String GENERAL_MESSAGE_KEY = "general";
	public static final String FIELD_ERROR = "fieldError";

	public static final String EMAIL_PATTERN = "[A-Za-z0-9._%-+]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";

	public static final String ROLE_ADMIN_ID = "4721002268c24ae1e3a29e50ec87ebf9";
	public static final String ROLE_USER_ID = "f22890418b164aa1bdf76452342ffd8a";
	public static final String ROLE_WORKER_ID = "79b246bde5084b9c914a07536cdf4ba8";

	public static final String ROLE_ADMIN_STR = "ADMIN";
	public static final String ROLE_USER_STR = "USER";
	public static final String ROLE_WORKER_STR = "WORKER";

	public static final String ROLE_CODE_ADMIN_STR = "ADMIN_4721002268c24ae1e3a29e50ec87ebf9";
	public static final String ROLE_CODE_USER_STR = "USER_f22890418b164aa1bdf76452342ffd8a";
	public static final String ROLE_CODE_WORKER_STR = "WORKER_79b246bde5084b9c914a07536cdf4ba8";

	public static final String ACCESS_USER = "USER_ACCESS";
	public static final String ACCESS_ADMIN = "ADMIN_ACCESS";

	public static final String AUTH_HEADER_NAME = "Authorization";
	public static final String AUTH_TYPE_BEARER = "Bearer";
	public static final long TEN_DAYS = 1000L * 60 * 60 * 24 * 10;

	public static class AppVersion {

		public static final String NO_NEW_RELEASE = "NO_NEW_RELEASE";
		public static final String UNSUPPORTED_RELEASE = "UNSUPPORTED_RELEASE";
		public static final String MANDATORY_RELEASE = "MANDATORY_RELEASE";
		public static final String OPTIONAL_RELEASE = "OPTIONAL_RELEASE";

		private AppVersion() {
			// Not to be instantiated
		}
	}

	public static class DeviceTypes {

		public static final String IOS = "ios";
		public static final String ANDROID = "android";

		public static final List<String> SUPPORTED = Collections.unmodifiableList(Arrays.asList(IOS, ANDROID));

		private DeviceTypes() {
			// Not to be instantiated
		}
	}

	public static class AppTypes {

		public static final String CUSTOMER = "customer";

		public static final List<String> SUPPORTED = Collections.unmodifiableList(Arrays.asList(CUSTOMER));

		public static String appTypesAsStr() {
			StringBuilder b = new StringBuilder();
		//	SUPPORTED.forEach(new StringBuilder()::append);
			return b.toString();
		}

		private AppTypes() {
			// Not to be instantiated
		}
	}

	public static final List<String> KNOWN_EXCEPTIONS = Collections.unmodifiableList(Arrays.asList("org.springframework.context.NoSuchMessageException", "org.springframework.web.servlet.NoHandlerFoundException", "org.springframework.web.bind.MethodArgumentNotValidException",
			"org.springframework.web.HttpRequestMethodNotSupportedException", "org.springframework.jdbc.BadSqlGrammarException", "org.springframework.security.authentication.AuthenticationCredentialsNotFoundException",
			"com.fasterxml.jackson.databind.JsonMappingException", "com.fasterxml.jackson.core.JsonParseException", "com.fasterxml.jackson.databind.exc.UnrecognizedPropertyException"));

	public static final String OTP_NOT_FOUND = "otp not found";
	public static final String OTP_MATCHED = "otp matched";
	public static final String OTP_EXPIRED = "otp expired";

	public static final String ITEM_SORT_TYPE_HIGH_TO_LOW = "highToLow";
	public static final String ITEM_SORT_TYPE_LOW_TO_HIGH = "lowToHigh";
	public static final String ITEM_SORT_TYPE_ALPHABETICAL = "alphabetical";

	public static final String ITEM_REFINE_BY_LT20 = "lt20";
	public static final String ITEM_REFINE_BY_21TO50 = "21to50";
	public static final String ITEM_REFINE_BY_50TO100 = "50to100";
	public static final String ITEM_REFINE_BY_GT100 = "gt100";
	
	//public static final String TEMP_DIR_PATH = "D:\\euspace\\project\\images";
	
	public static final String TEMP_DIR_PATH = "/var/tmp/";
	
	public static final String S3BUCKET_NAME="com.kodepro";
	
	public static final String BOOKING_ADD_STATUS="Pending";
	public static final String BOOKING_UPDATE_STATUS="Completed";
	
	public static final String CART_NEW_REQUEST_STATUS="New Request";
	public static final String CART_COMPLETED_STATUS="Completed";
	
	public static final String CART_ADD_ACTION="plus";
	public static final String CART_SUBSTRACT_ACTION="minus";
	
	public static final String EMPTY_STRING = "";

}
