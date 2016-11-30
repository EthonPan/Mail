package cn.toptest.oa.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.toptest.oa.mapper.DepartmentMapper;
import cn.toptest.oa.model.Department;
import cn.toptest.util.Page;

@Service("departmentService")
@Transactional
public class DepartmentService {

	@Autowired
	private DepartmentMapper departmentMapper;
	/**
	 * ��ѯ���в���
	 * @return
	 */
	public Object[] selectAll(int pageNow,int everyPage) {
		int totalCount=departmentMapper.selectCount();
		Page page=new Page();
		page.setTotalCount(totalCount);
		page.setPageNow(pageNow);
		page.setEveryPage(everyPage);
		page.init();
		Map<String , Object> map=new HashMap<String, Object>();
		map.put("beginStart", page.getBeginStart());
		map.put("everyPage", page.getEveryPage());
		
		return new Object[]{page.getTotalPage(),departmentMapper.showPage(map)};
	}
	/**
	 * ����
	 */
	public List<Department> findDepartment(){
		List<Department> lists = new ArrayList<Department>();
		return this.getCategoriesBySort(departmentMapper.findAll(), departmentMapper.findAll().get(0).getParent().getId(),lists);
	}
	/**
	 * ��������
	 * */
	public List<Department> getCategoriesBySort(List<Department> list,int fid,List<Department> lists){
		
		for(int i=0;i<list.size();i++){
			if(fid==list.get(i).getParent().getId()){
				lists.add(list.get(i));
				getCategoriesBySort(list,list.get(i).getId(),lists);
			}
		}
		return lists;
	}
	/**
	 * ��Ӳ���
	 * @param department
	 */
	public String addDepartment(Department department) {
		//����ǰȷ�ϲ��������ظ�
		if (departmentMapper.getByName(department.getName())!=null) {
			return "oa_ui/adderror";
		}else{
			if (department.getParent().getId()==0) {
				department.setLeavel(1);
			}else {
				department.setLeavel(departmentMapper.getById(department.getParent().getId()).getLeavel()+1);
			}
			departmentMapper.save(department);
			return "redirect:/department/selectAll";
		}
	}
	/**
	 * ɾ������
	 */
	public void del(int id) {
		List<Department> lists = departmentMapper.findAll();
		for (Department department : lists) {
			if (department.getParent().getId()==id) {
				del(department.getId());
			}
			departmentMapper.delete(id);
		}
	}
	/**
	 * ����ɾ��department
	 */
	public void delAll(String[] ids) {
		//�ַ���תint����
		int[] id = new int[ids.length];
		for (int i = 0; i < ids.length; i++) {
			id[i]=Integer.parseInt(ids[i]);
		}
		for (int i : id) {
			del(i);
		}
//		departmentMapper.delAll(ids);
	}
	/**
	 * ͨ��id��ѯdepartment���޸�ҳ��
	 */
	public Department getById(int id) {
		return departmentMapper.getById(id);
		
	}
	/**
	 * ����id�޸�department
	 */
	public void update(Department department) {
		if (department.getParent().getId()==0) {
			department.setLeavel(1);
		}else {
			department.setLeavel(departmentMapper.getById(department.getParent().getId()).getLeavel()+1);
		}
		departmentMapper.update(department);
	}
}
