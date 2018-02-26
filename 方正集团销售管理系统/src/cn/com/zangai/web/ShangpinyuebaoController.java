package cn.com.zangai.web;



import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.com.zangai.beans.Order;
import cn.com.zangai.service.GukedingdanyuebaoService;
import cn.com.zangai.service.ShangpindingdanyuebaoService;
@Controller
public class ShangpinyuebaoController {
	@Autowired
	private ShangpindingdanyuebaoService shangpindingdanyuebaoservice;
	@RequestMapping("/shangpindingdanyuebao.html")
	public String yuebao(){
		return "shangpindingdanyuebao";
	}
	/**
	  
	  	该方法是通过List集合将数组通过for循环遍历出来得到上商品的信息
	 	@param shopno表示商品编号 shopheji表示商品订单的总和
	  */
	@RequestMapping("/shangpindingdantu.html")
	public String dingdanchuangjianInit(Order order , Map map){
	
		

		List<Order> list = shangpindingdanyuebaoservice.getshopbydate(order.getOrderdateMonth());
		//创建顾客编号gkbhArr数组
		//通过判断list数组的长度判断该月是否有订单
		if(list.size() == 0){
			map.put("yuebaoFailureinfo", "该月没有订单！！");
			return "shangpindingdanyuebao";
		}
		else{
		int[] spbhArr = new int[list.size()];
		//创建顾客编号gkddsumArr数组
		double[] spddsumArr = new double[list.size()];
		//将数组通过for循环遍历出来得到数组
		for(int j=0;j<list.size();j++){
			Order sub = list.get(j);
			spbhArr[j] = sub.getShopno();
			spddsumArr[j] = sub.getShopheji();
		}
		//将数组中的数据传到前台页面中
		map.put("spbhArr", Arrays.toString(spbhArr));
		map.put("spddsumArr",Arrays.toString(spddsumArr));
		return "shangpindingdantu";//跳转到顾客月报页面
		}
}
}