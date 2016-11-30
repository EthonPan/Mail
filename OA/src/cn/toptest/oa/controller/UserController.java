package cn.toptest.oa.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.toptest.oa.model.User;
import cn.toptest.oa.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/index.action")
	public String toIndex() {
		return "oa_ui/index";
	}
	@RequestMapping(value="/welcome.action")
	public String toLogin() {
		return "oa_ui/userlogin";
	}
	/**
	 * 安全退出登录
	 * @return
	 */
	@RequestMapping(value="/logout.action")
	public String toLogout(HttpSession session) {
		session.removeAttribute((String) session.getAttribute("is_login"));
		session.removeAttribute("name");
		session.removeAttribute("leavel");
		return "oa_ui/userlogin";
	}
	


	/**
	 * 列表
	 * @return
	 */
	@RequestMapping(value="/selectAll")
	public ModelAndView selectAll(ModelMap map,HttpServletRequest request,HttpSession session) {
		int pageNow=1;
		if("".equals(request.getParameter("pageNow"))||request.getParameter("pageNow")==null){
			pageNow=1;
		}else{
			pageNow=Integer.parseInt(request.getParameter("pageNow"));
		}
		int everyPage=10;
		map.addAttribute("users", userService.selectAll(pageNow, everyPage)[1]);
		map.addAttribute("totalPage", userService.selectAll(pageNow,everyPage)[0]);
		map.addAttribute("pageNow", pageNow);
		return new ModelAndView("oa_ui/user/list",map);	
	}
	/**
	 * 添加页面
	 * @return
	 */
//	@RequestMapping(value="/addUI")
//	public ModelAndView addUI(ModelMap map) {
//		map.addAttribute("lists", userService.find());
//		return new ModelAndView("oa_ui/user/addUI", map); 
//	}

	/**
	 * 添加
	 * @return
	 */
//	@RequestMapping(value="/add",method=RequestMethod.POST)
//	public ModelAndView add(User user,ModelMap map) {
//		map.addAttribute("msg", "添加错误");
//		return new ModelAndView(userService.add(user), map);
//	}
	/**
	 * 删除
	 * @return
	 */
//	@RequestMapping(value="/del")
//	public String del(@RequestParam("id") int id,ModelMap map) {
//		userService.del(id);
//		return "redirect:/user/selectAll";
//	}
	/**
	 * 批量删除
	 * @return
	 */
//	@RequestMapping(value="/dellist")
//	@ResponseBody
//	public String dellist(@RequestParam("val") String val){
////字符串转int数组
////		String[] ids=val.split(",");
////		int[] id = new int[ids.length];
////		for (int i = 0; i < ids.length; i++) {
////			id[i]=Integer.parseInt(ids[i]);
////		}
//		String[] ids=val.split(",");
//		
//		userService.delAll(ids);
//		
//		return "/user/selectAll"; 
//	}

	/**
	 * 修改页面(需要先通过id查询)
	 * @return
	 */
//	@RequestMapping(value="/updateUI")
//	public ModelAndView updateUI(@RequestParam("id") int id,ModelMap map) {
//		map.addAttribute("lists", userService.find());
//		map.addAttribute("user", userService.getById(id));
//		return new ModelAndView("oa_ui/user/updateUI", map);
//	}
//	/**
//	 * 修改
//	 * @return
//	 */
//	@RequestMapping(value="/update")
//	public String update(User user) {
//		userService.update(user);
//		return "redirect:/user/selectAll";
//	}
}
