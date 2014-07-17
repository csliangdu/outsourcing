package com.zh.base.action;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.zh.base.model.UserInfoModel;
import com.zh.base.model.bean.Enterprise;
import com.zh.base.model.bean.Role;
import com.zh.base.model.bean.User;
import com.zh.base.service.EnterpriseService;
import com.zh.base.service.RoleService;
import com.zh.base.service.UserInfoService;
import com.zh.core.base.action.Action;
import com.zh.core.base.action.BaseAction;
import com.zh.core.exception.ProjectException;
import com.zh.core.model.Pager;
import com.zh.core.util.BCrypt;

public class UserInfoAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private static Logger LOGGER = LoggerFactory.getLogger(UserInfoAction.class); 

	/**
	 * 系统用户接口
	 */
	@Autowired
	private UserInfoService userInfoService;
	
	@Autowired
	private RoleService roleService;
	
	@Autowired
	private EnterpriseService enterpriseService;
	
	private UserInfoModel userInfoModel = new UserInfoModel();

	@Override
	public String execute() throws Exception {
		User user = this.userInfoModel.getUserInfo();
		Pager pager = this.userInfoModel.getPageInfo();
		Integer count = userInfoService.count(user);
		pager.setTotalRow(count);
		List<User> userList = userInfoService.queryList(user,pager);
		this.userInfoModel.setUserList(userList);
		return Action.SUCCESS;

	}
	
	public String validatorUserName()
	{
		String loginName= userInfoModel.getLoginName();
		boolean bool = true;
		if(null != loginName && !"".equals(loginName))
		{
			User user = new User();
			user.setLoginName(loginName);
			User userInfo = userInfoService.query(user);
			if(null != userInfo)
			{
				bool = false;
			}
		}
		String token = (String)this.getRequest().getAttribute("token");
		userInfoModel.getDataMap().put("success", bool);
		userInfoModel.getDataMap().put("token", token);
		return Action.RETURN_JSON;
	}
	

	public String editor()
	{
		Integer id = this.userInfoModel.getId();
		if(null != id && !"".equals(id))
		{
			User user = this.userInfoModel.getUserInfo();
			user.setId(id);
			User userReult = userInfoService.query(user);
			this.userInfoModel.setUserInfo(userReult);
		}
		
		//获取角色列表
		Role role = new Role();
		List<Role> roleList = roleService.queryList(role);
		
		//获取企业信息
		Enterprise enterprise = new Enterprise();
		List<Enterprise> enterpriseList = enterpriseService.queryList(enterprise);
		
		this.userInfoModel.getDataMap().put("roleList", roleList);
		this.userInfoModel.getDataMap().put("enterpriseList", enterpriseList);
		return Action.EDITOR;
	}
	
	public String save()
	{
		User user = this.userInfoModel.getUserInfo();
		
		//判断当前是设置成启动状态还是停用状态
		String view = this.userInfoModel.getView();
		if(null != view && "enabled".equals(view))
		{
			String enabled = this.userInfoModel.getEnabled();
			Integer id = this.userInfoModel.getId();
			if("0".equals(enabled))
			{
				user.setEnabled("1");
			}else
			{
				user.setEnabled("0");
			}
			user.setId(id);
		}
		
		//判断是新增还是修改
		Integer id = user.getId();
		String passWord = userInfoModel.getNewPassWord();
		if(null == id || 0 == id)
		{
			
			if( null == passWord && "".equals(passWord))
			{
				ProjectException.createException("密码不允许为空!");
			}
			String bcryptPassword = BCrypt.hashpw(passWord, BCrypt.gensalt(12));
			user.setUserPassword(bcryptPassword);
			user.setCreateTime(new Date());
			userInfoService.insert(user);
		}else
		{
			if( null != passWord && !"".equals(passWord))
			{
				String bcryptPassword = BCrypt.hashpw(passWord, BCrypt.gensalt(12));
				user.setUserPassword(bcryptPassword);
			}
			user.setUpdateTime(new Date());
			userInfoService.update(user);
		}
		return Action.EDITOR_SUCCESS;
	}

	public Object getModel() {
		return userInfoModel;
	}

	public UserInfoService getUserInfoService() {
		return userInfoService;
	}

	public void setUserInfoService(UserInfoService userInfoService) {
		this.userInfoService = userInfoService;
	}

	public UserInfoModel getUserInfoModel() {
		return userInfoModel;
	}

	public void setUserInfoModel(UserInfoModel userInfoModel) {
		this.userInfoModel = userInfoModel;
	}
}
