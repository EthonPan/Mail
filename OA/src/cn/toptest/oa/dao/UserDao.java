package cn.toptest.oa.dao;

import java.util.List;

import cn.toptest.oa.model.User;

public interface UserDao{
	public void save(User user);
	public void delete(int id);
	public void update(User user);
	public User getById(int id);
	public List<User> getByIds(int[] ids);
	public List<User> findAll();
	public User selectByName(String name);
}
