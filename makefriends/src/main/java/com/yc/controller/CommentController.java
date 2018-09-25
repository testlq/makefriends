package com.yc.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.yc.bean.Comment;
import com.yc.bean.Dynamic;
import com.yc.bean.Friends;
import com.yc.bean.JsonModel;
import com.yc.bean.User;
import com.yc.biz.CommentBiz;

@Controller
public class CommentController {
	@Resource
	private CommentBiz commentbiz;
	
	@RequestMapping("showFriendsdynamic.action")
	public String FriendDynamic(HttpServletRequest request,HttpSession session,Model m){
		int id = ((User) session.getAttribute("user")).getUser_id();
		List<Dynamic> list = commentbiz.findFriendDynamic(id);
		m.addAttribute("friendsdynamic",list);
		return "inbox";
	}
	
	@RequestMapping("comment.action")
	public String comment(int dynamic_id,String content, HttpServletRequest request,HttpSession session){
		User user = (User) session.getAttribute("user");
		Comment comment = new Comment(user.getUser_id(),dynamic_id,content);
		int i=commentbiz.comment(comment);
		
		JsonModel json = new JsonModel();
		if(i>0){
			json.setCode(1);
		}else{
			json.setCode(0);
		}
		Gson gson = new Gson();
		String result = gson.toJson(json);
		request.setAttribute("jsonModel", result);
		return "result";
		 
	}
	
	@RequestMapping("findAllComments.action")
	public String findAllComments(Integer dynamic_id, HttpServletRequest request,HttpSession session,Model m){
		List<Comment> list = commentbiz.findAllComments(dynamic_id);
		
		JsonModel json = new JsonModel();
		json.setCode(1);
		json.setObj(list);
		Gson gson = new Gson();
		String result = gson.toJson(json);
		System.err.println(result);
		request.setAttribute("jsonModel", result);
		return "result";
	}
	
	@RequestMapping("showStrangerdynamic.action")
	public String showStrangerdynamic(HttpServletRequest request,HttpSession session,Model m){
		int id = ((User) session.getAttribute("user")).getUser_id();
		List<Dynamic> list = commentbiz.showStrangerdynamic(id, id);
		m.addAttribute("friendsdynamic",list);//这里面存的是陌生人动态，用的朋友的那个属性
		return "inbox";
	}
}
