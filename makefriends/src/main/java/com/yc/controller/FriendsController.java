package com.yc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.yc.bean.Friends;
import com.yc.bean.JsonModel;
import com.yc.bean.User;
import com.yc.biz.FriendsBiz;

@Controller
public class FriendsController {
	@Resource(name="friendsBizImpl")
	private FriendsBiz friendsBiz;

	@RequestMapping("/toAddfriends.action")
	public String addFriends(int user_id , HttpServletRequest request){
		User user = friendsBiz.findUser(user_id);
		request.setAttribute("toAddfriends", user);
		return "addfriends";
	} 
	
	
	@RequestMapping("/addfriends.action")
	public String addFriends(int user_id , HttpSession session,HttpServletResponse response,HttpServletRequest request ) throws IOException{
		int my_userid = ((User) session.getAttribute("user")).getUser_id();
		Friends friends = new Friends(my_userid,user_id,0);
		JsonModel jsonModel = new JsonModel();
		if(friendsBiz.validateFriends(friends)==null){
			this.friendsBiz.insertFriends(friends);
			jsonModel.setCode(1);
			jsonModel.setErrmsg("已发送请求,等待对方验证!!!");
		}else{
			jsonModel.setCode(0);
			jsonModel.setErrmsg("您已添加过此好友!!!");
		}
		Gson gson = new Gson();
		String result = gson.toJson(jsonModel);
		request.setAttribute("jsonModel", result);
		return "result";
	} 
	

	@RequestMapping("/searchAllFriends.action")
	public String searchAllFriends(Model model,HttpSession session) throws IOException{
				User user = (User) session.getAttribute("user");
				List<User> users= this.friendsBiz.search(user.getUser_id());
				model.addAttribute("allFriends",users);
				return "matches";
	} 
	

	@RequestMapping("/findFriendDetail.action")
	public String findFriendDetail(int user_id,HttpServletRequest request){
		User user= this.friendsBiz.findUser(user_id);
		JsonModel jsonModel = new JsonModel();
		jsonModel.setCode(1);
		jsonModel.setObj(user);
		Gson gson = new Gson();
		String result = gson.toJson(jsonModel);
		request.setAttribute("jsonModel", result);
		return "result";
	} 
	
	@RequestMapping("/myValidateInfo.action")
	public String myValidateInfo(HttpServletRequest request,HttpSession session){
		int user_id = ((User)session.getAttribute("user")).getUser_id();
		List<User> users= this.friendsBiz.findMyValidateInfo(user_id);
		//System.out.println(users);
		request.setAttribute("myValidateInfo", users);
		return "myValidateInfo";
	} 
	
	/*
	 //第一种方法
	@RequestMapping("/agree.action")
	@ResponseBody
	public JsonModel agree(int user_id,HttpServletRequest request,HttpSession session){
			JsonModel jsonModel = new JsonModel();
		try {
			int myId = ((User)session.getAttribute("user")).getUser_id();
			Friends f = new Friends(myId,user_id,1);
			this.friendsBiz.agreeRequest(f, user_id);
			
			jsonModel.setCode(1);
			jsonModel.setErrmsg("已回应对方!!!");
			return jsonModel;
		} catch (Exception e) {
			jsonModel.setCode(0);
			jsonModel.setErrmsg("服务器出错，请重新操作!!!");
			return jsonModel;
		}
	} */
	
	
	/* // 第二种方法
	@RequestMapping("/agree.action")
	@ResponseBody
	public String agree(int user_id,HttpServletRequest request,HttpSession session){
		try {
			int myId = ((User)session.getAttribute("user")).getUser_id();
			Friends f = new Friends(myId,user_id,1);
			this.friendsBiz.agreeRequest(f, user_id);
			
			String result = "已回应对方";//在前端页面输出是乱码
			String s = new String(result.getBytes("utf-8"));
			return s;
		} catch (Exception e) {
			return myValidateInfo(request,session);
		}
	} */
	
	
	
	/**
	 * 第三种方法
	 * 同意好友验证
	 * @param user_id
	 * @param request
	 * @param session
	 * @return
	 */
	@RequestMapping("/agree.action")
	public String agree(int user_id,HttpServletRequest request,HttpSession session){
		try {
			int myId = ((User)session.getAttribute("user")).getUser_id();
			Friends f = new Friends(myId,user_id,1);
			this.friendsBiz.agreeRequest(f, user_id);
			
			JsonModel jsonModel = new JsonModel();
			jsonModel.setCode(1);
			jsonModel.setErrmsg("已回应对方!!!");
			Gson gson = new Gson();
			String result = gson.toJson(jsonModel);
			request.setAttribute("jsonModel", result);
			return "result";
		} catch (Exception e) {
			return myValidateInfo(request,session);
		}
	} 
	
	
	/**
	 * 拒绝好友验证
	 * @param user_id
	 * @param request
	 * @param session
	 * @return
	 */
	@RequestMapping("/disagree.action")
	public String disagree(int user_id,HttpServletRequest request,HttpSession session){
		try {
			int myId = ((User)session.getAttribute("user")).getUser_id();
			Friends f = new Friends(user_id,myId);
			this.friendsBiz.disagreeRequest(f);
			
			JsonModel jsonModel = new JsonModel();
			jsonModel.setCode(1);
			jsonModel.setErrmsg("已拒绝对方!!!");
			Gson gson = new Gson();
			String result = gson.toJson(jsonModel);
			request.setAttribute("jsonModel", result);
			return "result";
		} catch (Exception e) {
			return myValidateInfo(request,session);
		}
	} 
	
	@RequestMapping("/deleteFriends.action")
	public String deleteFriends(int user_id,HttpServletRequest request,HttpSession session,Model model) throws IOException{
			int myId = ((User)session.getAttribute("user")).getUser_id();
			Friends f1 = new Friends(user_id,myId);
			Friends f2 = new Friends(myId,user_id);
			this.friendsBiz.deleteFriends(f1, f2);
			return searchAllFriends(model, session);
	} 
	
	
	
	 
	
	
}
