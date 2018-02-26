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








import cn.com.zangai.beans.Customer;
import cn.com.zangai.beans.Order;
import cn.com.zangai.beans.Q;
import cn.com.zangai.beans.Shop;

@Repository
public class OrderCreateDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

      //模糊查询
	public List<Customer> getCustomerByCustomerName(String customerName) {
		final List<Customer> list = new ArrayList<Customer>();
		String sql = "SELECT CUSTOMER_NAME,CUSTOMER_ADD,CUSTOMER_TEL,CUSTOMER_NO FROM CUSTOMER WHERE CUSTOMER_NAME LIKE ?";
		jdbcTemplate.query(sql, new Object[] { "%" + customerName + "%" },
				new RowCallbackHandler() {
					@Override
					public void processRow(ResultSet rs) throws SQLException {
						Customer cus = new Customer();

						cus.setCustomername(rs.getString("CUSTOMER_NAME"));
						cus.setCustomeradd(rs.getString("CUSTOMER_ADD"));
						cus.setCustomerno(rs.getInt("CUSTOMER_NO"));
						cus.setCustomertel(rs.getInt("CUSTOMER_TEL"));
						list.add(cus);
					}
				});
		return list;
	}


	
	//根据顾客编号查顾客名
	public Customer getcustomername(int customerno) {

		String sql = "SELECT CUSTOMER_NAME FROM CUSTOMER WHERE CUSTOMER_NO=?";
		final Customer customer = new Customer();
		jdbcTemplate.query(sql, new Object[] {customerno },
				new RowCallbackHandler() {
				

					@Override
					public void processRow(ResultSet rs) throws SQLException {
						customer.setCustomername(rs.getString("CUSTOMER_NAME"));
						
					}
				});		
		return customer;
	}
    //根据商品编号搜索商品信息
	public Shop getshop(String shopid) {

		String sql = "select shop_name,shop_price,shop_unit from shop where shop_no=?";
		final Shop shop = new Shop();
		jdbcTemplate.query(sql, new Object[] { shopid },
				new RowCallbackHandler() {
				

					@Override
					public void processRow(ResultSet rs) throws SQLException {
						shop.setShopname(rs.getString("shop_name"));
						shop.setShopprice(rs.getDouble("shop_price"));
						shop.setShopunit(rs.getString("shop_unit"));
					}
				});
		return shop;
	}

	
	 //商品出库
	public List<Shop> getChuKu(){
		final List<Shop> list = new ArrayList<Shop>();
		String sql = "SELECT DD_NO,GOSHOP.SHOP_NO,SHOP_NAME,GOSHOP_NUM,SHOP_UNIT FROM GOSHOP ,SHOP WHERE GOSHOP.SHOP_NO=SHOP.SHOP_NO";
		jdbcTemplate.query(sql, new RowCallbackHandler(){
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				Shop goods = new Shop();
				goods.setShopno(rs.getInt("SHOP_NO"));
				goods.setOrderno(rs.getInt("DD_NO"));
				goods.setShopname(rs.getString("SHOP_NAME"));
				goods.setGoshopnum(rs.getInt("GOSHOP_NUM"));
				goods.setShopunit(rs.getString("SHOP_UNIT"));
				
				list.add(goods);
			}
		});
		return list;
	}
    //订单号录入
	public Integer getOrderId(){
		String sql = "SELECT LPAD(abc.nextval,5,'0') FROM DUAL";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
    //商品数据录入	
	public int addOrderDetailInfo(Q s,Integer orderno){
		String sql = "INSERT INTO GOSHOP(SHOP_NO,GOSHOP_NUM,DD_NO) VALUES(?,?,?)";
		
		return jdbcTemplate.update(sql , new Object[]{
			
				s.getShopno(),
				s.getGoshopnum(),
				orderno
				/*s.getOrderno()*/
				/*Integer.parseInt(xulie)*/				
		});
	}
     //订单信息录入
	public int addCustomerDetailInfo(Order order,Integer employeeno){
	
		String sql = "INSERT INTO DD(DD_NO,DD_DATE,CUSTOMER_NO,EMPLOYEE_NO,DD_TXT,PLEASEPAY_NO) VALUES(?,?,?,?,?,aa.nextval)";
		
		return jdbcTemplate.update(sql , new Object[]{
				/*Integer.parseInt(xulie),*/
				order.getOrderno(),
				order.getOrderdate(),
				order.getCustomerno(),
				employeeno,
			   /* Integer.parseInt(employeeno),*/
				order.getDdtxt(),
								
		});
	}
	/**
	 * 根据商品编号和销售数量，更改商品表中的商品库存数
	 * @param goods
	 * @return
	 */
	public int updateGoodsInventoryNumber(Q goods){
		String sql = "UPDATE SHOP SET SHOP_STOCKQUANTITY=SHOP_STOCKQUANTITY-? WHERE SHOP_NO=?";
		return jdbcTemplate.update(sql , new Object[]{goods.getGoshopnum(),goods.getShopno()});
	}
	
	
	
}
