package cn.toptest.oa.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.toptest.oa.dao.UserDao;
import cn.toptest.oa.mapper.UserMapper;
import cn.toptest.oa.model.User;
import cn.toptest.util.Page;

@Service("userService")
public class UserService {
	
	private int count=0;
	@Autowired
	private UserDao userDao;
	@Autowired
	private UserMapper userMapper;
	
	public int getById(int id) {
		User user = userDao.getById(id);
		if (user!=null) {
			return 1;
		}
		return -1;
	}
	@Transactional(rollbackFor=Exception.class)
	public void saveUser(User user){
			userDao.save(user);
	}
	
	public int selectByName(String name,String pwd) {
		User sqlUser=userDao.selectByName(name);
		if (sqlUser!=null) {
			if (sqlUser.getPassword().equals(pwd)) {
				count=1;//登陆成功
			}else {
				count=-2;//密码错误
			}
		} else {
			count=-1;//用户名错误
		}
		return count;	
	}
	
	/**
	 * 查询所有用户
	 * @return
	 */
		public Object[] selectAll(int pageNow,int everyPage) {
		int totalCount=userMapper.selectCount();
		Page page=new Page();
		page.setTotalCount(totalCount);
		page.setPageNow(pageNow);
		page.setEveryPage(everyPage);
		page.init();
		Map<String , Object> map=new HashMap<String, Object>();
		map.put("beginStart", page.getBeginStart());
		map.put("everyPage", page.getEveryPage());
		
		return new Object[]{page.getTotalPage(),userMapper.showPage(map)};
	}

}
