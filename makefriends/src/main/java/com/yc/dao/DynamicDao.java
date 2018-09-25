package com.yc.dao;

import java.util.List;

import com.yc.bean.Dynamic;

public interface DynamicDao {
	 	/**
	 	 * 查看我的个人动态
	 	 * @param user_id
	 	 * @return
	 	 */
		public List<Dynamic> findMyDynamic(int user_id);

		/**
		 * 发表我的个人动态
		 * @param dynamic
		 * @return
		 */
		public int addMyDynamic(Dynamic dynamic);
}
