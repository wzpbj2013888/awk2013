package com.fr.net.model.po;

import java.io.Serializable;

import org.nutz.dao.entity.annotation.Column;
import org.nutz.dao.entity.annotation.Name;
import org.nutz.dao.entity.annotation.Table;

@Table("tb_module")
public class Module implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Column
	@Name
	private String moduleid;
	@Column
	private String name;
	@Column
	private String mainurl;
	@Column
	private String createperson;
	@Column
	private String createtime;
	@Column
	private String delperson;
	@Column
	private String deltime;
	
	public String getModuleid() {
		return moduleid;
	}
	public void setModuleid(String moduleid) {
		this.moduleid = moduleid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMainurl() {
		return mainurl;
	}
	public void setMainurl(String mainurl) {
		this.mainurl = mainurl;
	}
	public String getCreateperson() {
		return createperson;
	}
	public void setCreateperson(String createperson) {
		this.createperson = createperson;
	}
	
	public String getDelperson() {
		return delperson;
	}
	public void setDelperson(String delperson) {
		this.delperson = delperson;
	}
	public String getDeltime() {
		return deltime;
	}
	public void setDeltime(String deltime) {
		this.deltime = deltime;
	}
	public String getCreatetime() {
		return createtime;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	
	
}
