package cn.com.zangai.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;












import cn.com.zangai.beans.Customer;
import cn.com.zangai.beans.Order;
import cn.com.zangai.beans.Q;
import cn.com.zangai.beans.Shop;
import cn.com.zangai.dao.OrderCreateDao;
import cn.com.zangai.service.shangpinchukuService;

@Controller
public class shangpinchukuController {
	@Autowired
	private shangpinchukuService service;
	
	
	@RequestMapping("/shangpinchuku.html")
	public String dingdanchuangjianInit(Map map){
		
		//列出所有订单表中的购买的商品显示在商品出库页
		List<Shop> list = service.getAllGoods();
		map.put("ShopList", list);
		return "shangpinchuku";

}

	
	@RequestMapping(value="/tijiao.html", produces="text/html;charset=UTF-8")
	public String addProduct(int[] test,Shop shop,Order order,HttpSession session,Map map,Q q,int customerno,Customer cus){
	/*String xulie= (String)session.getAttribute("xulie");*/
    //获得订单号序列
				Integer orderno =  service.getXulie();
				order.setOrderno(orderno);	
				map.put("orderno", orderno);
	
	/*根据顾客编号查询顾客名称*/
    Customer customer = service.getCustomername(customerno);
 /*   如果顾客名称和页面上的input框中的顾客名称不同则输出该顾客不存在。*/
	if(cus.getCustomername().equals(customer.getCustomername())){	
	}else{
		map.put("cusname", "该顾客不存在");
		return "dingdanchuangjian";
	}
	
		
	
    //从session中获得员工编号即操作员的编号
     Integer employeeno= (Integer) session.getAttribute("adc");
   //将订单信息和员工号插入到DD表中
      service.insertcustomer(order,employeeno);
     
     /*String xulie=service1.getXulie();
  	session.setAttribute("xulie",xulie);
  	*/

      //插入商品详情和订单号到goshop表
      Integer orderno1 =  service.getXulie();
	  q.setOrderno(orderno);	
      
     List<Q> list=(List<Q>) session.getAttribute("productList1");
     
     for( Q s: list)
     {  
    	 service.insert(s,orderno);
    	 	 
     }
      //更新库存数
     for(Q kucunshu : list){
			service.insertkucunshu(kucunshu);
		}
     
    /* 将购物篮中的商品添加到打印单中*/
     List<Q> list2= (List<Q>)session.getAttribute("productList1");
     List<Q> list3= new ArrayList<Q>();
     	for(Q s:list2){
     		
     		for(int i:test){
     			if(i==Integer.parseInt(s.getShopno())){
     				list3.add(s);
     			}
     		}   		
     	}	
     	session.setAttribute("dayin", list3);
     	
        //计算商品金额合计，
   		//求合计（税前）
   		double sumsBefore = 0.0;
   		for(Q heji : list3){
   			sumsBefore += heji.getGoshopnum() * heji.getShopprice();		
   		}
   		//求消费税
   		double tallage = sumsBefore * 0.05;
   		//求合计（税后）
        double sumsAfter = sumsBefore+tallage;
   		//商品金额合计加上应收款余额大于信用额度，则返回错误信息。
 /* 税前*/	
    map.put("shuihou", sumsAfter);
 /* 税*/
    map.put("shui", tallage);
 /* 税后*/
    map.put("shuiqian",sumsBefore);
     
 	List<Shop> list1 = service.getAllGoods();
	map.put("ShopList", list1);
	
 /*清除session*/
	
	session.removeAttribute("ShopList");
	session.removeAttribute("productList1");

		return "dingdan3";
	}	

	
	
	
	
	
	
}
