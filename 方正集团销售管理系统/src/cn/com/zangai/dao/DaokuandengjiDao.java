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
import cn.com.zangai.beans.Pleasepay;

@Repository
public class DaokuandengjiDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;//接口
	/*
	 * 该方法是得到到款登记所需要的数据
	 */
	public List<Pleasepay> getDaokuandengji(){
		String sql ="SELECT PLEASEPAY.PLEASEPAY_NO,PLEASEPAY.PLEASEPAY_DATE,C.B "
				  + "FROM PLEASEPAY,(SELECT GOSHOP.DD_NO,SUM(GOSHOP_NUM*SHOP_PRICE) B "
		   		                   + "FROM SHOP,GOSHOP "
				                   + "WHERE SHOP.SHOP_NO=GOSHOP.SHOP_NO "
				                   + "GROUP BY GOSHOP.DD_NO) C"
				+ " WHERE PLEASEPAY.DD_NO=C.DD_NO";
		final List<Pleasepay> list = new ArrayList<Pleasepay>();
		jdbcTemplate.query(sql, new RowCallbackHandler() {
			
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				// TODO Auto-generated method stub
				final Pleasepay order = new Pleasepay();
				order.setPleasepayno(rs.getInt("PLEASEPAY_NO"));
				order.setPleasepaydate(rs.getDate("PLEASEPAY_DATE"));
				order.setOrderheji(rs.getDouble("B"));
				list.add(order);
				
			}
		});
		
		return list;
	}
	/*
	 * 
	 * 这两个个方法是登记成功用到的
	 * 
	 * */
	public void deletepleasepay(int pleasepayno){
		String sql = "DELETE FROM PLEASEPAY WHERE PLEASEPAY_NO=?";
		jdbcTemplate.update(sql, new Object[]{pleasepayno});
		
	}
	public void updatedd(int pleasepayno){
		String sql = "UPDATE DD SET PLEASEPAY_NO=NULL WHERE PLEASEPAY_NO=?";
		jdbcTemplate.update(sql, new Object[]{pleasepayno});
	}
	

}
