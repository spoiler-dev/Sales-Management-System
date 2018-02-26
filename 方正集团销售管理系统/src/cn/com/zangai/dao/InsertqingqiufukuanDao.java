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
import cn.com.zangai.beans.Pleasepay;

@Repository
public class InsertqingqiufukuanDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	/*
	 * 
	 * 在请求付款表里，通过请求付款编号查询订单编号，来判断该请求付款编号是否存在。
	 * 
	 * */
	public Pleasepay selectPleaseno(Integer pleasepayno){
		String sql = "SELECT DD_NO FROM PLEASEPAY WHERE PLEASEPAY_NO=?";
		final Pleasepay pl = new Pleasepay();
		jdbcTemplate.query(sql,new Object[]{pleasepayno},new RowCallbackHandler() {
			
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				// TODO Auto-generated method stub
				
				pl.setOrderno(rs.getInt("DD_NO"));
			}
		});
		return pl;
	}
	/*
	 * 
	 * 生成请求付款单时将请求付款编号、请求付款日期、订单编号插到请求付款表里。
	 * 
	 * */
	public int setQingqiufukuan(Order order){
		
		String sql = "INSERT INTO PLEASEPAY(PLEASEPAY_NO,PLEASEPAY_DATE,DD_NO) VALUES(?,SYSDATE,?) ";
		return  jdbcTemplate.update(sql,new Object[]{order.getPleasepayno(),order.getOrderno()});
		
	}
	

}
