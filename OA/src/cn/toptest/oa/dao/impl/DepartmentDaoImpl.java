package cn.toptest.oa.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.toptest.oa.dao.DepartmentDao;
import cn.toptest.oa.mapper.DepartmentMapper;
import cn.toptest.oa.model.Department;

@Repository("departmentDao")
public class DepartmentDaoImpl implements DepartmentDao {

	@Autowired
	private DepartmentMapper departmentMapper;

	@Override
	public void save(Department department) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Department department) {
		// TODO Auto-generated method stub
		
	}



}
