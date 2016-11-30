package cn.toptest.oa.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.toptest.oa.dao.RoleDao;
import cn.toptest.oa.mapper.RoleMapper;
import cn.toptest.oa.model.Role;

@Repository("roleDao")
public class RoleDaoImpl implements RoleDao {

	@Autowired
	private RoleMapper roleMapper;
	@Override
	public void save(Role role) {
		
		roleMapper.save(role);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Role role) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Role getById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Role> getByIds(int[] ids) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Role> findAll() {
		return roleMapper.findAll();
	}

}
