package com.yc.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.bean.JsonModel;
import com.yc.bean.Picture;
import com.yc.bean.User;
import com.yc.biz.PictureBiz;
import com.yc.util.UploadFileUtil;

@Controller
public class PictureController {
	@Resource
	private PictureBiz pictureBiz;
	
	@RequestMapping("/uploadPicture.action")
	public String uploadPicture(String path,HttpServletRequest request,HttpSession session){
		//上传图片
		System.out.println("上传的路径>>>>>>>>>>"+path);
		User user = (User) session.getAttribute("user");
		int user_id=user.getUser_id();
		Picture p=new Picture(user_id ,path);
		Picture p1=UploadFileUtil.upload(request, p.getClass());
		p1.setUser_id(user_id);
		pictureBiz.uploadPicture( p1);
		
		//上传图片后用ajax局部显示图片
		List<Picture> pictures=pictureBiz.findAllPicture(user_id);
		JsonModel jsonModel = new JsonModel();
		jsonModel.setCode(1);
		jsonModel.setObj(pictures);
		request.setAttribute("jsonModel", jsonModel); 
		return "result";
	}

}
