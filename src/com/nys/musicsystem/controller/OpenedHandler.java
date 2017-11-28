package com.nys.musicsystem.controller;

import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nys.musicsystem.domain.Info;
import com.nys.musicsystem.domain.User;
import com.nys.musicsystem.service.UserService;

/**
 * 开放接口。不进行拦截
 * @author Administrator
 *
 */
@Controller
@RequestMapping("opened")
public class OpenedHandler {
	
	@Autowired
	private UserService userService;
	
	@ResponseBody
	@RequestMapping(value="login",method=RequestMethod.POST)
	public Info login(String username,String password,HttpServletRequest request) throws NoSuchAlgorithmException{
			
			User user = userService.login(username, password);
			if(user!=null){
				request.getSession().setAttribute("user",user);
				return new Info(user,"登录成功",true);
			}
			return new Info(null,"登录失败,用户名或密码错误",false);
		 
		
	}
	
	@ResponseBody
	@RequestMapping(value="regist",method=RequestMethod.POST)
	public Info regist(String username,String password,String repassword,HttpServletRequest request) throws NoSuchAlgorithmException{
		Info info = userService.regist(username, password, repassword);
			if(info.getState()==true){
				request.getSession().setAttribute("user", (User)info.getObj());
			}
			return info;
		 
		
	}
	
	@ResponseBody
	@RequestMapping(value="exitlogin",method=RequestMethod.POST)
	public Info exitLogin(HttpServletRequest request) throws NoSuchAlgorithmException{
		request.getSession().setAttribute("user", null);
		return new Info("true", "注销成功", true);
	}
	@ResponseBody
	@RequestMapping(value="changepassword",method=RequestMethod.POST)
	public Info changePassword(String password,String repassword,
			HttpServletRequest request) throws NoSuchAlgorithmException{
		
		Info info = userService.changePassword((User) request.getSession().getAttribute("user"), password,repassword);
		if(info.getState()){
			request.getSession().setAttribute("user",info.getObj());
			
		}
		return info;
			
	}
}
