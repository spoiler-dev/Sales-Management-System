package cn.com.zangai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.zangai.beans.Customer;
import cn.com.zangai.beans.Shop;
import cn.com.zangai.dao.OrderCreateDao;

@Service
public class dingdanchuangjianService {

		@Autowired
		private OrderCreateDao orderCreateDao;
		
		
		/**
		 * 通过顾客名进行模糊查询，得到顾客集合。
		 * @param customerName
		 * @return
		 */
		public List<Customer> selectCustomerbyName(String customerName){
            //return orderDao.getCustomerByCustomerName(customerName);
			
			List<Customer> list = orderCreateDao.getCustomerByCustomerName(customerName);
			return list;
		}
		
		//根据商品编号查询商品信息
		public Shop getShop(String shopid){
		Shop shop=	orderCreateDao.getshop(shopid);
			return shop;
		}
		 
		
	}

	
	

