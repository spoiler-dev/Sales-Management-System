package cn.com.zangai.web;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.com.zangai.beans.Customer;
import cn.com.zangai.beans.Q;
import cn.com.zangai.beans.Shop;

import cn.com.zangai.service.dingdan123456Service;
import cn.com.zangai.service.dingdanchuangjianService;

@Controller
public class dingdan123456Controller {
	@Autowired
	private dingdan123456Service service;
	@Autowired
	private dingdanchuangjianService service1;

	@RequestMapping("/dingdan2.html")
	
	
	public String dingdanchuangjianInit(HttpSession session, Customer customer,
			Map map) {		
		//将订单创建页面中的顾客信息存放在session中，跳转回订单页面后再次显示这些信息。
		Customer customer1 = new Customer();
		customer1.setCustomername(customer.getCustomername());
		customer1.setOrderdate(customer.getOrderdate());
		customer1.setCustomerno(customer.getCustomerno());
		customer1.setCustomeradd(customer.getCustomeradd());
		customer1.setDdtxt(customer.getDdtxt());
		customer1.setCustomertel(customer.getCustomertel());
		session.setAttribute("cus", customer1);
		//将商品信息显示在订单2页面
		List<Shop> list = service.getAllGoods();
		map.put("ShopList", list);
		return "dingdan2";

	}

	@RequestMapping("/showProductInfo.html")
	public String showProductInfo(String[] goodsids, HttpSession session, Q q,Map map) {
		int kucun=0;
		
		List<Q> list = new ArrayList<Q>();
		//如果购物篮中存在商品，调用productList1这个session
		if (session.getAttribute("productList1") != null) {
			list = (List<Q>) session.getAttribute("productList1");
		}
		
			
		//根据商品编号查询商品信息
		for (String ids : goodsids) {
			//通过"-"将数组分割开来
			String[] arr = ids.split("-");			
			Shop shop = service1.getShop(arr[0]);
			//获得商品信息
			String shopname = shop.getShopname();
			Double shopprice = shop.getShopprice();
			String shopunit =shop.getShopunit();
			//根据商品编号查询商品内存
			kucun=	service.getCount(Integer.parseInt(arr[0])).getShopkc();
			
			boolean bool = false;
			for (Q p : list) {

                 //如果商品编号等于购物篮中的商品编号，说明该商品在购物篮中存在
				if (p.getShopno().equals(arr[0])) {
                     //如果购买量小于库存
					if((p.getGoshopnum() + Integer.parseInt(arr[1]))<=kucun){
						p.setShopname(shopname);
						p.setShopunit(shopunit);						
						p.setShopprice(shopprice);
						//计算单个商品总计，将购物篮中的价钱进行叠加
						double a=0;
						a=shopprice*(p.getGoshopnum() + Integer.parseInt(arr[1]));
						p.setZongji(a);
					    /*	购物篮中的商品数量和新的购买数量叠加*/
						p.setGoshopnum(p.getGoshopnum() + Integer.parseInt(arr[1]));
						
						bool = true;
						
						/* bool=false->true 不执行下面的方法 */

					}else{
                     //购买量超过库存
						//重新加载数据
						List<Shop> list1 = service.getAllGoods();
						map.put("ShopList", list1);
						//往隐藏表单域里传值
						map.put("kucun", "库存不足！");
						return "dingdan2";
					}
				}
			}
			
			//上面的方法不执行，执行此方法，购物篮中不存在此商品
			if (!bool) {
				//购买数小于库存
				if(Integer.parseInt(arr[1])<=kucun){
					Q shop1 = new Q();
					shop1.setShopno(arr[0]);
					shop1.setShopname(shopname);
					shop1.setShopprice(shopprice);
					shop1.setShopunit(shopunit);
 
					double a=0;
					a=shopprice*(Integer.parseInt(arr[1]));
					shop1.setZongji(a);
					
					shop1.setGoshopnum(Integer.parseInt(arr[1]));
					list.add(shop1);
					
					session.setAttribute("productList1", list);

				}else{
					//购买数超过库存
					//重新加载数据
					List<Shop> list1 = service.getAllGoods();
					map.put("ShopList", list1);
					//往隐藏表单域里传值
					map.put("kucun", "库存不足！");
					return "dingdan2";
				}

			}
		}
	
		return "dingdanchuangjian";
	}
	
	
	//删除购物篮中选中的checkbox的session
	@RequestMapping("/shanchu.html")
	public String deleteSession(HttpSession session, String[] test) {

		List<Q> list1 = new ArrayList<Q>();
		List<Q> list = (List<Q>) session.getAttribute("productList1");
		for (Q q : list) {
			int i = 0;
			
			for (; i < test.length; i++) {
				//如果值相等，则break，i=0，session中无此项
				if (String.valueOf(q.getShopno()).equals(test[i])) {
					break;
				}
			}
			//如果i值大于test.length
			if (i >= test.length) {
				//则向集合列表中添加对象
				list1.add(q);
			}
		}
		session.setAttribute("productList1", list1);
		return "dingdanchuangjian";

	}

}