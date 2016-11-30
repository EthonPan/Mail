package cn.toptest.oa.mapper;

import java.util.List;
import java.util.Map;

import cn.toptest.oa.model.Role;

public interface RoleMapper {
	public void save(Role role);
	public void delete(int id);
	public void delAll(String[] ids);
	public void update(Role role);
	public Role getById(int id);
	public Role getByName(String name);
	public List<Role> getByIds(int[] ids);
	public List<Role> findAll();
	public List<Role> showPage(Map<String, Object> map);
	public int selectCount();
}
