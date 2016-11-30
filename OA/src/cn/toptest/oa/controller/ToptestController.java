package cn.toptest.oa.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.toptest.oa.model.User;
import cn.toptest.oa.service.UserService;
import cn.toptest.util.MD5;

@Controller
@RequestMapping("top")
public class ToptestController {
	
	private int count=0;
	private String view;
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/index.php")
	public String toIndex() {
		return "index";
	}
	
	@RequestMapping(value="/company.php")
	public String toCompany() {
		return "toptest/company";
	}
	@RequestMapping(value="/checkUser.php",method=RequestMethod.POST)
	public String checkByName(User user,HttpSession session){
		String uname = user.getLoginName();
		String pwd = MD5.GetMD5Code(user.getPassword());
		count = userService.selectByName(uname, pwd);
		switch (count) {
		case 1:
			session.setAttribute("is_login", "ok");
			session.setAttribute("name", uname);
			session.setAttribute("leavel", user.getLeavel());
			session.setMaxInactiveInterval(20*60);
			view = "oa_ui/index"; 
			break;
		case -1:
			session.setAttribute("is_login", "uname");
			view = "oa_ui/userlogin";
			break;
		case -2:
			session.setAttribute("is_login", "password");
			view = "oa_ui/userlogin";
			break;
		default:
			break;
		}
		return view;
	}
}
