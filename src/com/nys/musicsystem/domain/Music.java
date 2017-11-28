package com.nys.musicsystem.domain;

public class Music{

	private Long musicId;
	private String musicMd5;//MD5
	private String musicName;	//音乐名
	private String musicAuthor; //作者
	private String musicLyric;	//歌词目录
	private String musicKeyWards;	//关键词
	private String musicImage; //封面
	private String musicAlbum;//专辑
	
	public String getMusicAlbum() {
		return musicAlbum;
	}
	public void setMusicAlbum(String musicAlbum) {
		this.musicAlbum = musicAlbum;
	}
	public Long getMusicId() {
		return musicId;
	}
	public void setMusicId(Long musicId) {
		this.musicId = musicId;
	}
	public String getMusicMd5() {
		return musicMd5;
	}
	public void setMusicMd5(String musicMd5) {
		this.musicMd5 = musicMd5;
	}
	public String getMusicName() {
		return musicName;
	}
	public void setMusicName(String musicName) {
		this.musicName = musicName;
	}
	public String getMusicAuthor() {
		return musicAuthor;
	}
	public void setMusicAuthor(String musicAuthor) {
		this.musicAuthor = musicAuthor;
	}
	public String getMusicLyric() {
		return musicLyric;
	}
	public void setMusicLyric(String musicLyric) {
		this.musicLyric = musicLyric;
	}
	public String getMusicKeyWards() {
		return musicKeyWards;
	}
	public void setMusicKeyWards(String musicKeyWards) {
		this.musicKeyWards = musicKeyWards;
	}
	public String getMusicImage() {
		return musicImage;
	}
	public void setMusicImage(String musicImage) {
		this.musicImage = musicImage;
	}
	@Override
	public String toString() {
		return "Music [musicId=" + musicId + ", musicMd5=" + musicMd5 + ", musicName=" + musicName + ", musicAuthor="
				+ musicAuthor + ", musicLyric=" + musicLyric + ", musicKeyWards=" + musicKeyWards + ", musicImage="
				+ musicImage + ", musicAlbum=" + musicAlbum + "]";
	}	
}
