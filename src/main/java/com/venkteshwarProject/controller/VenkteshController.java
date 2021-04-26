package com.venkteshwarProject.controller;

import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.venkteshwarProject.dto.VenkteshDto;
import com.venkteshwarProject.model.UserOtps;
import com.venkteshwarProject.service.VenkteshService;
import com.venkteshwarProject.utils.MessageUtils;
import com.venkteshwarProject.utils.SmsUtils;

@Controller
public class VenkteshController {

	//private static final Logger LOGGER = LoggerFactory.getLogger(VenkteshController.class);
	//private static final String USER_ID_REQUIRED_ERROR = "user.userIdRequiredError";
         
	@Autowired
	private VenkteshService vService;

	@Autowired
	protected MessageUtils messages;

	public static final String OTP_NOT_FOUND = "otp not found";
	public static final String OTP_MATCHED = " otp not matched";
	public static final String OTP_EXPIRED = " otp was expired";

	@RequestMapping("/")
	public String welcome() {
		System.out.println("In controller");
		return "index";
	}

	// Insert Method Call for VenkteshUserData

	/*    @RequestMapping(value="/insert",method = RequestMethod.POST)  
	    public String insertUserDao(@ModelAttribute("vData") VenkteshUserData vData){  
	        try {
				vService.insertUserService(vData);
			} catch (Exception e) {
				e.printStackTrace();
			}  
	        System.out.println("Inside the Insert Method"); 
	        return "welcome";   
	    }
	    */
	//##########################################################################################  	    

	@RequestMapping(value = "/getRegistrationFrom", method = RequestMethod.POST)
	public  String storeDataFromJsp(@ModelAttribute("vDtoData") VenkteshDto vDto, Model model) {
		
		String OTP=vDto.getOtp();
		String mobileNumber=vDto.getMobileNumber();
		UserOtps userOtps=vService.otpForVerification(mobileNumber);
		String OtpToVerify=userOtps.getOtp();
		
		
                if(OTP.equals(OtpToVerify)) {
                 	
        System.out.println("Inside Otp Verification........");	
		model.addAttribute("fullName", vDto.getFullName());
		model.addAttribute("mobileNumber", vDto.getMobileNumber());
		model.addAttribute("email", vDto.getEmail());
		return "franchiseQuiz";
                }else
                	System.out.println("Outside Otp Verification........");	
                        return "index";          			

	}

	//##########################################################################################	    
	/* It provides list of users in model object */
	@RequestMapping(value = "/onFranchisePage", method = RequestMethod.POST)
	public String setValuesForModel(@ModelAttribute("vDtoData") VenkteshDto vDto) {

		vService.inserDataFromDtoToModel(vDto);
		System.out.println(vDto.getFullName() + "  " + vDto.getMobileNumber() + " " + vDto.getEmail());
		
		return "welcome";
		// ModelAndView mv=new ModelAndView();
		//display pdf
		
		/*HttpHeaders headers = new HttpHeaders();

		    headers.setContentType(MediaType.parseMediaType("application/pdf"));
		    String filename = "pdf1.pdf";

		    headers.add("content-disposition", "inline;filename=" + filename);
		   // headers.add("Content-Disposition", "inline; filename=" + "example.pdf");
		   // headers.setContentDispositionFormData(filename, filename);
		    headers.setCacheControl("must-revalidate, post-check=0, pre-check=0");
		    byte[] pdf1Bytes = null;
		ResponseEntity<byte[]> response = new ResponseEntity<byte[]>(pdf1Bytes, headers, HttpStatus.OK);
		mv.addObject(response);*/
		//mv.setViewName("welcome");
		//return response;
	}

	//##########################################################################################  	    

	// Method Call for OTP Generation

	@RequestMapping(value = "/generateOtp", method = RequestMethod.GET)
	public @ResponseBody String sendOtp(@RequestParam("mobileNumber") String mobileNumber) {

		System.out.println("Inside otp Generation");

		Optional<UserOtps> user = vService.sendOtp(mobileNumber);
		
		if(user.isPresent()) {
			
			String message = "Your OTP code is " + user.get().getOtp();

			String to = user.get().getMobileNumber();

			int responseCode = SmsUtils.sendTextMessage(message, to);

			System.out.println("SMS sent successfully ===>>>> " + responseCode);

			System.out.println("Outside otp Generation");

			return "Otp sent successfully";
		}else {
			return "Failed to send otp";
		}

	}

	/*	      @RequestMapping(value = "/generateOtp", method = RequestMethod.GET)
	public String sendOtp(@RequestBody UserOtps userOtp) {
		
		  vService.sendOtp(userOtp);
		if (user.isPresent()) {
	
			 String message = "Your OTP code is " + user.get().getOtp();
			 String to = userOtp.getMobileNo();
	
			System.out.println("This"+message+"sent successfully ===>>>> "+"to"+ to);
	
		}
		return "index";
	
	}
	*/
	//##########################################################################################        

	/*   private ResponseEntity<?> constructSuccessResponse(String messageKey, HttpStatus status, Locale locale,
	   		  Object... params) {
	   	  String message = messages.getMessage(messageKey, locale, params);
	 		MessageItem messageItem = new MessageItem(messageKey, message);
	
	 		return new ResponseEntity<MessageItem>(messageItem, status);
	}*/
	//*******************************************************************************************

	@RequestMapping(value = "/verifyOtp", method = RequestMethod.PUT)
	public String verifyOtp(@RequestBody UserOtps userOtp) {

		//vService.verifyOtp(userOtp);
		/*	if (user.isPresent()) {
		
				 String message = "Your OTP code is " + user.get().getOtp();
				 String to = userOtp.getMobileNo();
		
				System.out.println("This"+message+"sent successfully ===>>>> "+"to"+ to);
		
			}*/
		return "franchiseQuiz";

	}

}

//##########################################################################################  

// Insert Method Call for VenkteshUserPersonalData

/* @RequestMapping(value="/insertIntoPersonalAndFranchiseInfo",method = RequestMethod.POST)  
 public String insertUserPersonalDao(@ModelAttribute("vpData") VenkteshUserPersonalData vpData){  
    try {
		vService.insertUserPersonalInfoService(vpData);
	} catch (Exception e) {
		e.printStackTrace();
	}  
    System.out.println("Inside the Insert Method of User Personal Data"); 
    return "welcome";   
}*/

//##########################################################################################  
