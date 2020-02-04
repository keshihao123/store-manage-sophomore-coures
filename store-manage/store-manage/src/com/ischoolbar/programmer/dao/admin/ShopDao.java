package com.ischoolbar.programmer.dao.admin;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.admin.Shop;

/**
 * √≈µÍdao
 * @author John
 *
 */
@Repository
public interface ShopDao {
	public int edit(Shop shop);
	public int add(Shop shop);
	public List<Shop> findList(Map<String ,Object> queryMap);
	public Integer getTotal(Map<String ,Object> queryMap);
	public int delete(Integer id);
}
