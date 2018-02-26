package cn.com.zangai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import cn.com.zangai.beans.Shop;
import cn.com.zangai.dao.ShopLookDao;;

@Service
public class dingdan123456Service {
	
	@Autowired
	private ShopLookDao ShopLookDao;
	/*所有商品信息显示在页面*/
	public List<Shop> getAllGoods(){
//		return orderDao.getCustomerByCustomerName(customerName);
		
		List<Shop> list = ShopLookDao.getAllGoods();
		return list;
	}
	
	/*根据商品编号查询在库数*/
public  Shop getCount(int goodsid){
	return ShopLookDao.getCount(goodsid);
}
	

}
