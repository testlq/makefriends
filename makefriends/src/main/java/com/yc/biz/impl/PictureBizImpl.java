package com.yc.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.bean.Picture;
import com.yc.biz.PictureBiz;
import com.yc.dao.PictureDao;

@Service
public class PictureBizImpl implements PictureBiz {

	@Resource
	private PictureDao picturesDao;
	
	@Override
	public int uploadPicture(Picture picture){
		return picturesDao.uploadPicture(picture);
	}
	
	@Override
	public List<Picture> findAllPicture(int User_id) {
		return picturesDao.findAllPicture(User_id);
	}

}
