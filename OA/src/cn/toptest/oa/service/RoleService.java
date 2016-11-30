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
	 * ��ѯ���и�λ
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
	 * ��Ӹ�λ
	 * @param role
	 */
	public String addRole(Role role) {
		//����ǰȷ��ְ�������ظ�
		if (roleMapper.getByName(role.getName())!=null) {
			return "oa_ui/adderror";
		}else{
		roleMapper.save(role);
			return "redirect:/role/selectAllRole";
		}
	}
	/**
	 * ͨ��r_idɾ��
	 * @param id
	 * @return
	 */
	public void del(int id) {
		roleMapper.delete(id);
	}
	/**
	 * ����ɾ��role
	 */
	public void delAll(String[] ids) {
		roleMapper.delAll(ids);
	}
	/**
	 * ͨ��r_id��ѯRole���޸�ҳ��
	 * @param id
	 * @return
	 */
	public Role getById(int id) {
		return roleMapper.getById(id);
	}
	/**
	 * ����r_id�޸�role
	 */
	public void update(Role role) {
		roleMapper.update(role);
	}
}
