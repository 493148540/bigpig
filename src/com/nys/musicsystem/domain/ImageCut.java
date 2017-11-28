package com.nys.musicsystem.domain;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.nys.musicsystem.util.FileUpload;
import com.nys.musicsystem.util.OperateImage;





public class ImageCut {
	 private MultipartFile imagefile;
	 				
	 private double x;
	 private double y;
	 private double w;
	 private double h;
	 private String imagepath;
	 
	 
	 public MultipartFile getImagefile() {
		return imagefile;
	}


	public void setImagefile(MultipartFile imagefile) {
		this.imagefile = imagefile;
	}


	public double getX() {
		return x;
	}


	public void setX(double x) {
		this.x = x;
	}


	public double getY() {
		return y;
	}


	public void setY(double y) {
		this.y = y;
	}


	public double getW() {
		return w;
	}


	public void setW(double w) {
		this.w = w;
	}


	public double getH() {
		return h;
	}


	public void setH(double h) {
		this.h = h;
	}


	public String getImagepath() {
		return imagepath;
	}


	public void setImagepath(String imagepath) {
		this.imagepath = imagepath;
	}


	public String getPath(String basepath) throws Exception{
		if(x<=0&&y<=0&&w<=0&&h<=0){
			System.out.println("上传图片不剪切");
			
			return "upload/image/"+FileUpload.writefile(imagefile, basepath);
		}
		 try {
			 	OperateImage operateImage = new OperateImage((int)x, (int)y,(int) w, (int)h);
				System.out.println(imagefile+"-----------");
				if(imagefile==null){
					operateImage.setSrcpath(imagepath);

					return "upload/image/"+operateImage.cut(imagepath);
				}
				
				String filename =operateImage.cut(imagefile,basepath);				
				if(filename!="")
					return "upload/image/"+filename;
				else{
					if(x!=-1){
						operateImage.setSrcpath(imagepath);

						return "upload/image/"+operateImage.cut(imagepath);
					}
						
				}
	 }catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return imagepath;
		}
		return imagepath;
	 }
	 
}
