package cn.com.zangai.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.com.zangai.beans.Department;
import cn.com.zangai.beans.Shop;
import cn.com.zangai.service.dingdan123456Service;

@Controller
public class kucunxinxiController {
	@Autowired
	private dingdan123456Service service;
	@RequestMapping("/kucunxinxi.html")
	public String dingdanchuangjianInit(Map map){

		//在库存页中列出商品表中的所有商品相关信息
		List<Shop> list = service.getAllGoods();
		map.put("ShopList", list);

		return "kucunxinxi";

}

}
