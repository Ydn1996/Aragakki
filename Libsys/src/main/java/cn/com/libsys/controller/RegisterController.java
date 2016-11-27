package cn.com.libsys.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.com.libsys.model.User;
import cn.com.libsys.service.UserService;


@Controller
@RequestMapping("/")
public class RegisterController extends BaseController {

	@Resource
	private UserService userService;
	
	@RequestMapping(value = "/register",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> insertUser(User user){
		try {
			userService.insert(user);
			return returnMap(0, "success", null);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return returnMap(1,"error",null);
		}
		
	}
	
	@RequestMapping(value = "/getregister",method = RequestMethod.GET)
	public ModelAndView registerView(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("register");
		return mav;
	}
}
