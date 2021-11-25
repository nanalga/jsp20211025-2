package jdbc06;

import java.io.IOException;
import java.sql.Connection;
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
 * Servlet implementation class JDBC28Servlet
 */
@WebServlet("/jdbc06/s28")
public class JDBC28Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC28Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	/**
	 *
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 사전작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		
		Supplier supplier = new Supplier();
		SupplierDAO dao = new SupplierDAO();
		List<String> countryList = null;
		
		
		// 2. request 요청 처리
		String idStr = request.getParameter("id");
		int supplierId = Integer.parseInt(idStr);
		
		// 3. business logic
		try(Connection con = ds.getConnection()){
			
			supplier = dao.selectById(con, supplierId);
			countryList = dao.countryList(con);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		// 4. add attribute
		request.setAttribute("supplier", supplier);
		request.setAttribute("countryList", countryList);
		
		// 5. forward
		String path = "/WEB-INF/view/jdbc06/v28.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 사전작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource)application.getAttribute("dbpool");
		
		boolean ok = false;
		SupplierDAO dao = new SupplierDAO();
		
		// 2. request처리
		String supplierName = request.getParameter("supplierName");
		String contactName = request.getParameter("conatctName");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String postalCode = request.getParameter("postalCode");
		String country = request.getParameter("country");
		String phone = request.getParameter("phone");
		int supplierId = Integer.parseInt(request.getParameter("supplierId"));
		
		Supplier supplier = new Supplier();
		supplier.setSupplierName(supplierName);
		supplier.setContactName(contactName);
		supplier.setAddress(address);
		supplier.setCity(city);
		supplier.setPostalCode(postalCode);
		supplier.setCountry(country);
		supplier.setPhone(phone);
		supplier.setSupplierId(supplierId);
		
		// 3. business logic
		try(Connection con = ds.getConnection()){
			ok = dao.update(con, supplier);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
