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
@Controller
public class GuKeYueBaoController {
	@Autowired
	private GukedingdanyuebaoService gukedingdanyuebaoservice;
	@RequestMapping("/gukedingdanyuebao.html")
	public String yuebao(){
		return "gukedingdanyuebao";
	}
	/**
	  
	  	该方法是通过List集合将数组通过for循环遍历出来得到顾客的信息
	 	@param customerno表示顾客编号 customerheji表示顾客订单的总和
	  */
	@RequestMapping("/gukedingdantu.html")
	public String dingdanchuangjianInit(Order order , Map map){
	
		List<Order> list = gukedingdanyuebaoservice.selectCustomerhejibydate(order.getOrderdateMonth());
		//创建顾客编号gkbhArr数组
		//通过判断list数组的长度判断该月是否有订单
		if(list.size() == 0){
			map.put("yuebaoFailureinfo", "该月没有订单！！");
			return "gukedingdanyuebao";
		}
		else{
		int[] gkbhArr = new int[list.size()];
		//创建顾客编号gkddsumArr数组
		double[] gkddsumArr = new double[list.size()];
		//将数组通过for循环遍历出来得到数组
		for(int j=0;j<list.size();j++){
			Order sub = list.get(j);
			gkbhArr[j] = sub.getCustomerno();
			gkddsumArr[j] = sub.getCustomerheji();
		}
		//将数组中的数据传到前台页面中
		map.put("gkbhArr", Arrays.toString(gkbhArr));
		map.put("gkddsumArr",Arrays.toString(gkddsumArr));
		return "gukedingdantu";//跳转到顾客月报页面
		}
}
}