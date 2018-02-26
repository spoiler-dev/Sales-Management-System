package cn.com.zangai.beans;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Pleasepay {
	private Integer pleasepayno;//请求付款编号
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date pleasepaydate;//请求付款日期
	private Integer orderno;//订单编号
	private Double orderheji;//订单合计
	
	public Double getOrderheji() {
		return orderheji;
	}
	public void setOrderheji(Double orderheji) {
		this.orderheji = orderheji;
	}
	public Integer getPleasepayno() {
		return pleasepayno;
	}
	public void setPleasepayno(Integer pleasepayno) {
		this.pleasepayno = pleasepayno;
	}
	public Date getPleasepaydate() {
		return pleasepaydate;
	}
	public void setPleasepaydate(Date pleasepaydate) {
		this.pleasepaydate = pleasepaydate;
	}
	public Integer getOrderno() {
		return orderno;
	}
	public void setOrderno(Integer orderno) {
		this.orderno = orderno;
	}
	@Override
	public String toString() {
		return "Pleasepay [pleasepayno=" + pleasepayno + ", pleasepaydate="
				+ pleasepaydate + ", orderno=" + orderno + ", orderheji="
				+ orderheji + "]";
	}
	

}
