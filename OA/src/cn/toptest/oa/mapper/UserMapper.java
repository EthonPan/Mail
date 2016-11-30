package cn.toptest.oa.mapper;

import java.util.List;
import java.util.Map;

import cn.toptest.oa.model.User;


public interface UserMapper {
	public void save(User user);
	public void delete(int id);
	public void update(User user);
	public User getById(int id);
	public List<User> getByIds(int[] ids);
	public List<User> findAll();
	public User selectByName(String name);
	
	public int selectCount();									//��ѯ�����û�����
	public List<User> showPage(Map<String, Object> map);	//��ҳ��ѯ�û���¼
}
