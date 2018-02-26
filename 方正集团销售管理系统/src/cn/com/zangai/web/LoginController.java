package cn.com.zangai.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.com.zangai.beans.Department;
import cn.com.zangai.beans.Employee;
import cn.com.zangai.service.LoginService;


@Controller
public class LoginController {
	@Autowired
	private LoginService loginService;
	@RequestMapping("/index.html")
	public String loginInit(Map map,HttpSession session){
		//清空session
		session.removeAttribute("loginEmployeeInfo");
		//得到部门，并显示在部门下拉框中
		map.put("DepartmentList", loginService.getAlldepartment());
		return"login";
	}
	@RequestMapping("/login.html")
	public String loginInt(Map map,HttpSession session){
		
		session.removeAttribute("loginEmployeeInfo");
		map.put("DepartmentList", loginService.getAlldepartment());
		return"login";
	}

	@RequestMapping("/main1.html")  
	public String loginValidate(Employee employee,Map map,HttpSession session){
		//把登录者编号放到’adc‘session中，操作者的意思
		session.setAttribute("adc",employee.getEmployeeno() );
		//通过员工编号查询得到的密码和部门编号与jsp页面得到对比是否登录成功
		if(employee.getEmployeepwd().equals(loginService.getEmployee(employee.getEmployeeno()).getEmployeepwd())&&employee.getDepartmentno().equals(loginService.getEmployee(employee.getEmployeeno()).getDepartmentno())){
			//获取登录者的相关信息。
			employee.setEmployeename(loginService.getEmployee(employee.getEmployeeno()).getEmployeename());
			//把登录成功的员工信息保存在HttpSession中。
			session.setAttribute("loginEmployeeInfo", employee);
			return "main";
			
		} else {
			//如果员工编号和密码不正确，应该重新获得部门信息，并显示在部门下拉框中
			map.put("DepartmentList", loginService.getAlldepartment());			
			map.put("loginFailureInfo", "员工信息有误，请重新输入！");
			session.removeAttribute("loginEmployeeInfo");
		return "login";
	}		
}
	@RequestMapping("/main.html")  
	public String main(){		
		return "main";
	}
}	
	
