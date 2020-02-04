package com.ischoolbar.programmer.service.admin;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.entity.admin.Shop;
/**
 * ÃÅµêservice½Ó¿Ú
 * @author John
 *
 */
@Service
public interface ShopService {
	public int edit(Shop shop);
	public int add(Shop shop);
	public List<Shop> findList(Map<String ,Object> queryMap);
	public Integer getTotal(Map<String ,Object> queryMap);
	public int delete(Integer id);
}
