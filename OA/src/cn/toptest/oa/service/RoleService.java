package cn.toptest.oa.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import cn.toptest.oa.mapper.RoleMapper;
import cn.toptest.oa.model.Role;
import cn.toptest.util.Page;

@Service("roleService")
@Transactional
public class RoleService {

	@Autowired
	private RoleMapper roleMapper;
	
	/**
	 * 查询所有岗位
	 * @return
	 */
	public Object[] selectAllRole(int pageNow,int everyPage) {
		int totalCount=roleMapper.selectCount();
		Page page=new Page();
		page.setTotalCount(totalCount);
		page.setPageNow(pageNow);
		page.setEveryPage(everyPage);
		page.init();
		Map<String , Object> map=new HashMap<String, Object>();
		map.put("beginStart", page.getBeginStart());
		map.put("everyPage", page.getEveryPage());
		
		return new Object[]{page.getTotalPage(),roleMapper.showPage(map)};
	}
	/**
	 * 添加岗位
	 * @param role
	 */
	public String addRole(Role role) {
		//插入前确认职务名不重复
		if (roleMapper.getByName(role.getName())!=null) {
			return "oa_ui/adderror";
		}else{
		roleMapper.save(role);
			return "redirect:/role/selectAllRole";
		}
	}
	/**
	 * 通过r_id删除
	 * @param id
	 * @return
	 */
	public void del(int id) {
		roleMapper.delete(id);
	}
	/**
	 * 批量删除role
	 */
	public void delAll(String[] ids) {
		roleMapper.delAll(ids);
	}
	/**
	 * 通过r_id查询Role到修改页面
	 * @param id
	 * @return
	 */
	public Role getById(int id) {
		return roleMapper.getById(id);
	}
	/**
	 * 根据r_id修改role
	 */
	public void update(Role role) {
		roleMapper.update(role);
	}
}
