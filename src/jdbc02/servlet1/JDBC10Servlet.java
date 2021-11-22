package jdbc02.servlet1;

import java.io.IOException;
import java.sql.Connection;
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

import jdbc02.bean.Supplier;

/**
 * Servlet implementation class JDBC10Servlet
 */
@WebServlet("/jdbc02/s10")
public class JDBC10Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC10Servlet() {
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
		
		List<Supplier> list = new ArrayList<>();
		
		// 2. reuest 응답
		
		// 3. business 로직
		String sql = "SELECT"
				+ " SupplierID, "
				+ " SupplierName, "
				+ " ContactName, "
				+ " Address, "
				+ " City, "
				+ " PostalCode, "
				+ " Country, "
				+ " Phone "
				+ " FROM "
				+ " Suppliers";
		
		try (
				Connection con = ds.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				) {
			
			while(rs.next()) {
				Supplier supplier = new Supplier();
				
				supplier.setSupplierId(rs.getString(1));
				supplier.setSupplierName(rs.getString(2));
				supplier.setContactName(rs.getString(3));
				supplier.setAddress(rs.getString(4));
				supplier.setCity(rs.getString(5));
				supplier.setPostalCode(rs.getString(6));
				supplier.setCountry(rs.getString(7));
				supplier.setPhone(rs.getString(8));
				
				list.add(supplier);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} 
		
		// 4. attribute 생성
		request.setAttribute("supplier", list);
		
		// 5. forward / redirect
		String path = "/WEB-INF/view/jdbc02/v10.jsp";
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
