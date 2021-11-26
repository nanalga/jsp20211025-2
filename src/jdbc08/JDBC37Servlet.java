package jdbc08;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc08.bean.Bean13;
import jdbc08.dao.mytable13Dao;

/**
 * Servlet implementation class JDBC37Servlet
 */
@WebServlet("/jdbc08/s37")
public class JDBC37Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC37Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/WEB-INF/view/jdbc08/v37.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 사전작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource)application.getAttribute("dbpool");
		
		mytable13Dao dao = new mytable13Dao();
		boolean ok = false;
		
		// 2. request처리
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String birth = request.getParameter("birth");
		
		Bean13 bean = new Bean13();
		bean.setName(name);
		bean.setAge(Integer.parseInt(age));
		bean.setBirth(LocalDate.parse(birth));
		
		// 3. business logic
		try (Connection con = ds.getConnection();
				Statement stmt = con.createStatement();){
			
			ok = dao.insert(con, bean);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
