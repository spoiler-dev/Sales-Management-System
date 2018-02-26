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

import cn.com.zangai.beans.Department;
import cn.com.zangai.beans.Order;

@Repository
public class QingqiufukuanDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	/*
	 * 
	 * 通过请求付款编号查询该请求付款单的相关信息
	 * 
	 * */
	public List<Order> getQingqiufukuan(int customerno){
		String sql = "SELECT DD.DD_NO,DD.CUSTOMER_NO,CUSTOMER_NAME,PLEASEPAY_NO,DD_DATE,C.B"
				+ " FROM DD,CUSTOMER,(SELECT GOSHOP.DD_NO,SUM(GOSHOP_NUM*SHOP_PRICE) B"
				                  + " FROM SHOP,GOSHOP"
				                  + " WHERE SHOP.SHOP_NO=GOSHOP.SHOP_NO"
				                  + " GROUP BY GOSHOP.DD_NO) C"
				+ " WHERE DD.DD_NO=C.DD_NO AND CUSTOMER.CUSTOMER_NO=DD.CUSTOMER_NO AND DD.PLEASEPAY_NO=? AND PLEASEPAY_NO IS NOT NULL";
		final Order cus = new Order();
		final List<Order> list = new ArrayList<Order>();
		jdbcTemplate.query(sql, new Object[]{customerno},new RowCallbackHandler() {
			
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				// TODO Auto-generated method stub
				cus.setOrderno(rs.getInt("DD_NO"));
				cus.setCustomerno(rs.getInt("CUSTOMER_NO"));
				cus.setCustomername(rs.getString("CUSTOMER_NAME"));
				cus.setPleasepayno(rs.getInt("PLEASEPAY_NO"));
				cus.setOrderdate(rs.getDate("DD_DATE"));
				cus.setOrderheji(rs.getDouble("B"));
				list.add(cus);
			}
		});
		return list;
	}

}
