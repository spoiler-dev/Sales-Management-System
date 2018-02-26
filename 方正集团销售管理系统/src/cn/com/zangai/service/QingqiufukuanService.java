package cn.com.zangai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import cn.com.zangai.beans.Order;
import cn.com.zangai.beans.Pleasepay;
import cn.com.zangai.dao.InsertqingqiufukuanDao;
import cn.com.zangai.dao.QingqiufukuanDao;

@Service
public class QingqiufukuanService {
	@Autowired
	private QingqiufukuanDao qingqiufukuanDao;
	@Autowired
	private InsertqingqiufukuanDao insertqingqiufukuanDao;
	
	
	public List<Order> getQingqiufukuan(Integer customerno){
		return qingqiufukuanDao.getQingqiufukuan(customerno);
	}
	
	public int setQingqiufukuan(Order order){
		return insertqingqiufukuanDao.setQingqiufukuan(order);
		
	}
	//判断有这个编号么在DD里面
	public Pleasepay check(Integer pleasepayno){
		return insertqingqiufukuanDao.selectPleaseno(pleasepayno);
	}

	public boolean selectPleasepay(Integer pleasepayno){
		Pleasepay p =insertqingqiufukuanDao.selectPleaseno(pleasepayno);
		//获取异常和当遇到该异常时返回Boolean值
		try{
			int pp= p.getOrderno();
		}catch( Exception e){
			return false;
		}
		return true;
	}

}
