package com.nys.musicsystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 后台管理
 * @author Administrator
 *
 */
@Controller
@RequestMapping("basic")
public class BasicHandler {
	@RequestMapping("")
	public String basicindex(){
		return "basic/index";
		
	}
	@RequestMapping("usermanage")
	public String UserManage(){
		return "basic/UserManage/index";
		
	}
	@RequestMapping("musicmanage")
	public String MusicManage(){
		return "basic/MusicManage/index";
		
	}
	
}
