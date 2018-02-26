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
public class ShangpinyuebaoDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	/*
	 * 通过订单日期月yyyy-MM查询该月商品编号和金额总合计
	 * */
	public List<Order> getYuebao(Date orderdateMonth){
		String sql = "SELECT GOSHOP.SHOP_NO,SUM(SHOP_PRICE*GOSHOP_NUM)AS M"
				+ " FROM GOSHOP,SHOP,DD"
				+ " WHERE GOSHOP.SHOP_NO=SHOP.SHOP_NO AND DD.DD_NO=GOSHOP.DD_NO AND TO_CHAR(DD_DATE,'YYYY-MM')=TO_CHAR(?,'YYYY-MM')"
				+ " GROUP BY GOSHOP.SHOP_NO";
	
		final List<Order> list = new ArrayList();
		
		jdbcTemplate.query(sql, new Object[]{orderdateMonth}, new RowCallbackHandler(){
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				 Order emp = new Order();
				emp.setShopno(rs.getInt("SHOP_NO"));	
				emp.setShopheji(rs.getDouble("M"));
				list.add(emp);
			}
		});
		return list;
	}
	
}

