package com.nys.musicsystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nys.musicsystem.domain.Music;
import com.nys.musicsystem.querydomain.QueryMusic;

@Controller
@RequestMapping("MusicManage")
public class MusicHandler extends BaseHandler<Music,QueryMusic>{
	

}
