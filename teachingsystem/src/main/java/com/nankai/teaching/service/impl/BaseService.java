package com.nankai.teaching.service.impl;


import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.nankai.teaching.common.dao.GenericBaseDAO;

import javax.annotation.Resource;

public class BaseService extends SqlSessionDaoSupport{

	@Resource
	private GenericBaseDAO genericBaseDao;

	public GenericBaseDAO getGenericBaseDAO() {
		return genericBaseDao;
	}
}
