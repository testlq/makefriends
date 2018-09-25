package com.yc.biz;

import java.util.List;

import com.yc.bean.Dynamic;

public interface DynamicBiz {

	public List<Dynamic> findMyDynamic(int user_id);

	public int addMyDynamic(Dynamic dynamic);
	
	 
}
