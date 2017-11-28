package com.nys.musicsystem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nys.musicsystem.dao.MusicDao;
import com.nys.musicsystem.domain.Music;

@Service
public class MusicService extends BaseService<Music>{
	@Autowired
	private MusicDao musicDao;
}
