package cn.com.zangai.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;

import cn.com.zangai.beans.Order;

@Repository
public class GukeyuebaoDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;//JdbcTemplate模板
	/*
	 * 这个方法是通过订单日期yyyy-MM查询顾客编号、该顾客这个月的订单总金额。
	 * 
	 * */
	public List<Order> getYuebao(Date orderdateMonth){
		String sql = "SELECT CUSTOMER_NO,SUM(BSUM)AS CSUM"
				   + " FROM DD,(SELECT GOSHOP.DD_NO,SUM(GOSHOP_NUM*SHOP_PRICE) BSUM"
				            + " FROM GOSHOP,SHOP"
				            + " WHERE GOSHOP.SHOP_NO=SHOP.SHOP_NO"
				            + " GROUP BY GOSHOP.DD_NO) C"
				   + " WHERE DD.DD_NO=C.DD_NO AND TO_CHAR(DD.DD_DATE,'YYYY-MM')=TO_CHAR(?,'YYYY-MM')"
				   + " GROUP BY DD.CUSTOMER_NO";
	
		final List<Order> list = new ArrayList();
		
		jdbcTemplate.query(sql, new Object[]{orderdateMonth}, new RowCallbackHandler(){
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				 Order emp = new Order();
				emp.setCustomerno(rs.getInt("CUSTOMER_NO"));	
				emp.setCustomerheji(rs.getDouble("CSUM"));
				list.add(emp);
			}
		});
		return list;
	}
	}

