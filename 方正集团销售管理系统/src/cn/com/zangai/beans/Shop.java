package cn.com.zangai.beans;

import java.util.List;



public class Shop {
	private Integer shopno;//商品编号
	private String  shopname;//商品名称
	
	private Double shopprice;//商品单价
	
	private Integer shopkc;//商品库存
	private String shopunit;//商品单位
	private Double zongji;//单个商品总计
	private Integer goshopnum;//购买数量
	private Integer orderno;//订单编号
	private Integer employeeno;//员工编号
	private String[] goodsIds;//订单详情所选择的商品编号
	public String[] getGoodsIds() {
		return goodsIds;
	}
	public void setGoodsIds(String[] goodsIds) {
		this.goodsIds = goodsIds;
	}
	public List<Q> getProjectList() {
		return projectList;
	}
	public void setProjectList(List<Q> projectList) {
		this.projectList = projectList;
	}
	private List<Q> projectList;//记录所有购买商品
	public Integer getEmployeeno() {
		return employeeno;
	}
	public void setEmployeeno(Integer employeeno) {
		this.employeeno = employeeno;
	}
	public Integer getOrderno() {
		return orderno;
	}
	public void setOrderno(Integer orderno) {
		this.orderno = orderno;
	}
	public Integer getGoshopnum() {
		return goshopnum;
	}
	public void setGoshopnum(Integer goshopnum) {
		this.goshopnum = goshopnum;
	}
	public Double getZongji() {
		return zongji;
	}
	public void setZongji(Double zongji) {
		this.zongji = zongji;
	}
	public Integer getShopno() {
		return shopno;
	}
	public void setShopno(Integer shopno) {
		this.shopno = shopno;
	}
	public String getShopname() {
		return shopname;
	}
	public void setShopname(String shopname) {
		this.shopname = shopname;
	}
	public Double getShopprice() {
		return shopprice;
	}
	public void setShopprice(Double shopprice) {
		this.shopprice = shopprice;
	}
	public Integer getShopkc() {
		return shopkc;
	}
	public void setShopkc(Integer shopkc) {
		this.shopkc = shopkc;
	}
	public String getShopunit() {
		return shopunit;
	}
	public void setShopunit(String shopunit) {
		this.shopunit = shopunit;
	}
	
}
