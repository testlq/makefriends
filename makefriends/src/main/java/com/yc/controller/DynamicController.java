package com.yc.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.bean.Dynamic;
import com.yc.bean.User;
import com.yc.biz.DynamicBiz;
import com.yc.biz.UserBiz;

@Controller
public class DynamicController {
	
	@Resource(name = "dynamicBizImpl")
	private DynamicBiz dynamicBiz;
	
	@Resource(name = "userBizImpl")
	private UserBiz userBiz;
	
	@RequestMapping("/myDynamic.action")
	public String findDynamic(HttpSession session,Model model){
		int user_id =((User) session.getAttribute("user")).getUser_id();
		String username = ((User) session.getAttribute("user")).getUsername();
		List<Dynamic> myDynamic = dynamicBiz.findMyDynamic(user_id);
		if(myDynamic!=null && myDynamic.size()>0) {
			for(int i=0;i<myDynamic.size();i++) {
				myDynamic.get(i).setUsername(username);
			}
		}
		model.addAttribute("myDynamic", myDynamic);
		return "my_inbox";
	}
	
	 
	@RequestMapping("/addDynamic.action")
	public String addDynamic(HttpSession session,String content,Model model) {
		int user_id = ((User) session.getAttribute("user")).getUser_id();
		Dynamic dynamic = new Dynamic(user_id,content,0);
		int i = dynamicBiz.addMyDynamic(dynamic);
		return findDynamic(session,model);
	}
	

}












