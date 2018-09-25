package com.yc.dao;

import java.util.List;


import com.yc.bean.Picture;

public interface PictureDao {
	/**
	 * 上传图片
	 * @param picture
	 * @return
	 */
	public int uploadPicture(Picture picture); 
	
	/**
	 * 查找用户的所有图片显示
	 * @param User_id
	 * @return
	 */
	public List<Picture> findAllPicture(int User_id);
}
