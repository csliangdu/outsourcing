package com.zh.web.model.bean;

import java.util.Date;

import com.zh.core.model.IDataObject;

/**
 * 入职信息
 * @author taozhaoping 26078
 * @author mail taozhaoping@gmail.com
 */
public class EntryProcess extends IDataObject {
	/**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TECHNOLOGICALPROCESS.ID
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    private Integer id;
    
    /***
     * 描述
     */
    private String description;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TECHNOLOGICALPROCESS.NAME
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     * 
     */
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TECHNOLOGICALPROCESS.ENGLISHNAME
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    private String englishname;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TECHNOLOGICALPROCESS.NATIONALITY
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    private String nationality;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TECHNOLOGICALPROCESS.YEARBIRTH
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    private String yearbirth;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TECHNOLOGICALPROCESS.BIRTHDAY
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    private Date birthday;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TECHNOLOGICALPROCESS.STATE
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    private String state;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TECHNOLOGICALPROCESS.MAIL
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    private String mail;
    
    private String phone;

    /***
     * 户籍地
     */
    private String domicile;

    /**
     * skype
     */
    private String skype;
    
    /***
     * 微信号
     */
    private String wechat;
    

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TECHNOLOGICALPROCESS.CREATETIME
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    private String createtime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TECHNOLOGICALPROCESS.UPDATETIME
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    private String updatetime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TECHNOLOGICALPROCESS.WORKUSERID
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    private Integer workuserid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TECHNOLOGICALPROCESS.CONTRACTTYPE
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    private String contracttype;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TECHNOLOGICALPROCESS.PASSPORTNO
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    private String passportno;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TECHNOLOGICALPROCESS.PASSPORTNODATE
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    private String passportnodate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TECHNOLOGICALPROCESS.CONTRACTDATE
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    private String contractdate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TECHNOLOGICALPROCESS.CURRENTLOCATION
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    private String currentlocation;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TECHNOLOGICALPROCESS.WORKFLOWID
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    private String workflowid;
    
    
    /***
     * 当前审批人
     */
    private String approver;
    
    /***
     * 当前任务id
     */
    private String taskId;
    
