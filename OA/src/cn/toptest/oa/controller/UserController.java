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
	 * ��ȫ�˳���¼
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
	 * �б�
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
	 * ���ҳ��
	 * @return
	 */
//	@RequestMapping(value="/addUI")
//	public ModelAndView addUI(ModelMap map) {
//		map.addAttribute("lists", userService.find());
//		return new ModelAndView("oa_ui/user/addUI", map); 
//	}

	/**
	 * ���
	 * @return
	 */
//	@RequestMapping(value="/add",method=RequestMethod.POST)
//	public ModelAndView add(User user,ModelMap map) {
//		map.addAttribute("msg", "��Ӵ���");
//		return new ModelAndView(userService.add(user), map);
//	}
	/**
	 * ɾ��
	 * @return
	 */
//	@RequestMapping(value="/del")
//	public String del(@RequestParam("id") int id,ModelMap map) {
//		userService.del(id);
//		return "redirect:/user/selectAll";
//	}
	/**
	 * ����ɾ��
	 * @return
	 */
//	@RequestMapping(value="/dellist")
//	@ResponseBody
//	public String dellist(@RequestParam("val") String val){
////�ַ���תint����
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
	 * �޸�ҳ��(��Ҫ��ͨ��id��ѯ)
	 * @return
	 */
//	@RequestMapping(value="/updateUI")
//	public ModelAndView updateUI(@RequestParam("id") int id,ModelMap map) {
//		map.addAttribute("lists", userService.find());
//		map.addAttribute("user", userService.getById(id));
//		return new ModelAndView("oa_ui/user/updateUI", map);
//	}
//	/**
//	 * �޸�
//	 * @return
//	 */
//	@RequestMapping(value="/update")
//	public String update(User user) {
//		userService.update(user);
//		return "redirect:/user/selectAll";
//	}
}
