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

import cn.toptest.oa.model.Department;
import cn.toptest.oa.service.DepartmentService;

@Controller
@RequestMapping("department")
public class DepartmentController {
	
	@Autowired
	private DepartmentService departmentService;
	/**
	 * 列表
	 * @return
	 */
	@RequestMapping(value="/selectAll")
	public ModelAndView selectAll(ModelMap map,HttpServletRequest request) {
		int pageNow=1;
		if("".equals(request.getParameter("pageNow"))||request.getParameter("pageNow")==null){
			pageNow=1;
		}else{
			pageNow=Integer.parseInt(request.getParameter("pageNow"));
		}
		int everyPage=10;
		map.addAttribute("departments", departmentService.selectAll(pageNow, everyPage)[1]);
		map.addAttribute("totalPage", departmentService.selectAll(pageNow,everyPage)[0]);
		map.addAttribute("pageNow", pageNow);
		return new ModelAndView("oa_ui/department/list",map);	
	}
	/**
	 * 添加页面
	 * @return
	 */
	@RequestMapping(value="/addUI")
	public ModelAndView addUI(ModelMap map) {
		map.addAttribute("lists", departmentService.findDepartment());
		return new ModelAndView("oa_ui/department/addUI", map); 
	}

	/**
	 * 添加
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public ModelAndView add(Department department,ModelMap map) {
		map.addAttribute("msg", "添加错误");
		return new ModelAndView(departmentService.addDepartment(department), map);
	}
	/**
	 * 删除
	 * @return
	 */
	@RequestMapping(value="/del")
	public String del(@RequestParam("id") int id,ModelMap map) {
		departmentService.del(id);
		return "redirect:/department/selectAll";
	}
	/**
	 * 批量删除
	 * @return
	 */
	@RequestMapping(value="/dellist")
	@ResponseBody
	public String dellist(@RequestParam("val") String val){
		if ("".equals(val)) {
			
			return "redirect:/department/selectAll";
		}
//字符串转int数组
//		String[] ids=val.split(",");
//		int[] id = new int[ids.length];
//		for (int i = 0; i < ids.length; i++) {
//			id[i]=Integer.parseInt(ids[i]);
//		}
		String[] ids=val.split(",");
		
		departmentService.delAll(ids);
		
		return "/department/selectAll"; 
	}

	/**
	 * 修改页面(需要先通过id查询)
	 * @return
	 */
	@RequestMapping(value="/updateUI")
	public ModelAndView updateUI(@RequestParam("id") int id,ModelMap map) {
		map.addAttribute("lists", departmentService.findDepartment());
		map.addAttribute("department", departmentService.getById(id));
		return new ModelAndView("oa_ui/department/updateUI", map);
	}
	/**
	 * 修改
	 * @return
	 */
	@RequestMapping(value="/update")
	public String update(Department department) {
		departmentService.update(department);
		return "redirect:/department/selectAll";
	}	
}
