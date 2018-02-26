package cn.com.zangai.beans;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
/**
 * 
 * @author dhee
 *
 */
public class Order {
	private Integer orderno;//订单编号
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date orderdate;//订单日期
	@DateTimeFormat(pattern="yyyy-MM")
	private Date orderdateMonth;//订单日期月
	private Integer customerno;//顾客编号
	private Date orderpayshopday;//订单交货日期
	private Integer employeeno;//员工编号
	private Integer shopno;//商品编号
	private Integer ordergoshopping;//订单
	private String ddtxt;//订单备注
	private Double customerheji;//顾客合计
	private Double shopheji;//商品合计
	private Double orderheji;//订单合计
	private String customername;//顾客名称
	private Integer pleasepayno;//请求付款编号
	public Integer getPleasepayno() {
		return pleasepayno;
	}
	public void setPleasepayno(Integer pleasepayno) {
		this.pleasepayno = pleasepayno;
	}
	public Double getOrderheji() {
		return orderheji;
	}
	public void setOrderheji(Double orderheji) {
		this.orderheji = orderheji;
	}
	public String getCustomername() {
		return customername;
	}
	public void setCustomername(String customername) {
		this.customername = customername;
	}

	public Date getOrderdateMonth() {
		return orderdateMonth;
	}
	public void setOrderdateMonth(Date orderdateMonth) {
		this.orderdateMonth = orderdateMonth;
	}
	public Integer getOrderno() {
		return orderno;
	}
	public void setOrderno(Integer orderno) {
		this.orderno = orderno;
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
	public Date getOrderpayshopday() {
		return orderpayshopday;
	}
	public void setOrderpayshopday(Date orderpayshopday) {
		this.orderpayshopday = orderpayshopday;
	}
	public Integer getEmployeeno() {
		return employeeno;
	}
	public void setEmployeeno(Integer employeeno) {
		this.employeeno = employeeno;
	}
	public Integer getShopno() {
		return shopno;
	}
	public void setShopno(Integer shopno) {
		this.shopno = shopno;
	}
	public Integer getOrdergoshopping() {
		return ordergoshopping;
	}
	public void setOrdergoshopping(Integer ordergoshopping) {
		this.ordergoshopping = ordergoshopping;
	}
	
	public String getDdtxt() {
		return ddtxt;
	}
	public void setDdtxt(String ddtxt) {
		this.ddtxt = ddtxt;
	}
	public Double getCustomerheji() {
		return customerheji;
	}
	public void setCustomerheji(Double customerheji) {
		this.customerheji = customerheji;
	}
	public Double getShopheji() {
		return shopheji;
	}
	public void setShopheji(Double shopheji) {
		this.shopheji = shopheji;
	}
	
	

}
