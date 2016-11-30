package cn.toptest.oa.mapper;

import java.util.List;
import java.util.Map;

import cn.toptest.oa.model.Department;

public interface DepartmentMapper {
	public void save(Department department);
	public void delete(int id);
	public void delAll(String[] ids);
	public void update(Department department);
	public Department getById(int id);
	public Department getByName(String name);
	public List<Department> getByIds(int[] ids);
	public List<Department> findAll();
	public List<Department> showPage(Map<String, Object> map);
	public int selectCount();
	}
