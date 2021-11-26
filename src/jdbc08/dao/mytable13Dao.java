package jdbc08.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jdbc08.bean.Bean13;

public class mytable13Dao {

	public boolean insert(Connection con, Bean13 bean) {
		
		String sql = "INSERT INTO mytable13(name, age, birth) VALUES(?, ?, ?)";
		
		try (PreparedStatement pstmt = con.prepareStatement(sql)){

			pstmt.setString(1, bean.getName());
			pstmt.setInt(2, bean.getAge());
			pstmt.setDate(3, Date.valueOf(bean.getBirth()));
			
			return pstmt.executeUpdate() == 1;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
		
	}

	public List<Bean13> getList(Connection con) {
		String sql = "SELECT name, age, birth FROM mytable13";
		List<Bean13> list = new ArrayList<>();
		
		try (Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);){
			
			while(rs.next()) {
				Bean13 bean = new Bean13();
				
				bean.setName(rs.getString("name"));
				bean.setAge(rs.getInt("age"));
				bean.setBirth(rs.getDate("birth").toLocalDate());
				
				list.add(bean);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}

}
