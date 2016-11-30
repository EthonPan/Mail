package cn.toptest.oa.model;

import java.sql.Date;
import java.util.HashSet;
import java.util.Set;


/**
 * 用户实体类
 * @author Administrator
 *
 */
public class User {
	private int u_id;
	
	private Department department;					//用户所在的部门
	private Set<Role> roles = new HashSet<Role>();	//用户所在的岗位/职务
	
	private String loginName;	//用户登陆名
	private String password;	//用户密码
	private String name;		//用户真实姓名
	private String sex;			//用户性别
	private String phone;		//用户电话
	private String email;		//用户电子邮件
	private String description; //用户备注说明
	private int leavel;			//用户权限
	private Date intime;		//入职日期
	
	public Date getIntime() {
		return intime;
	}
	public void setIntime(Date intime) {
		this.intime = intime;
	}
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	public Set<Role> getRoles() {
		return roles;
	}
	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getLeavel() {
		return leavel;
	}
	public void setLeavel(int leavel) {
		this.leavel = leavel;
	}

	
}
