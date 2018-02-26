package cn.com.zangai.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.jdbc.core.RowCountCallbackHandler;
import org.springframework.stereotype.Repository;

import cn.com.zangai.beans.Department;
import cn.com.zangai.beans.Employee;

@Repository
public class LoginDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	/*
	 * 
	 * 查询部门表里的数据，编号和名称
	 * 
	 * */
	public List<Department> getDepartment(){
		String sql = "SELECT DEPARTMENT_NO,DEPARTMENT_NAME FROM DEPARTMENT";
		final List<Department> list = new ArrayList<Department>();
		jdbcTemplate.query(sql,new RowCallbackHandler(){

			@Override
			public void processRow(ResultSet rs) throws SQLException {
				// TODO Auto-generated method stub
				Department dep = new Department();
				dep.setDepartmentno(rs.getInt("DEPARTMENT_NO"));
				dep.setDepartmentname(rs.getString("DEPARTMENT_NAME"));
				list.add(dep);
			}
			
		});
		return list;
	}
	/*
	 * 
	 * 通过员工编号查询员工密码、员工名字、部门编号。
	 * 
	 * */
	public Employee getEmployee(Integer employeeno){
		String sql = "SELECT EMPLOYEE_NAME,EMPLOYEE_PWD,DEPARTMENT_NO FROM EMPLOYEE WHERE EMPLOYEE_NO=?";
		final Employee emp = new Employee();
		jdbcTemplate.query(sql, new Object[]{employeeno}, new RowCallbackHandler(){
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				emp.setEmployeename(rs.getString("EMPLOYEE_NAME"));
				emp.setDepartmentno(rs.getInt("DEPARTMENT_NO"));	
				emp.setEmployeepwd(rs.getString("EMPLOYEE_PWD"));
			}
		});
		return emp;
	}
	
}

