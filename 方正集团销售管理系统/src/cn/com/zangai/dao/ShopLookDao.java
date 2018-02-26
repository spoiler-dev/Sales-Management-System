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

import cn.com.zangai.beans.Shop;

@Repository
public class ShopLookDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	/**
	 * 获取所有商品的编号、名称、销售单价、在库数
	 * 
	 * @return
	 */
	public List<Shop> getAllGoods() {
		final List<Shop> list = new ArrayList<Shop>();
		String sql = "SELECT SHOP_NO,SHOP_NAME,SHOP_STOCKQUANTITY,SHOP_PRICE,SHOP_UNIT FROM SHOP";
		jdbcTemplate.query(sql, new RowCallbackHandler() {
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				Shop goods = new Shop();
				goods.setShopno(rs.getInt("SHOP_NO"));
				goods.setShopname(rs.getString("SHOP_NAME"));
				goods.setShopkc(rs.getInt("SHOP_STOCKQUANTITY"));
				goods.setShopprice(rs.getDouble("SHOP_PRICE"));
				goods.setShopunit(rs.getString("SHOP_UNIT"));
				list.add(goods);
			}
		});
		return list;
	}

	//根据商品编号查询商品库存数
	public Shop getCount(int goodsid) {
		String sql = "SELECT SHOP_STOCKQUANTITY FROM SHOP WHERE SHOP_NO=?";
		final Shop shop = new Shop();
		jdbcTemplate.query(sql, new Object[] {goodsid}, new RowCallbackHandler() {

			@Override
			public void processRow(ResultSet rs) throws SQLException {
				shop.setShopkc(rs.getInt("SHOP_STOCKQUANTITY"));

			}

		});

		return shop;
	}
}
