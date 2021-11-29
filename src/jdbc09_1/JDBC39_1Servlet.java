package jdbc09_1;

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

import jdbc09_1.bean.ProductDao2;
import jdbc09_1.dto.ProductDto2;


/**
 * Servlet implementation class JDBC39_1Servlet
 */
@WebServlet("/jdbc09_1/s39_1")
public class JDBC39_1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC39_1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 사전 작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		
		ProductDao2 dao = new ProductDao2();
		List<ProductDto2> list = null;
		
		// 2. request작업
		
		// 3. business logic
		try (Connection con = ds.getConnection();){
			list = dao.getList(con);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 4. add attributes
		request.setAttribute("list", list);
		
		// 5. forward / redirect
		String path = "/WEB-INF/view/jdbc09_1/v39_1.jsp";
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
