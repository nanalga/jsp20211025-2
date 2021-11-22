package jdbc02.servlet1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc02.bean.Customer;

/**
 * Servlet implementation class JDBC05Servlet
 */
@WebServlet("/jdbc01/s07")
public class JDBC07Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC07Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 사전 작업
		ServletContext application = request.getServletContext();
		DataSource pool = (DataSource) application.getAttribute("dbpool");
		
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		Customer bean = new Customer();
		
		// 2. request 분석 / 가공
		
		
		// 3. business logic
		String sql = "SELECT CustomerName, ContactName, Address, City FROM Customers WHERE CustomerID = 1";
		
		try {
			// 1. connect얻고
			con = pool.getConnection();
			// 2. statement 얻고
			stmt = con.createStatement();
			// 3. resultSet 얻고
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int i = 1;
				
				bean.setCustomerName(rs.getNString(i++));
				bean.setContactName(rs.getNString(i++));
				bean.setAddress(rs.getString(i++));
				bean.setCity(rs.getNString(i++));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			// 4. 자원 닫기
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		// 4. add attribute
		request.setAttribute("customer", bean);
		
		// 5. forward / redirect
		String path = "/WEB-INF/view/jdbc02/v07.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
