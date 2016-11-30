package cn.toptest.oa.model;

import java.util.HashSet;
import java.util.Set;

public class Department {
	private int id;
	
	private Set<User> users = new HashSet<User>();	//部门成员
	private Department parent;						//上级部门
	private Set<Department> children;				//下级部门
	
	private String name;							//部门名称
	private String description;						//部门描述
	private int leavel;								//部门等级
//	private int uppid;								//上级部门id
//	
//	public int getUppid() {
//		return uppid;
//	}
//	public void setUppid(int uppid) {
//		this.uppid = uppid;
//	}
	public int getLeavel() {
		return leavel;
	}
	public void setLeavel(int leavel) {
		this.leavel = leavel;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Set<User> getUsers() {
		return users;
	}
	public void setUsers(Set<User> users) {
		this.users = users;
	}
	public Department getParent() {
		return parent;
	}
	public void setParent(Department parent) {
		this.parent = parent;
	}
	public Set<Department> getChildren() {
		return children;
	}
	public void setChildren(Set<Department> children) {
		this.children = children;
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
	
	
}