    /***
     * url
     */
    private String url;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TECHNOLOGICALPROCESS.RES1
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     * 
     */
    private String res1;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TECHNOLOGICALPROCESS.RES2
     * 当前任务的id
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    private String res2;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TECHNOLOGICALPROCESS.RES3
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    private String res3;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TECHNOLOGICALPROCESS.RES4
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    private String res4;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TECHNOLOGICALPROCESS.RES5
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    private String res5;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column T_TECHNOLOGICALPROCESS.RES6
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    private String res6;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column T_TECHNOLOGICALPROCESS.ID
     *
     * @return the value of T_TECHNOLOGICALPROCESS.ID
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column T_TECHNOLOGICALPROCESS.ID
     *
     * @param id the value for T_TECHNOLOGICALPROCESS.ID
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column T_TECHNOLOGICALPROCESS.NAME
     *
     * @return the value of T_TECHNOLOGICALPROCESS.NAME
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column T_TECHNOLOGICALPROCESS.NAME
     *
     * @param name the value for T_TECHNOLOGICALPROCESS.NAME
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column T_TECHNOLOGICALPROCESS.ENGLISHNAME
     *
     * @return the value of T_TECHNOLOGICALPROCESS.ENGLISHNAME
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public String getEnglishname() {
        return englishname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column T_TECHNOLOGICALPROCESS.ENGLISHNAME
     *
     * @param englishname the value for T_TECHNOLOGICALPROCESS.ENGLISHNAME
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public void setEnglishname(String englishname) {
        this.englishname = englishname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column T_TECHNOLOGICALPROCESS.NATIONALITY
     *
     * @return the value of T_TECHNOLOGICALPROCESS.NATIONALITY
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public String getNationality() {
        return nationality;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column T_TECHNOLOGICALPROCESS.NATIONALITY
     *
     * @param nationality the value for T_TECHNOLOGICALPROCESS.NATIONALITY
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column T_TECHNOLOGICALPROCESS.YEARBIRTH
     *
     * @return the value of T_TECHNOLOGICALPROCESS.YEARBIRTH
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public String getYearbirth() {
        return yearbirth;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column T_TECHNOLOGICALPROCESS.YEARBIRTH
     *
     * @param yearbirth the value for T_TECHNOLOGICALPROCESS.YEARBIRTH
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public void setYearbirth(String yearbirth) {
        this.yearbirth = yearbirth;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column T_TECHNOLOGICALPROCESS.BIRTHDAY
     *
     * @return the value of T_TECHNOLOGICALPROCESS.BIRTHDAY
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public Date getBirthday() {
        return birthday;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column T_TECHNOLOGICALPROCESS.BIRTHDAY
     *
     * @param birthday the value for T_TECHNOLOGICALPROCESS.BIRTHDAY
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column T_TECHNOLOGICALPROCESS.STATE
     *
     * @return the value of T_TECHNOLOGICALPROCESS.STATE
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public String getState() {
        return state;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column T_TECHNOLOGICALPROCESS.STATE
     *
     * @param state the value for T_TECHNOLOGICALPROCESS.STATE
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public void setState(String state) {
        this.state = state;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column T_TECHNOLOGICALPROCESS.MAIL
     *
     * @return the value of T_TECHNOLOGICALPROCESS.MAIL
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public String getMail() {
        return mail;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column T_TECHNOLOGICALPROCESS.MAIL
     *
     * @param mail the value for T_TECHNOLOGICALPROCESS.MAIL
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public void setMail(String mail) {
        this.mail = mail;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column T_TECHNOLOGICALPROCESS.CREATETIME
     *
     * @return the value of T_TECHNOLOGICALPROCESS.CREATETIME
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public String getCreatetime() {
        return createtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column T_TECHNOLOGICALPROCESS.CREATETIME
     *
     * @param createtime the value for T_TECHNOLOGICALPROCESS.CREATETIME
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column T_TECHNOLOGICALPROCESS.UPDATETIME
     *
     * @return the value of T_TECHNOLOGICALPROCESS.UPDATETIME
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public String getUpdatetime() {
        return updatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column T_TECHNOLOGICALPROCESS.UPDATETIME
     *
     * @param updatetime the value for T_TECHNOLOGICALPROCESS.UPDATETIME
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public void setUpdatetime(String updatetime) {
        this.updatetime = updatetime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column T_TECHNOLOGICALPROCESS.WORKUSERID
     *
     * @return the value of T_TECHNOLOGICALPROCESS.WORKUSERID
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public Integer getWorkuserid() {
        return workuserid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column T_TECHNOLOGICALPROCESS.WORKUSERID
     *
     * @param workuserid the value for T_TECHNOLOGICALPROCESS.WORKUSERID
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public void setWorkuserid(Integer workuserid) {
        this.workuserid = workuserid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column T_TECHNOLOGICALPROCESS.CONTRACTTYPE
     *
     * @return the value of T_TECHNOLOGICALPROCESS.CONTRACTTYPE
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public String getContracttype() {
        return contracttype;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column T_TECHNOLOGICALPROCESS.CONTRACTTYPE
     *
     * @param contracttype the value for T_TECHNOLOGICALPROCESS.CONTRACTTYPE
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public void setContracttype(String contracttype) {
        this.contracttype = contracttype;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column T_TECHNOLOGICALPROCESS.PASSPORTNO
     *
     * @return the value of T_TECHNOLOGICALPROCESS.PASSPORTNO
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public String getPassportno() {
        return passportno;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column T_TECHNOLOGICALPROCESS.PASSPORTNO
     *
     * @param passportno the value for T_TECHNOLOGICALPROCESS.PASSPORTNO
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public void setPassportno(String passportno) {
        this.passportno = passportno;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column T_TECHNOLOGICALPROCESS.PASSPORTNODATE
     *
     * @return the value of T_TECHNOLOGICALPROCESS.PASSPORTNODATE
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public String getPassportnodate() {
        return passportnodate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column T_TECHNOLOGICALPROCESS.PASSPORTNODATE
     *
     * @param passportnodate the value for T_TECHNOLOGICALPROCESS.PASSPORTNODATE
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public void setPassportnodate(String passportnodate) {
        this.passportnodate = passportnodate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column T_TECHNOLOGICALPROCESS.CONTRACTDATE
     *
     * @return the value of T_TECHNOLOGICALPROCESS.CONTRACTDATE
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public String getContractdate() {
        return contractdate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column T_TECHNOLOGICALPROCESS.CONTRACTDATE
     *
     * @param contractdate the value for T_TECHNOLOGICALPROCESS.CONTRACTDATE
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public void setContractdate(String contractdate) {
        this.contractdate = contractdate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column T_TECHNOLOGICALPROCESS.CURRENTLOCATION
     *
     * @return the value of T_TECHNOLOGICALPROCESS.CURRENTLOCATION
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public String getCurrentlocation() {
        return currentlocation;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column T_TECHNOLOGICALPROCESS.CURRENTLOCATION
     *
     * @param currentlocation the value for T_TECHNOLOGICALPROCESS.CURRENTLOCATION
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public void setCurrentlocation(String currentlocation) {
        this.currentlocation = currentlocation;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column T_TECHNOLOGICALPROCESS.WORKFLOWID
     *
     * @return the value of T_TECHNOLOGICALPROCESS.WORKFLOWID
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public String getWorkflowid() {
        return workflowid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column T_TECHNOLOGICALPROCESS.WORKFLOWID
     *
     * @param workflowid the value for T_TECHNOLOGICALPROCESS.WORKFLOWID
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public void setWorkflowid(String workflowid) {
        this.workflowid = workflowid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column T_TECHNOLOGICALPROCESS.RES1
     *
     * @return the value of T_TECHNOLOGICALPROCESS.RES1
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public String getRes1() {
        return res1;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column T_TECHNOLOGICALPROCESS.RES1
     *
     * @param res1 the value for T_TECHNOLOGICALPROCESS.RES1
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public void setRes1(String res1) {
        this.res1 = res1;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column T_TECHNOLOGICALPROCESS.RES2
     *
     * @return the value of T_TECHNOLOGICALPROCESS.RES2
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public String getRes2() {
        return res2;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column T_TECHNOLOGICALPROCESS.RES2
     *
     * @param res2 the value for T_TECHNOLOGICALPROCESS.RES2
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public void setRes2(String res2) {
        this.res2 = res2;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column T_TECHNOLOGICALPROCESS.RES3
     *
     * @return the value of T_TECHNOLOGICALPROCESS.RES3
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public String getRes3() {
        return res3;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column T_TECHNOLOGICALPROCESS.RES3
     *
     * @param res3 the value for T_TECHNOLOGICALPROCESS.RES3
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public void setRes3(String res3) {
        this.res3 = res3;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column T_TECHNOLOGICALPROCESS.RES4
     *
     * @return the value of T_TECHNOLOGICALPROCESS.RES4
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public String getRes4() {
        return res4;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column T_TECHNOLOGICALPROCESS.RES4
     *
     * @param res4 the value for T_TECHNOLOGICALPROCESS.RES4
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public void setRes4(String res4) {
        this.res4 = res4;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column T_TECHNOLOGICALPROCESS.RES5
     *
     * @return the value of T_TECHNOLOGICALPROCESS.RES5
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public String getRes5() {
        return res5;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column T_TECHNOLOGICALPROCESS.RES5
     *
     * @param res5 the value for T_TECHNOLOGICALPROCESS.RES5
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public void setRes5(String res5) {
        this.res5 = res5;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column T_TECHNOLOGICALPROCESS.RES6
     *
     * @return the value of T_TECHNOLOGICALPROCESS.RES6
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public String getRes6() {
        return res6;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column T_TECHNOLOGICALPROCESS.RES6
     *
     * @param res6 the value for T_TECHNOLOGICALPROCESS.RES6
     *
     * @mbggenerated Sat Aug 16 09:53:43 CST 2014
     */
    public void setRes6(String res6) {
        this.res6 = res6;
    }

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getApprover() {
		return approver;
	}

	public void setApprover(String approver) {
		this.approver = approver;
	}

	public String getTaskId() {
		return taskId;
	}

	public void setTaskId(String taskId) {
		this.taskId = taskId;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getDomicile() {
		return domicile;
	}

	public void setDomicile(String domicile) {
		this.domicile = domicile;
	}

	public String getSkype() {
		return skype;
	}

	public void setSkype(String skype) {
		this.skype = skype;
	}

	public String getWechat() {
		return wechat;
	}

	public void setWechat(String wechat) {
		this.wechat = wechat;
	}
    
}