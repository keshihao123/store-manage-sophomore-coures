package com.ischoolbar.programmer.entity.admin;

import javax.xml.crypto.Data;

import org.springframework.stereotype.Component;

/**
 * �ŵ�ʵ����
 * @author John
 *
 */
@Component
public class Shop {
	private Integer id;
	private String sname;//�ŵ���
	private String sphone;//�ŵ�绰
	private String address;//��ϵ��ַ
	private String lal;//��γ��
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSphone() {
		return sphone;
	}
	public void setSphone(String sphone) {
		this.sphone = sphone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getLal() {
		return lal;
	}
	public void setLal(String lal) {
		this.lal = lal;
	}
	
	
	
}
