package cn.toptest.oa.model;

import java.util.HashSet;
import java.util.Set;

/**
 * ְ��ʵ��
 * @author Administrator
 *
 */
public class Role {
	private int r_id;

	private Set<User> users = new HashSet<User>();	//ͬһְλ���û�
	
	private String name;							//ְ������
	private String description;						//ְ������
	private short leavel;							//ְ�񼶱�
	
	
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
