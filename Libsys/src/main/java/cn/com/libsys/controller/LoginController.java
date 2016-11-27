package cn.com.libsys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cn.com.libsys.model.User;


@Controller
@RequestMapping("/")
public class LoginController extends BaseController {
	
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login");
		return mav;
	}
	
	@RequestMapping(value ="/home",method=RequestMethod.POST)
	public ModelAndView cheacklogin(User user){
		ModelAndView mav = new ModelAndView();
		System.out.println("username:"+user.getUsername());
		mav.setViewName("books/index");
		return mav;
		
	}

}
