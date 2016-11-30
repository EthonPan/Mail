package cn.toptest.oa.model;

import java.util.HashSet;
import java.util.Set;

/**
 * 职务实体
 * @author Administrator
 *
 */
public class Role {
	private int r_id;

	private Set<User> users = new HashSet<User>();	//同一职位的用户
	
	private String name;							//职务名称
	private String description;						//职务描述
	private short leavel;							//职务级别
	
	
	public int getR_id() {
		return r_id;
	}
	public void setR_id(int r_id) {
		this.r_id = r_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Set<User> getUsers() {
		return users;
	}
	public void setUsers(Set<User> users) {
		this.users = users;
	}
	public short getLeavel() {
		return leavel;
	}
	public void setLeavel(short leavel) {
		this.leavel = leavel;
	}
	
}
