package com.nys.musicsystem.service;

import java.security.NoSuchAlgorithmException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nys.musicsystem.dao.UserDao;
import com.nys.musicsystem.domain.Info;
import com.nys.musicsystem.domain.User;
import com.nys.musicsystem.util.MD5;


@Service
public class UserService extends BaseService<User>{

	@Autowired
	private UserDao userDao;
	
	public User login(String username, String password) throws NoSuchAlgorithmException {
		// TODO Auto-generated method stub
		User user = new User();
		user.setUser_name(username);
		user.setUser_password(MD5.MD5_32bit(password));
		
		return userDao.findObject(user);
	}
	
	public Info regist(String username, String password,String repassword) throws NoSuchAlgorithmException {
		
		
		// TODO Auto-generated method stub
		
		if(username.length()==0||password.length()==0||repassword.length()==0)
			return new Info(null,"修改失败，缺少必选参数",false);
		if(!password.equals(repassword)){
			return new Info(null,"注册失败，两次输入的密码不一致",false);
		}
		if(userDao.findByName(username)!=null){
			return new Info(null,"注册失败，用户名已存在",false);
		}
		User user = new User();
		user.setUser_name(username);
		user.setUser_password(MD5.MD5_32bit(password));
		user.setUser_token(UUID.randomUUID().toString().replaceAll("-", ""));
		user.setUser_head("http://localhost:8080/musicsystem/img/defaulthead.jpg");
		try{
			userDao.insert(user);
			return new Info(user,"注册成功",true);
		}catch(Exception e){
			return new Info(null,"注册失败，用户名已存在",false);
		}
		
		
	}
	public User findBytoken(String token) {
		// TODO Auto-generated method stub
		User user = new User();
		user.setUser_token(token);
		return userDao.findObject(user);
	}

	public Info changePassword(User user,String password, String repassword) throws NoSuchAlgorithmException {
		if(password.length()==0||repassword.length()==0)
			return new Info(null,"修改失败，缺少必选参数",false);
		if(!password.equals(repassword)){
			return new Info(null,"修改失败，两次输入的密码不一致",false);
		}
		user.setUser_password(MD5.MD5_32bit(password));
		
		try{
			userDao.updateNotNull(user);
			return new Info(user,"修改成功",true);
		}catch(Exception e){
			return new Info(null,"修改失败，服务器内部错误",false);
		}
		
	}

}
