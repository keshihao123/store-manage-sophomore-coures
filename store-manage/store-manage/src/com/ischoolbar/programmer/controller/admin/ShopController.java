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
 * �ŵ���������
 * @author John
 *
 */
@RequestMapping("/admin/shop")
@Controller
public class ShopController {
	
	@Autowired
	private ShopService shopService;
	
	/**
	 * ��Ӧ�̹����б�ҳ��
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/list",method = RequestMethod.GET)
	public ModelAndView list(ModelAndView model){
		model.setViewName("shop/list");
		return model;
	}
	
	/**
	 * ģ��������ҳ��ȡ�ŵ���Ϣ
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
	 * ����ŵ�
	 * @param shop
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,String> add(Shop shop){
		Map<String,String> ret = new HashMap<String, String>();
		if(shop == null){
			ret.put("type","error");
			ret.put("msg","����д��ȷ���ŵ���Ϣ��");
			return ret;
		}
		if(StringUtils.isEmpty(shop.getSname())){
			ret.put("type","error");
			ret.put("msg","����д�ŵ����ƣ�");
			return ret;
		}
		if(StringUtils.isEmpty(shop.getSphone())){
			ret.put("type","error");
			ret.put("msg","����д�ŵ�绰��");
			return ret;
		}
		if(StringUtils.isEmpty(shop.getAddress())){
			ret.put("type","error");
			ret.put("msg","����д��ϵ��ַ��");
			return ret;
		}
		if(StringUtils.isEmpty(shop.getLal())){
			ret.put("type","error");
			ret.put("msg","��ѡ���ŵ�ص㣡");
			return ret;
		}
		if(shopService.add(shop) <= 0){
			ret.put("type","error");
			ret.put("msg","���ʧ�ܣ�����ϵ����Ա��");
			return ret;
		}
		ret.put("type","success");
		ret.put("msg","��ӳɹ���");
		return ret;
	}
	
	/**
	 * �༭�ŵ���Ϣ
	 * @param shop
	 * @return
	 */
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,String> edit(Shop shop){
		Map<String,String> ret = new HashMap<String, String>();
		if(shop == null){
			ret.put("type","error");
			ret.put("msg","����д��ȷ���ŵ���Ϣ��");
			return ret;
		}
		if(StringUtils.isEmpty(shop.getSname())){
			ret.put("type","error");
			ret.put("msg","����д�ŵ����ƣ�");
			return ret;
		}
		if(StringUtils.isEmpty(shop.getSphone())){
			ret.put("type","error");
			ret.put("msg","����д�ŵ�绰��");
			return ret;
		}
		if(StringUtils.isEmpty(shop.getAddress())){
			ret.put("type","error");
			ret.put("msg","����д��ϵ��ַ��");
			return ret;
		}
		if(StringUtils.isEmpty(shop.getLal())){
			ret.put("type","error");
			ret.put("msg","��ѡ���ŵ�ص㣡");
			return ret;
		}
		if(shopService.edit(shop) <= 0){
			ret.put("type","error");
			ret.put("msg","�༭ʧ�ܣ�����ϵ����Ա��");
			return ret;
		}
		ret.put("type","success");
		ret.put("msg","�޸ĳɹ���");
		return ret;
	}
	
	/**
	 * ɾ��ָ��id���ŵ���Ϣ
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/delete",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,String> delete(Integer id){
		Map<String,String> ret = new HashMap<String, String>();
		if(id == null){
			ret.put("type","error");
			ret.put("msg","��ѡ��Ҫɾ�����ŵ꣡");
			return ret;
		}
		try{
			if(shopService.delete(id) <= 0){
				ret.put("type","error");
				ret.put("msg","ɾ��ʧ�ܣ�����ϵ����Ա��");
				return ret;
			}
		} catch (Exception e) {
			// TODO: handle exception
			ret.put("type","error");
			ret.put("msg","���ŵ��´�����Ʒ��Ϣ��");
			return ret;
		}
		ret.put("type","success");
		ret.put("msg","ɾ���ɹ���");
		return ret;
	}
}
