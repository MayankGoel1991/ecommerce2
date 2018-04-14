package com.BackE.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name="User_role")
public class Role {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int roleId;
private String roleName;
private String role="ROLE_USER";

public int getRoleId() {
	return roleId;
}
public void setRoleId(int roleId) {
	this.roleId = roleId;
}
public String getRoleName() {
	return roleName;
}
public void setRoleName(String roleName) {
	this.roleName = roleName;
}
public String getRole() {
	return role;
}
public void setRole(String role) {
	this.role = role;
}
}




