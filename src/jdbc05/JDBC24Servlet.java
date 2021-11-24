package jdbc05;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
import jdbc04.dao.SupplierDAO;

/**
 * Servlet implementation class JDBC24Servlet
 */
@WebServlet("/jdbc05/s24")
public class JDBC24Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC24Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 사전작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		
		SupplierDAO dao = new SupplierDAO();
		
		List<String> list = null;
		
		// 2. request 처리
		
		// 3. business logic
		try(Connection con = ds.getConnection()){
			list = dao.countryList(con);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		// 4. add attribute
		request.setAttribute("countryList", list);		
		
		// 5. forward / redirect
		String path = "/WEB-INF/view/jdbc05/v24.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 사전작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		
		SupplierDAO dao = new SupplierDAO();
		
		boolean ok = false;
				
		// 2. request 처리
		String supplierName = request.getParameter("supplierName");
		String contactName = request.getParameter("contactName");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String postalCode = request.getParameter("postalCode");
		String phone = request.getParameter("phone");
		String country = request.getParameter("country");
		
		Supplier supplier = new Supplier();
		
		supplier.setSupplierName(supplierName);
		supplier.setContactName(contactName);
		supplier.setAddress(address);
		supplier.setCity(city);
		supplier.setPostalCode(postalCode);
		supplier.setPhone(phone);
		supplier.setCountry(country);
		
		// 3. business logic
		try(Connection con = ds.getConnection()){
			ok = dao.insert(con, supplier);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		// 4. add attribute
		
		// 5. forward / redirect
	
	}

}
