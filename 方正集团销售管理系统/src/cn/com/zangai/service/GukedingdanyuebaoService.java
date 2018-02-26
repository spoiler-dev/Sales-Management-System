package cn.com.zangai.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.zangai.beans.Order;
import cn.com.zangai.dao.GukeyuebaoDao;

@Service
public class GukedingdanyuebaoService {
	@Autowired
	private GukeyuebaoDao gukeyuebao;
		public List<Order> selectCustomerhejibydate(Date orderdateMonth){
//			return orderDao.getCustomerByCustomerName(customerName);
			List<Order> list = gukeyuebao.getYuebao(orderdateMonth);
			return list;
	}

}
