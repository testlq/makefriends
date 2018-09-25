package com.yc.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.bean.Dynamic;
import com.yc.biz.DynamicBiz;
import com.yc.dao.DynamicDao;

@Service
public class DynamicBizImpl implements DynamicBiz {

	@Resource
	private DynamicDao dynamicDao;
	
	public List<Dynamic> findMyDynamic(int user_id) {
		return dynamicDao.findMyDynamic(user_id);
	}

	public int addMyDynamic(Dynamic dynamic) {
		return dynamicDao.addMyDynamic(dynamic);
	}

	 
}
