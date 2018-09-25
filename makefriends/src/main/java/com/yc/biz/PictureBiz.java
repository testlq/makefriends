package com.yc.biz;

import java.util.List;

import com.yc.bean.Picture;

public interface PictureBiz {
		
		public int uploadPicture(Picture picture);
		
	 
		public List<Picture> findAllPicture(int User_id);
}
