package cn.com.zangai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.zangai.beans.Department;
import cn.com.zangai.beans.Employee;
import cn.com.zangai.dao.LoginDao;

@Service
public class LoginService {
	@Autowired
	private LoginDao loginDao;
	public List<Department> getAlldepartment(){
		List<Department> list = loginDao.getDepartment();
		return list;
	}
	public Employee getEmployee(Integer employeeno){
		return loginDao.getEmployee(employeeno);
	}

}
