package jdbc04.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jdbc02.bean.Customer;

public class CustomerDAO {

	public List<String> getCountryList(Connection con) {
		List<String> list = new ArrayList<>();
		
		String sql = "SELECT DISTINCT Country FROM Customers ORDER BY Country";
		
		try (
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				){
			while(rs.next()) {
				list.add(rs.getString(1));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	public List<Customer> getCustomerListByCountry(Connection con, String country) {
		
		List<Customer> list = new ArrayList<>();
		
		String sql2 = "SELECT CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country "
				+ "FROM Customers WHERE Country = ?";
		
		try(PreparedStatement pstmt = con.prepareStatement(sql2)) {
			
			pstmt.setString(1, country);
			
			try(ResultSet rs = pstmt.executeQuery()){
				while(rs.next()){
					Customer cs = new Customer();
					
					int i = 1;
					cs.setCustomerID(rs.getInt(i++));
					cs.setCustomerName(rs.getString(i++));
					cs.setContactName(rs.getString(i++));
					cs.setAddress(rs.getNString(i++));
					cs.setCity(rs.getString(i++));
					cs.setPostalCode(rs.getString(i++));
					cs.setCountry(rs.getString(i++));
					
					list.add(cs);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}

	public boolean insert(Connection con, Customer customer) {
		String sql = "INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country) "
				+ "   VALUES (?, ?, ?, ?, ?, ?)";
		
		int rowCount = 0;
		try(PreparedStatement pstmt = con.prepareStatement(sql)){
			
			// ? 채우기
			pstmt.setString(1, customer.getCustomerName());
			pstmt.setString(2, customer.getContactName());
			pstmt.setString(3, customer.getAddress());
			pstmt.setString(4, customer.getCity());
			pstmt.setString(5, customer.getPostalCode());
			pstmt.setString(6, customer.getCountry());
			
			rowCount = pstmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
				
		return rowCount == 1;
	}

	public boolean update(Connection con, Customer customer) {
		String sql = "UPDATE Customers "
				+ " SET "
				+ "  CustomerName = ?, "
				+ "  ContactName = ?,"
				+ "  Address = ?, "
				+ "  City = ?, "
				+ "  PostalCode = ?,"
				+ "  Country = ? "
				+ " WHERE "
				+ "  CustomerID = ? ";
		
		int rowCount = 0;
		
		try(PreparedStatement pstmt = con.prepareStatement(sql)){
			int i = 1;
			pstmt.setString(i++, customer.getCustomerName());
			pstmt.setString(i++, customer.getContactName());
			pstmt.setString(i++, customer.getAddress());
			pstmt.setString(i++, customer.getCity());
			pstmt.setString(i++, customer.getPostalCode());
			pstmt.setString(i++, customer.getCountry());
			pstmt.setInt(i++, customer.getCustomerID());
			
			rowCount = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rowCount == 1;
	}

}
