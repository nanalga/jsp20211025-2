package jdbc03;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc02.bean.Customer;

/**
 * Servlet implementation class JDBC18Servlet
 */
@WebServlet("/jdbc03/s18")
public class JDBC18Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC18Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 사전작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource)application.getAttribute("dbpool");
		
		List<Customer> customerList = new ArrayList<>();
		List<String> countryList = new ArrayList<>();
		
		// 2. request 처리
		String country = request.getParameter("country");
		
		// 3. business 로직
		String sql1 = "SELECT DISTINCT Country FROM Customers ORDER BY Country";
		String sql2 = "SELECT CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country "
				+ "FROM Customers WHERE Country = ?";
		
		try (Connection con = ds.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql1);
				) {
			
			while(rs.next()) {
				countryList.add(rs.getString(1));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try (Connection con = ds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql2);
				) {
			pstmt.setString(1, country);
			
			try (ResultSet rs = pstmt.executeQuery()) {
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
					
					customerList.add(cs);
				}
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}		
		
		// 4. set attribute
		request.setAttribute("countryList", countryList);
		request.setAttribute("customers", customerList);
		
		// 5. forward / redirect
		String path = "/WEB-INF/view/jdbc03/v18.jsp";
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
