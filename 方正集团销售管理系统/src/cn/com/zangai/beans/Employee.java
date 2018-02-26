package cn.com.zangai.beans;

/**
 * 
 * @author dhee
 *
 */
public class Employee {
	private Integer employeeno;//员工编号
	private String employeename;//员工名字
	private String employeepwd;//员工密码
	private Integer departmentno;//部门编号
	public Integer getEmployeeno() {
		return employeeno;
	}
	public void setEmployeeno(Integer employeeno) {
		this.employeeno = employeeno;
	}
	public String getEmployeename() {
		return employeename;
	}
	public void setEmployeename(String employeename) {
		this.employeename = employeename;
	}
	public String getEmployeepwd() {
		return employeepwd;
	}
	public void setEmployeepwd(String employeepwd) {
		this.employeepwd = employeepwd;
	}
	public Integer getDepartmentno() {
		return departmentno;
	}
	public void setDepartmentno(Integer departmentno) {
		this.departmentno = departmentno;
	}
	

}
