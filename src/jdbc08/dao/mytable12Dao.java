package jdbc08.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.sun.scenario.effect.impl.prism.PrImage;

import jdbc08.bean.Bean12;

public class mytable12Dao {
	
	public boolean Insert(Connection con, Bean12 bean) {
		String sql = "INSERT INTO mytable12 (col1, col2, col3, col4, col5, col6, col7) "
				+ "VALUE (?, ?, ?, ?, ?, ?, ?)";
		
		try(PreparedStatement pstmt = con.prepareStatement(sql);){
			pstmt.setInt(1, bean.getCol1());
			pstmt.setDouble(2, bean.getCol2());
			pstmt.setDouble(3,  bean.getCol3());
			pstmt.setString(4, bean.getCol4());
			pstmt.setString(5, bean.getCol5());
			pstmt.setDate(6, Date.valueOf(bean.getCol6()));
			pstmt.setTimestamp(7, Timestamp.valueOf(bean.getCol7()));
			
			return pstmt.executeUpdate() == 1;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}

	public List<Bean12> getList(Connection con) {
		List<Bean12> list = new ArrayList<>();
		
		String sql = "SELECT col1, col2, col3, col4, col5, col6, col7 FROM mytable12";
		
		try (Statement stmt = con.createStatement();){
			ResultSet rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				Bean12 bean = new Bean12();
				
				bean.setCol1(rs.getInt("col1"));
				bean.setCol2(rs.getDouble("col2"));
				bean.setCol3(rs.getDouble("col3"));
				bean.setCol4(rs.getString("col4"));
				bean.setCol5(rs.getString("col5"));
				bean.setCol6(rs.getDate("col6").toLocalDate());
				bean.setCol7(rs.getTimestamp("col7").toLocalDateTime());
				
				list.add(bean);
				
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		return list;
	}

}
