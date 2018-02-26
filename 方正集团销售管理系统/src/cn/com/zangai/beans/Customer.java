package cn.com.zangai.beans;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
/**
 * 
 * 
 * @author dhee
 * **/
public class Customer {
	private Integer customerno;  //顾客编号
	private String customername;  //顾客名称
	private String customeradd;  // 顾客默认地址
	private Integer customertel;  //顾客电话
	private Integer customercby;  //顾客信用额度
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date orderdate;    //订单日期
	private String ddtxt;      //订单备注
	public String getDdtxt() {
		return ddtxt;
	}
	public void setDdtxt(String ddtxt) {
		this.ddtxt = ddtxt;
	}
	public Date getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}
	public Integer getCustomerno() {
		return customerno;
	}
	public void setCustomerno(Integer customerno) {
		this.customerno = customerno;
	}
	public String getCustomername() {
		return customername;
	}
	public void setCustomername(String customername) {
		this.customername = customername;
	}
	public String getCustomeradd() {
		return customeradd;
	}
	public void setCustomeradd(String customeradd) {
		this.customeradd = customeradd;
	}
	public Integer getCustomertel() {
		return customertel;
	}
	public void setCustomertel(Integer customertel) {
		this.customertel = customertel;
	}
	public Integer getCustomercby() {
		return customercby;
	}
	public void setCustomercby(Integer customercby) {
		this.customercby = customercby;
	}
	
}
