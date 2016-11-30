package cn.toptest.oa.dao;

import java.util.List;

import cn.toptest.oa.model.Role;

public interface RoleDao {
	public void save(Role role);
	public void delete(int id);
	public void update(Role role);
	public Role getById(int id);
	public List<Role> getByIds(int[] ids);
	public List<Role> findAll();
}
