package com.zh.web.service.impl;

import java.util.Iterator;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.mchange.v2.log.LogUtils;
import com.opensymphony.xwork2.util.logging.LoggerUtils;
import com.zh.core.model.IDataObject;
import com.zh.core.model.Pager;
import com.zh.core.util.LoggerUtil;
import com.zh.web.action.RecruitmentAction;
import com.zh.web.dao.CertificatesDao;
import com.zh.web.model.bean.Certificates;
import com.zh.web.service.CertificatesService;

@Component("certificatesService")
public class CertificatesServiceImpl implements CertificatesService {

	@Autowired
	private CertificatesDao certificatesDao;

	private static Logger LOGGER = LoggerFactory
			.getLogger(CertificatesService.class);

	@Override
	public Certificates query(Certificates certificates) {
		// TODO Auto-generated method stub
		return certificatesDao.query(certificates);
	}

	@Override
	public void update(Certificates certificates) {
		// TODO Auto-generated method stub
		certificatesDao.update(certificates);
	}

	@Override
	public List<Certificates> queryList(Certificates certificates) {
		// TODO Auto-generated method stub
		return certificatesDao.queryList(certificates);
	}

	@Override
	public List<Certificates> queryList(Certificates certificates, Pager page) {
		// TODO Auto-generated method stub
		return certificatesDao.queryPageList(certificates, page);
	}

	@Override
	public Integer count(Certificates certificates) {
		// TODO Auto-generated method stub
		return certificatesDao.insert(certificates);
	}

	@Override
	public void delete(Certificates certificates) {
		// TODO Auto-generated method stub
		certificatesDao.delete(certificates);
	}

	@Override
	public void insert(Certificates certificates) {
		// TODO Auto-generated method stub
		certificatesDao.insert(certificates);
	}

	public CertificatesDao getCertificatesDao() {
		return certificatesDao;
	}

	public void setCertificatesDao(CertificatesDao certificatesDao) {
		this.certificatesDao = certificatesDao;
	}

	@Override
	public void insertList(List<IDataObject> certificatesList) {
		// TODO Auto-generated method stub
		if (null == certificatesList) {
			LoggerUtil.error(LOGGER,
					"ERROR : insert List Certificates is null!");
		}
		for (Iterator iterator = certificatesList.iterator(); iterator
				.hasNext();) {
			Certificates certificates = (Certificates) iterator.next();
			Integer id = certificates.getId();
			if (null != id && id > 0) {
				this.update(certificates);
			} else {
				this.insert(certificates);
			}
		}
	}

}
