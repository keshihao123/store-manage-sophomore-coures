package com.ischoolbar.programmer.entity.admin;

import javax.xml.crypto.Data;

import org.springframework.stereotype.Component;

/**
 * 门店实体类
 * @author John
 *
 */
@Component
public class Shop {
	private Integer id;
	private String sname;//门店名
	private String sphone;//门店电话
	private String address;//联系地址
	private String lal;//经纬度
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
