package com.nys.musicsystem.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nys.musicsystem.domain.ImageCut;
import com.nys.musicsystem.domain.Info;


@RequestMapping("/util")
@Controller
public class UtilHandler {
	
	//上传剪切图片
	@ResponseBody
	@RequestMapping(value="uploadimage",method=RequestMethod.POST)
	public Info uploadimage(ImageCut imagecut,HttpServletRequest request) throws Exception{
	
		
		String path = request.getSession().getServletContext().getRealPath("/upload/image");
		
		return new Info(imagecut.getPath(path),"上传成功",true);
		
	}
	
	
}
