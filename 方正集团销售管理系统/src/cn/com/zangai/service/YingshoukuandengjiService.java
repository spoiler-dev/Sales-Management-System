package cn.com.zangai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.zangai.beans.Order;
import cn.com.zangai.dao.YingshoukuandengjiDao;

@Service
public class YingshoukuandengjiService {
	@Autowired
	private YingshoukuandengjiDao yingshoukuandengjiDao;
	public List<Order> getYingshoukuan(){
		return yingshoukuandengjiDao.getYingshoukuan();
	}

}
