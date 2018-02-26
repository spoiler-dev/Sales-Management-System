package cn.com.zangai.web;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.com.zangai.beans.Order;
import cn.com.zangai.beans.Pleasepay;
import cn.com.zangai.service.QingqiufukuanService;

@Controller
public class QingqiufukuanController {
	@Autowired
	private QingqiufukuanService qingqiufukuanService;
	
	
	@RequestMapping("/qingqiufukuan.html")
	public String QingqiufukuanInit(Order cus){
		return "qingqiufukuan";
	}
	
	
	@RequestMapping("/qingqiufukuan1.html")
	public String qingqiufukuan1Init(Order cus,Map map,HttpSession session){
		java.util.Date today = new java.util.Date();//获取系统当前日期时间
		map.put("pleasedate", today);
		map.put("yanshijava", qingqiufukuanService.getQingqiufukuan(cus.getPleasepayno()));
		/*
		 * 通过数据库对请输入请求付款编号控制：
		 * 第一个if是通过异常判断请求付款编号是否在PLEASEPAY表里知道是否请过了
		 * 第二个if是没请过的情况下在DD表里是否存在该编号
		 * 并将数据传到jsp页面上
		 * */
		if(!qingqiufukuanService.selectPleasepay(cus.getPleasepayno())){
			map.put("yanshijava", qingqiufukuanService.getQingqiufukuan(cus.getPleasepayno()));
			List<Order> list = qingqiufukuanService.getQingqiufukuan(cus.getPleasepayno());
			for(Order l: list ){
				l.getCustomerno();
				l.getCustomername();
				l.getPleasepayno();
				map.put("yan1", l);
				session.setAttribute("qingqiufukuan", l);
			}
			
			List<Order> list1 = qingqiufukuanService.getQingqiufukuan(cus.getPleasepayno());
			if(list1.size() == 0){
					map.put("qingqiufukuanFailureinfo", "没有这个编号");
					return "qingqiufukuan";
				}
			else{			
			return "qingqiufukuan1";
				}
		}
		else{
			map.put("meme","已经请求过该编号");
			return "qingqiufukuan";
		}		
		}

	
	@RequestMapping("/qingqiufukuan2.html")
	public String qingqiufukuan2Init(Order order,Map map,Double hejitax,HttpSession session){
		java.util.Date today = new java.util.Date();//获取系统当前日期时间
		map.put("pleasedate", today);//把系统的日期传到jsp页面上
		map.put("qingqiufukuan",session.getAttribute("qingqiufukuan"));//传个session
		double shui = hejitax*0.05;//求税
		double shuihou =hejitax+shui;//税后合计
		map.put("shui",shui);
		map.put("shuihou",shuihou);
		//插入请求付款信息
		qingqiufukuanService.setQingqiufukuan(order);
		return "qingqiufukuan2";
	}
	
}
