package com.ischoolbar.programmer.controller.admin;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ischoolbar.programmer.entity.admin.Shop;
import com.ischoolbar.programmer.page.admin.Page;
import com.ischoolbar.programmer.service.admin.ShopService;

/**
 * 门店管理控制器
 * @author John
 *
 */
@RequestMapping("/admin/shop")
@Controller
public class ShopController {
	
	@Autowired
	private ShopService shopService;
	
	/**
	 * 供应商管理列表页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/list",method = RequestMethod.GET)
	public ModelAndView list(ModelAndView model){
		model.setViewName("shop/list");
		return model;
	}
	
	/**
	 * 模糊搜索分页获取门店信息
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> getList(
			@RequestParam(name = "sname",defaultValue="") String sname,Page page
			){
		Map<String, Object> ret = new HashMap<String,Object>();
		Map<String, Object> queryMap = new HashMap<String,Object>();
		queryMap.put("sname", sname);
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		ret.put("total", shopService.getTotal(queryMap));
		ret.put("rows", shopService.findList(queryMap));
		return ret;
	}
	
	
	
	/**
	 * 添加门店
	 * @param shop
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,String> add(Shop shop){
		Map<String,String> ret = new HashMap<String, String>();
		if(shop == null){
			ret.put("type","error");
			ret.put("msg","请填写正确的门店信息！");
			return ret;
		}
		if(StringUtils.isEmpty(shop.getSname())){
			ret.put("type","error");
			ret.put("msg","请填写门店名称！");
			return ret;
		}
		if(StringUtils.isEmpty(shop.getSphone())){
			ret.put("type","error");
			ret.put("msg","请填写门店电话！");
			return ret;
		}
		if(StringUtils.isEmpty(shop.getAddress())){
			ret.put("type","error");
			ret.put("msg","请填写联系地址！");
			return ret;
		}
		if(StringUtils.isEmpty(shop.getLal())){
			ret.put("type","error");
			ret.put("msg","请选择门店地点！");
			return ret;
		}
		if(shopService.add(shop) <= 0){
			ret.put("type","error");
			ret.put("msg","添加失败，请联系管理员！");
			return ret;
		}
		ret.put("type","success");
		ret.put("msg","添加成功！");
		return ret;
	}
	
	/**
	 * 编辑门店信息
	 * @param shop
	 * @return
	 */
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,String> edit(Shop shop){
		Map<String,String> ret = new HashMap<String, String>();
		if(shop == null){
			ret.put("type","error");
			ret.put("msg","请填写正确的门店信息！");
			return ret;
		}
		if(StringUtils.isEmpty(shop.getSname())){
			ret.put("type","error");
			ret.put("msg","请填写门店名称！");
			return ret;
		}
		if(StringUtils.isEmpty(shop.getSphone())){
			ret.put("type","error");
			ret.put("msg","请填写门店电话！");
			return ret;
		}
		if(StringUtils.isEmpty(shop.getAddress())){
			ret.put("type","error");
			ret.put("msg","请填写联系地址！");
			return ret;
		}
		if(StringUtils.isEmpty(shop.getLal())){
			ret.put("type","error");
			ret.put("msg","请选择门店地点！");
			return ret;
		}
		if(shopService.edit(shop) <= 0){
			ret.put("type","error");
			ret.put("msg","编辑失败，请联系管理员！");
			return ret;
		}
		ret.put("type","success");
		ret.put("msg","修改成功！");
		return ret;
	}
	
	/**
	 * 删除指定id的门店信息
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/delete",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,String> delete(Integer id){
		Map<String,String> ret = new HashMap<String, String>();
		if(id == null){
			ret.put("type","error");
			ret.put("msg","请选择要删除的门店！");
			return ret;
		}
		try{
			if(shopService.delete(id) <= 0){
				ret.put("type","error");
				ret.put("msg","删除失败，请联系管理员！");
				return ret;
			}
		} catch (Exception e) {
			// TODO: handle exception
			ret.put("type","error");
			ret.put("msg","该门店下存在商品信息！");
			return ret;
		}
		ret.put("type","success");
		ret.put("msg","删除成功！");
		return ret;
	}
}
