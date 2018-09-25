package com.yc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.yc.bean.Email;
import com.yc.bean.JsonModel;
import com.yc.bean.Picture;
import com.yc.bean.User;
import com.yc.biz.PictureBiz;
import com.yc.biz.UserBiz;
import com.yc.util.SendEmail;

@Controller
public class UserController {
	@Resource(name = "userBizImpl")
	private UserBiz userBiz;
	
	@Resource
	private PictureBiz pictureBiz;
	
	@RequestMapping("/toIndex.action")
	public String toIndex() {
		return "index";
	}

	@RequestMapping("/login.action")
	public String login(String username, String password, HttpSession session,HttpServletResponse response) throws IOException {
			User user = userBiz.login(username, password);
			session.setAttribute("user", user);
			if (null != user) {
				return "index";
			} else {
				return "redirect:login.jsp";
			}
	}
	

	@RequestMapping("/register.action")
	public String register(User user) {
		int i = userBiz.regInfo(user);
		if (i > 0) {
			return "redirect:login.jsp";
		} else {
			return "redirect:register.jsp";
		}
	}

	@RequestMapping("loginout.action")
	public String loginout(HttpSession session) {
		session.invalidate();//清除所有的session
		//session.removeAttribute("user");//清除登录信息
		return "index";
	}

	@RequestMapping("/findInformation.action")
	public String findInformation(HttpSession session, Model model,HttpServletResponse response,HttpServletRequest request) throws IOException {
			User u = (User) session.getAttribute("user");
			User user = userBiz.findInformation(u.getUsername());
			request.setAttribute("user", user);
			
			//显示图片
			int user_id=u.getUser_id();
			List<Picture> pictures=pictureBiz.findAllPicture(user_id);
			session.setAttribute("pictures", pictures);
			return "view_profile";
	}

	@RequestMapping("/perfectAllInformation.action")
	public String perfectAllInformation(HttpSession session, User user, Model model) {
		User u = (User) session.getAttribute("user");
		user.setUsername(u.getUsername());
		int i = userBiz.perfectAllInformation(user);
		if (i > 0) {
			return "index";
		} else {
			return "view_profile";
		}
	}
	
	@RequestMapping("/email.action")
	public String email(HttpSession session,Model model,int user_id){
		User user = (User) session.getAttribute("user");
		model.addAttribute("Iemail",user.getEmail());
		User user2 = userBiz.findByterm(new User(user_id));
		model.addAttribute("Uemail",user2.getEmail());
		return "email";
	}
	
	
	@RequestMapping("/toemail.action")
	public String toEmail(String Iemail,String Uemail,String msg,HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IOException{
		/*System.err.println("Iemail:"+Iemail);
		System.err.println("Uemail:"+Uemail);
		System.err.println("msg:"+msg);*/
		JsonModel jsonModel = new JsonModel();
		String username = ((User)session.getAttribute("user")).getUsername();
		if(Uemail!=null&&Iemail!=null){
			try {
				SendEmail.send(Iemail, Uemail, msg);
				
				
				//保存发送的邮件
				Email email = new Email(username,Iemail, Uemail, msg);
				userBiz.addEmail(email);
				
				
				jsonModel.setCode(1);
				Gson gson = new Gson();
				String result = gson.toJson(jsonModel);
				request.setAttribute("jsonModel", result);
			} catch (MessagingException e) {
				e.printStackTrace();
			}
		}
		return "result";
	}
	
	

	@RequestMapping("/listEmail.action")
	public String listEmail(HttpSession session,Model model) {
		String username = ((User) session.getAttribute("user")).getUsername();
		List<Email> listEmail = userBiz.listEmail(username);
		model.addAttribute("listEmail", listEmail);
		return "listEmail";
	}
	
	@RequestMapping("/findObj.action")
	public String findObj(User user,Model model){
		List<User> list = userBiz.findObj(user);
		model.addAttribute("showObj",list);
		return "index";
	}

	 
	@RequestMapping("/contact.action")
	public String contact(){
		return "contact";
	}
}
