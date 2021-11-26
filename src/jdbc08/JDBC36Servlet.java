package jdbc08;

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

import jdbc08.bean.Bean12;
import jdbc08.dao.mytable12Dao;

/**
 * Servlet implementation class JDBC36Servlet
 */
@WebServlet("/jdbc08/s36")
public class JDBC36Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC36Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0.사전작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource)application.getAttribute("dbpool");
		mytable12Dao dao = new mytable12Dao();
		List<Bean12> list = null;
		
		// 3. business logic
		try(Connection con = ds.getConnection();) {

			list = dao.getList(con);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		// 4. add attribute
		request.setAttribute("list", list);
		
		// 5. forward
		String path = "/WEB-INF/view/jdbc08/v36.jsp";
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
