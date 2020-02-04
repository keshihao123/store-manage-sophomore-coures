package com.ischoolbar.programmer.service.admin.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.admin.ShopDao;
import com.ischoolbar.programmer.entity.admin.Shop;
import com.ischoolbar.programmer.service.admin.ShopService;
/**
 * 门店service实现类
 * @author John
 *
 */
@Service
public class ShopServiceImpl implements ShopService {
	@Autowired
	private ShopDao shopDao;

	@Override
	public int add(Shop shop) {
		// TODO Auto-generated method stub
		return shopDao.add(shop);
	}

	@Override
	public List<Shop> findList(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return shopDao.findList(queryMap);
	}

	@Override
	public Integer getTotal(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return shopDao.getTotal(queryMap);
	}

	@Override
	public int delete(Integer id) {
		// TODO Auto-generated method stub
		return shopDao.delete(id);
	}

	@Override
	public int edit(Shop shop) {
		// TODO Auto-generated method stub
		return shopDao.edit(shop);
	}
}
