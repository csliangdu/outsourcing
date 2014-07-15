package com.zh.base.model.bean;

import java.util.Date;
import java.util.List;

import com.zh.core.model.IDataObject;

public class Role extends IDataObject{
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column SYS_ROLE.ID
     *
     * @mbggenerated Thu Jul 10 19:54:32 CST 2014
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column SYS_ROLE.NAME
     *
     * @mbggenerated Thu Jul 10 19:54:32 CST 2014
     */
    private String name;
    
    /**
     * 描述
     */
    private String describe;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column SYS_ROLE.CREATETIME
     *
     * @mbggenerated Thu Jul 10 19:54:32 CST 2014
     */
    private Date createtime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column SYS_ROLE.UPDATETIME
     *
     * @mbggenerated Thu Jul 10 19:54:32 CST 2014
     */
    private Date updatetime;
    
    /**
     * 菜单信息
     */
    private List<Menu> menuList;
    
    /**
     * 权限信息
     */
    private List<Authorities> authoritiesList;
    
	public List<Authorities> getAuthoritiesList() {
		return authoritiesList;
	}

	public void setAuthoritiesList(List<Authorities> authoritiesList) {
		this.authoritiesList = authoritiesList;
	}

	public List<Menu> getMenuList() {
		return menuList;
	}

	public void setMenuList(List<Menu> menuList) {
		this.menuList = menuList;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public Date getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}

	public String getDescribe() {
		return describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
	}
   
}