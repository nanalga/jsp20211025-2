package jdbc09_1.bean;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jdbc09_1.dto.ProductDto2;

public class ProductDao2 {

	public List<ProductDto2> getList(Connection con) {
		String sql = "SELECT " + 
				"    c.CategoryName, p.ProductName, p.Unit, p.Price " + 
				"FROM " + 
				"    Products p " + 
				"        JOIN " + 
				"    Categories c ON p.CategoryID = c.CategoryID " + 
				"ORDER BY 1 , 2";
		List<ProductDto2> list = new ArrayList<>();
		
		try (Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);){
			
			while(rs.next()) {
				ProductDto2 dto = new ProductDto2();
				
				dto.setCategoryName(rs.getString(1));
				dto.setProductName(rs.getString(2));
				dto.setUnit(rs.getString(3));
				dto.setPrice(rs.getDouble(4));
				
				list.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

}
