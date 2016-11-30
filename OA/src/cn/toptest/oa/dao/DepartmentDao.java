package cn.toptest.oa.dao;

import cn.toptest.oa.model.Department;

public interface DepartmentDao {
	public void save(Department department);
	public void delete(int id);
	public void update(Department department);
}
