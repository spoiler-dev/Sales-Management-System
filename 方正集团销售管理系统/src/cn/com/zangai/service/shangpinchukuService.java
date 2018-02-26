package cn.com.zangai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;





import cn.com.zangai.beans.Customer;
import cn.com.zangai.beans.Order;
import cn.com.zangai.beans.Q;
import cn.com.zangai.beans.Shop;
import cn.com.zangai.dao.OrderCreateDao;

@Service
public class shangpinchukuService {

	@Autowired
	private OrderCreateDao orderCreateDao;
	
	
	//显示全部商品出库信息
	public List<Shop> getAllGoods(){

		
		List<Shop> list = orderCreateDao.getChuKu();
		
		return list;
	}
	
	  //根据顾客编号查询顾客姓名
			public Customer getCustomername(int customerno){
				Customer customer=	orderCreateDao.getcustomername(customerno);
				
					return customer;
				}
	
	//购物篮商品
	public int insert(Q s,Integer orderno){
		//更新商品主表的库存数量。
			
		return orderCreateDao.addOrderDetailInfo(s,orderno);			
	}
	//获取序列
	public Integer getXulie(){
		Integer xulie=	orderCreateDao.getOrderId();
	return xulie;
	}
	//订单所属顾客信息
	public int insertcustomer(Order order,Integer employeeno){
		return orderCreateDao.addCustomerDetailInfo(order,employeeno);
	}
	//更新在库数
	public int insertkucunshu(Q kucun){
		
		return orderCreateDao.updateGoodsInventoryNumber(kucun);			
	}
	
}
