package cn.toptest.oa.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import cn.toptest.oa.model.Role;
import cn.toptest.oa.service.RoleService;

@Controller
@RequestMapping("role")
public class RoleController {

	@Autowired
	private RoleService roleService;
	
	/**
	 * 列表
	 * @return
	 */
	@RequestMapping(value="/selectAllRole")
	public ModelAndView selectAll(ModelMap map,HttpServletRequest request) {
		int pageNow=1;
		if("".equals(request.getParameter("pageNow"))||request.getParameter("pageNow")==null){
			pageNow=1;
		}else{
			pageNow=Integer.parseInt(request.getParameter("pageNow"));
		}
		int everyPage=10;
		map.addAttribute("roles", roleService.selectAllRole(pageNow, everyPage)[1]);
		map.addAttribute("totalPage", roleService.selectAllRole(pageNow,everyPage)[0]);
		map.addAttribute("pageNow", pageNow);
		return new ModelAndView("oa_ui/role/list",map);	
	}

	/**
	 * 添加页面
	 * @return
	 */
	@RequestMapping(value="/addUI")
	public String addUI() {
		return "oa_ui/role/addUI"; 
	}

	/**
	 * 添加
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public ModelAndView add(Role role,ModelMap map) {
		map.addAttribute("msg", "添加错误");
		return new ModelAndView(roleService.addRole(role), map);
	}
	/**
	 * 删除
	 * @return
	 */
	@RequestMapping(value="/del")
	public String del(@RequestParam("id") int id,ModelMap map) {
		roleService.del(id);
		return "redirect:/role/selectAllRole";
	}
	/**
	 * 批量删除
	 * @return
	 */
	@RequestMapping(value="/dellist")
	@ResponseBody
	public String dellist(@RequestParam("val") String val){
//字符串转int数组
//		String[] ids=val.split(",");
//		int[] id = new int[ids.length];
//		for (int i = 0; i < ids.length; i++) {
//			id[i]=Integer.parseInt(ids[i]);
//		}
		String[] ids=val.split(",");
		
		roleService.delAll(ids);
		
		return "/role/selectAllRole"; 
	}

	/**
	 * 修改页面(需要先通过id查询)
	 * @return
	 */
	@RequestMapping(value="/updateUI")
	public ModelAndView updateUI(@RequestParam("id") int id,ModelMap map) {
		map.addAttribute("role", roleService.getById(id));
		return new ModelAndView("oa_ui/role/updateUI", map);
	}
	/**
	 * 修改
	 * @return
	 */
	@RequestMapping(value="/update")
	public String update(Role role) {
		roleService.update(role);
		return "redirect:/role/selectAllRole";
	}
}
