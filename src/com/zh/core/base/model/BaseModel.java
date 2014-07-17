package com.zh.core.base.model;

import java.util.HashMap;
import java.util.Map;

import com.zh.core.model.Pager;

/**
 * model模型
 * @author 陶照平
 *  email : taozhaoping@gmail.com
 */
public class BaseModel {

	private Pager pageInfo = new Pager();
	
	/**
	 * 删除条件
	 */
	private String jsonIDString;
	
	private Integer id;
	
	private String menuId;
	
	private String menu2Id;
	
	private String token;
	
	/**
	 * 是否启用或者停用
	 */
	private String enabled;
	
	/**
	 * 页面视图
	 */
	private String view;
	
	/**
	 * 返回界面列表使用
	 */
	private Map<String, Object> dataMap = new HashMap<String, Object>();

	/**
	 * 查询和修改返回的json对象
	 */
	private String reultObject;
	
	public String getMenuId() {
		return menuId;
	}

	public void setMenuId(String menuId) {
		this.menuId = menuId;
	}

	public String getMenu2Id() {
		return menu2Id;
	}

	public void setMenu2Id(String menu2Id) {
		this.menu2Id = menu2Id;
	}

	public Pager getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(Pager pageInfo) {
		this.pageInfo = pageInfo;
	}

	public String getJsonIDString() {
		return jsonIDString;
	}

	public void setJsonIDString(String jsonIDString) {
		this.jsonIDString = jsonIDString;
	}

	public String getView() {
		return view;
	}

	public void setView(String view) {
		this.view = view;
	}

	public String getReultObject() {
		return reultObject;
	}

	public void setReultObject(String reultObject) {
		this.reultObject = reultObject;
	}

	public Map<String, Object> getDataMap() {
		return dataMap;
	}

	public void setDataMap(Map<String, Object> dataMap) {
		this.dataMap = dataMap;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getEnabled() {
		return enabled;
	}

	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	
}
