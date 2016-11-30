package cn.toptest.oa.model;

import java.sql.Date;
import java.util.HashSet;
import java.util.Set;


/**
 * �û�ʵ����
 * @author Administrator
 *
 */
public class User {
	private int u_id;
	
	private Department department;					//�û����ڵĲ���
	private Set<Role> roles = new HashSet<Role>();	//�û����ڵĸ�λ/ְ��
	
	private String loginName;	//�û���½��
	private String password;	//�û�����
	private String name;		//�û���ʵ����
	private String sex;			//�û��Ա�
	private String phone;		//�û��绰
	private String email;		//�û������ʼ�
	private String description; //�û���ע˵��
	private int leavel;			//�û�Ȩ��
	private Date intime;		//��ְ����
	
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
