package cn.com.zangai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.zangai.beans.Pleasepay;
import cn.com.zangai.dao.DaokuandengjiDao;

@Service
public class DaokuandengjiService {
	@Autowired
	private DaokuandengjiDao daokuandengjiDao;
	public List<Pleasepay> getDaokuandengji(){
		return daokuandengjiDao.getDaokuandengji();
	}
	public void zuihouyibu(int no){
		daokuandengjiDao.deletepleasepay(no);
		daokuandengjiDao.updatedd(no);
	}
}
