package com.venkteshwarProject.admincontroller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.venkteshwarProject.dto.VenkteshAdminDto;
import com.venkteshwarProject.dto.VenkteshDto;
import com.venkteshwarProject.model.VenkteshFranchiseData;
import com.venkteshwarProject.model.VenkteshUserData;
import com.venkteshwarProject.model.VenkteshUserPersonalData;
import com.venkteshwarProject.service.VenkteshService;

@Controller
public class AdminController  {
	
	@Autowired
	private VenkteshService vService;
	
	private static final String userName= "admin@123";
	private static final String password="pass@123";
	
	


	@RequestMapping(value ="/abc",method = RequestMethod.GET)
	public String gotToAdminHomePage() {

		//System.out.println("gotToAdminHomePage called");
		return "admin/login";
	}

	
	@RequestMapping(value ="/home",method = RequestMethod.GET)
	public String gotToHomePage() {

		//System.out.println("gotToAdminHomePage called");
		return "admin/dashboard";
	}
	
	@RequestMapping(value ="/franchiselist",method = RequestMethod.GET)
	public String gotToPage() {

		//System.out.println("gotToAdminHomePage called");
		return "admin/dashboard";
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String goToHome(@ModelAttribute VenkteshAdminDto adminDto, Model model){
		
		 String uname=adminDto.getUserName();
		 String pass=adminDto.getPassword();
		  
		 if((userName.equals(uname)) && (password.equals(pass))) 
		        
                 //if((uname.equals("admin")) && (pass.equals("pass@123"))) 
                 {
                	 System.out.println(" Welcome.......Login Sucessful.....");
                	 System.out.println(" Username is "+uname +" and Password is "+pass);
                	 
                	 int count; 
                	 List<VenkteshUserData> userDataList = vService.getUserList();
                	 count=userDataList.size();
                	 System.out.println(userDataList.size());
                        model.addAttribute("count",count);
                	 
                     return "admin/home";
                 }
                 System.out.println("PLease Enter Valid UserName and Password");
                 
                 return "admin/login";
    		}

//**************************************************************************************************
	
	@RequestMapping(value="/logout",method = RequestMethod.POST)
	public String logout(HttpServletRequest httpServletRequest) {

		HttpSession httpSession = httpServletRequest.getSession();

		//httpSession.removeAttribute(Constants.USER_SESSION);

		httpSession.invalidate();

		httpSession = httpServletRequest.getSession(false);

		//LOG.info("Session is ===" + httpSession);

		return "admin/admin-panel";
	}
	
//**************************************************************************************************	

	@RequestMapping(value="/getList", method=RequestMethod.GET)
    public String getUserList(Model model)throws Exception{
    	//ModelAndView mv=new ModelAndView();
    	List<VenkteshUserData> userDataList = vService.getUserList();
		
			 if(!userDataList.isEmpty()){
		    	   System.out.println(userDataList.size());
		    	   model.addAttribute("userList", userDataList);
		    	   
		        }
			 
		
     // mv.setViewName("home");
        return "admin/franchiselist";
    }
	
	
//**************************************************************
	
	@RequestMapping(value="/changeStatus", method=RequestMethod.GET)
    public String getStatus(Model model)throws Exception{
    	//ModelAndView mv=new ModelAndView();
    	List<VenkteshUserData> userDataList = vService.getUserList();
		
			 if(!userDataList.isEmpty()){
		    	   System.out.println(userDataList.size());
		    	   model.addAttribute("userList", userDataList);
		    	   
		        }
			 
		
     // mv.setViewName("home");
        return "admin/home";
    }
//**************************************************************
	/*
	 @RequestMapping(value="/getlist", method=RequestMethod.GET)  
	    public String getRegisteredUserList(Model m){  
	        List<VenkteshUserData> list;
			try {
				list = vService.getUserList();
				  m.addAttribute("list",list);
			} catch (Exception e) {
				e.printStackTrace();
			} 
	      
	        return "home";  
	    }  
	
//**********************************************************************************	
	
	
		
	/*@RequestMapping(value="userdetails", method=RequestMethod.GET)
    public ModelAndView getUserList()throws Exception{
    	ModelAndView mv=new ModelAndView();
        List<VenkteshUserData> userDataList= new ArrayList<VenkteshUserData>(); 
        userDataList = vService.getUserList();
        if(userDataList != null){
    	   System.out.println(userDataList.size());
        }
       mv.addObject("userList", userDataList);
       mv.setViewName("home");
       System.out.println("Inside User Details.......");
        return mv;
    }
*/
//**************************************************************************************************
		
	 @RequestMapping(value="user-details", method=RequestMethod.GET)
	    public ModelAndView getUserById(@RequestParam("id") String id, Model model)throws Exception
	    {
	        System.out.println("Get User By ID From  Admin Controller");
	        ModelAndView mv=new ModelAndView();
	        model.addAttribute(id);
	 
	        VenkteshUserPersonalData personalList=vService.viewDetails(id);
	        VenkteshFranchiseData personalFranchiseData= vService.viewFranchiseDetails(id);
		
	        
	        System.out.println("FrContact 1"+personalFranchiseData.getFrContact1());
	        mv.addObject("personalList",personalList);   
	        mv.addObject("personalFranchiseData",personalFranchiseData);
		
	        System.out.println("User Personal Data="+ personalList);
		    System.out.println("User Personal Franchise Data="+ personalFranchiseData);
		  mv.setViewName("admin/user-details");
	        return mv;
	        
	    }	
//****************************************************************************************
		
	 @RequestMapping(value="registration-details", method=RequestMethod.GET)
	    public ModelAndView getRegisterdUserById(@RequestParam("id") String id, Model model)throws Exception
	    {
	        ModelAndView mv=new ModelAndView();
	        model.addAttribute(id);
	 
	        VenkteshUserData userData=vService.viewUserDetails(id);
	        mv.addObject("userData",userData);   
	      
	        System.out.println("User Data="+ userData);
		    mv.setViewName("admin/update");
	        return mv;
	        
	    }	
	 
//*****************************************************************************************
	
	 @RequestMapping(value="update-details", method=RequestMethod.GET)
	 public String setValuesForModel(@RequestParam("id")String id, @ModelAttribute("vDtoData")VenkteshDto vDto,Model model) throws Exception{  
		 //ModelAndView mv=new ModelAndView();
	         // model.addAttribute(id);
	        //System.out.println( model.addAttribute(id));
		    vService.updateStatusDataFromDtoToModel(vDto);
	    	//System.out.println(vDto.getId()+" "+vDto.getStatus()+"  "+vDto.getComment());
	        return "admin/home";  
	        
	        
	      /*  @RequestMapping(value="/editsave",method = RequestMethod.POST)  
	        public String editsave(@ModelAttribute("emp") Emp emp){  
	            dao.update(emp);  
	            return "redirect:/viewemp";  
	        }  */
	        
	    }  
	 
	 
	 
//************************************************************************************
	  @RequestMapping(value="delete-user", method= RequestMethod.GET)  
	    public String deleteUser(@RequestParam("id") String id){  
	        vService.delete(id);  
	        return "admin/home";  
	    }   
	    
	 
//*****************************************************************************************	 
	 
	 @RequestMapping(value="franchise-profile", method=RequestMethod.GET)  
	    public ModelAndView getFranchiseUserDataById(@RequestParam("id") String id, Model model)
	    {
	        System.out.println("In Get User By ID  Admin Controller with Id");
	        ModelAndView mv=new ModelAndView();
	        model.addAttribute(id);
	   	 
	        VenkteshFranchiseData personalData= vService.viewFranchiseDetails(id);
	    	  // System.out.println(personalData.size());
	    	   mv.addObject("personalList", personalData);
	     
	      System.out.println("Franchise List= "+ personalData);
	       //mv.setViewName("user-franchise-details");
	        return mv;
	        
	    }	
	
	 }	
//**************************************************************************************************	
	

