package cn.com.zangai.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.zangai.beans.Order;
import cn.com.zangai.dao.ShangpinyuebaoDao;

@Service
public class ShangpindingdanyuebaoService {
	@Autowired
	private ShangpinyuebaoDao shangpinyuebao;
	public List<Order> getshopbydate(Date orderdateMonth){
		return shangpinyuebao.getYuebao(orderdateMonth);
		
	}

}
