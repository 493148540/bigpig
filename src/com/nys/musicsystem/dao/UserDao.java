package com.nys.musicsystem.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.nys.musicsystem.domain.User;


public interface UserDao extends Dao<User>{

	@Select("SELECT * from user where user_name=#{user_name} limit 0,1")
	public User findByName(@Param("user_name")String user_name);


	

}
