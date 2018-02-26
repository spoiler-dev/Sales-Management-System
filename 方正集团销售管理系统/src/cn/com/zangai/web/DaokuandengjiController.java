package cn.com.zangai.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.com.zangai.beans.Order;
import cn.com.zangai.service.DaokuandengjiService;
import cn.com.zangai.service.YingshoukuandengjiService;
@Controller
public class DaokuandengjiController {
	@Autowired
	private DaokuandengjiService daokuandengjiService;
	
	@Autowired
	private YingshoukuandengjiService yingshoukuandengjiService;
	@RequestMapping("/daokuandengji.html")
	public String dingdanchuangjianInit(Map map){
		map.put("daokuandengji", daokuandengjiService.getDaokuandengji());
		return "daokuandengji";
		}
	@RequestMapping("/tijiaobiaodanqing.html")
	public String tiJiaoBiaoDan(int[] qingqiufukuanid,Map map){
		//循环将到款登记得到的请求付款编号执行daokuandengjiService.zuihouyibu。
		for(int i=0;i<qingqiufukuanid.length;i++){
			daokuandengjiService.zuihouyibu(qingqiufukuanid[i]);
		}
	    List<Order> list = yingshoukuandengjiService.getYingshoukuan();
	    map.put("yingshoukuan",list);		
		return "yingshoukuandengji";
		
	}
}
