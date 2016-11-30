package cn.toptest.oa.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.toptest.oa.dao.UserDao;
import cn.toptest.oa.mapper.UserMapper;
import cn.toptest.oa.model.User;

@Repository("userDao")
public class UserDaoImpl implements UserDao {


	@Autowired
	private UserMapper userMapper;

	public void save(User user) {
		userMapper.save(user);
	}

	public void delete(int id) {
		
	}

	public void update(User user) {
		
	}

	public User getById(int id) {
		
		return userMapper.getById(id);
	}

	public List<User> getByIds(int[] ids) {

		return null;
	}

	public List<User> findAll() {

		return null;
	}

	@Override
	public User selectByName(String name) {
		return userMapper.selectByName(name);
	}


	
}
