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
import org.springframework.stereotype.Repository;

import cn.com.zangai.beans.Order;

@Repository
public class YingshoukuandengjiDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	/*
	 * 
	 * 通过请求付款单号是否为空得到应收款
	 * */
	public List<Order> getYingshoukuan(){
		String sql = "SELECT C.DD_NO,DD.CUSTOMER_NO,CUSTOMER_NAME,C.B,PLEASEPAY_NO"
				   + " FROM DD,CUSTOMER,(SELECT GOSHOP.DD_NO,SUM(GOSHOP_NUM*SHOP_PRICE)AS B"
			                      	+ " FROM SHOP,GOSHOP WHERE SHOP.SHOP_NO=GOSHOP.SHOP_NO"
				                    + " GROUP BY GOSHOP.DD_NO) C"
				  + " WHERE DD.DD_NO=C.DD_NO AND CUSTOMER.CUSTOMER_NO=DD.CUSTOMER_NO AND PLEASEPAY_NO IS NOT NULL";
		final List<Order> list = new ArrayList<Order>();
		jdbcTemplate.query(sql,new RowCallbackHandler() {
			
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				// TODO Auto-generated method stub
				final Order order = new Order();
				order.setOrderno(rs.getInt("DD_NO"));
				order.setCustomerno(rs.getInt("CUSTOMER_NO"));
				order.setCustomername(rs.getString("CUSTOMER_NAME"));
				order.setOrderheji(rs.getDouble("B"));
				order.setPleasepayno(rs.getInt("PLEASEPAY_NO"));
				list.add(order);
			}
		});
		return list;
	}
	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		YingshoukuandengjiDao dao = (YingshoukuandengjiDao)context.getBean("yingshoukuandengjiDao");
		java.util.Date today = new java.util.Date();//获取系统当前日期时间
		System.out.println(today);
		 List<Order> list = dao.getYingshoukuan();
		//使用ForEach语句遍历集
		for(Order e : list){
			System.out.println(e.getOrderno()+","+e.getCustomerno() + "," + e.getCustomername()+","+ e.getOrderheji());
		}
		System.out.println("===============================");

		//System.out.println("顾客编号：" + emp.getCustomerno()+"顾客合计总金额：" + emp.getCustomerheji());
		}

}
