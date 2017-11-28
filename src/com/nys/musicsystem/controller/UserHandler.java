package com.nys.musicsystem.controller;

import java.security.NoSuchAlgorithmException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nys.musicsystem.domain.Info;
import com.nys.musicsystem.domain.User;
import com.nys.musicsystem.querydomain.QueryUser;
import com.nys.musicsystem.service.UserService;
import com.nys.musicsystem.util.MD5;






@Controller()
@RequestMapping(value = "/UserManage")
public class UserHandler extends BaseHandler<User,QueryUser>{
	
	@Autowired
	UserService service;
	
	@ResponseBody
	@RequestMapping(value="edit",method=RequestMethod.POST)
	public Info edit(User User,
			HttpServletRequest request) throws NoSuchAlgorithmException{
		if(User.getUser_password().length()<32)
			User.setUser_password(MD5.MD5_32bit1(User.getUser_password()));
		if(service.updateExcludeNull(User)>0)
			return new Info(User,"编辑成功",true);
		else
			return new Info(User,"编辑失败",true);
		 
		
	} 
	
	
	@ResponseBody
	@RequestMapping(value="add",method=RequestMethod.POST)
	public Info add(User User,
			HttpServletRequest request) throws NoSuchAlgorithmException{
		if(User.getUser_password().length()<32)
			User.setUser_password(MD5.MD5_32bit1(User.getUser_password()));
		if(service.insert(User).getUser_id()>0)
			
		return new Info(User,"编辑成功",true);
		else
			return new Info(User,"编辑成功",true);
		
	}
	
	
	
	
	
}
