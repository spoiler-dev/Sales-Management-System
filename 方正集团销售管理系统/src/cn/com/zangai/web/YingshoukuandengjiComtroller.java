package cn.com.zangai.web;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.com.zangai.beans.Order;
import cn.com.zangai.service.YingshoukuandengjiService;

@Controller
public class YingshoukuandengjiComtroller {
	@Autowired
	private YingshoukuandengjiService yingshoukuandengjiService;
	//得到应收款传到页面上
	@RequestMapping("/yingshoukuandengji.html")
	public String Yingshoukuandengji(Map map){
		List<Order> list = yingshoukuandengjiService.getYingshoukuan();
		map.put("yingshoukuan",list);
		return "yingshoukuandengji";
	}

}
