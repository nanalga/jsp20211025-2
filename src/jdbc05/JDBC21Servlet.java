package jdbc05;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc02.bean.Customer;
import jdbc04.dao.CustomerDAO;

/**
 * Servlet implementation class JDBC21Servlet
 */
@WebServlet("/jdbc05/s21")
public class JDBC21Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC21Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 사전 작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource)application.getAttribute("dbpool");
		CustomerDAO dao = new CustomerDAO();
		boolean ok = false;
				
		// 2. request 처리
		Customer customer = new Customer();
		customer.setCustomerName("Son");
		customer.setContactName("HM");
		customer.setAddress("gangnam");
		customer.setCity("Seoul");
		customer.setPostalCode("99999");
		customer.setCountry("Korea");
		
		// 3. business logic
		try(Connection con = ds.getConnection()){
			ok = dao.insert(con, customer);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 4. add setAttribute
		
		// 5. forward / redirect
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
