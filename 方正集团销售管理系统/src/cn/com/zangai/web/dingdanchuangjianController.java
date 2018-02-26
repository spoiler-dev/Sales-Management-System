package cn.com.zangai.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.com.zangai.beans.Customer;

import cn.com.zangai.service.dingdanchuangjianService;
import cn.com.zangai.service.shangpinchukuService;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class dingdanchuangjianController {
	@Autowired
	private dingdanchuangjianService service;
	@Autowired
	private shangpinchukuService service1;	
	
	
    @RequestMapping("/dingdanchuangjian.html")
   
	public String dingdanchuangjianInit(HttpSession session){
    	//初期加载页面时，需要清空之前所购买的所有商品。
    	session.removeAttribute("productList1");
		session.removeAttribute("cus"); 	
    /*	String xulie=service1.getXulie();
    	session.setAttribute("xulie",xulie);*/
	
		return "dingdanchuangjian";
}
   
	
	/* 1、加入Jackson所使用的三个JAR包。
	 * 2、使用jQuery中的异步函数。
	 * 3、在控制器中，把结果转换为JSON格式数据。
	 * 4、在页面中接收JSON格式数据并输出。
	 * 
	 * 对于自动补全功能，需要额外加上一个JS脚本。
	 */
	@RequestMapping(value="/dingdanchuangjianSearchCustomer.html", produces="text/html;charset=UTF-8")
	@ResponseBody
	public String searchCustomerByCustomerName(String customer){

		List<Customer> list = service.selectCustomerbyName(customer);
		// JSON处理
		ObjectMapper mapper = new ObjectMapper();
		String result = "";
		try {
			result = mapper.writeValueAsString(list);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		
		// 返回
		return result;
	}
	
	
}