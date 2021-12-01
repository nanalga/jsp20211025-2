package jdbc10;

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

import jdbc10.bean.Employee;
import jdbc10.dao.EmployeeDao;

/**
 * Servlet implementation class JDBC40Servlet
 */
@WebServlet("/jdbc10/s40")
public class JDBC40Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC40Servlet() {
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
		List<Employee> list = null;
		EmployeeDao dao = new EmployeeDao();
		
		// 2. request 분석/가공
		String year = request.getParameter("year");
		year = year == null ? "" : year;
		
		String keyword = request.getParameter("keyword");
		keyword = keyword == null ? "" : keyword;
		
		// 3. business logic
		try (Connection con = ds.getConnection();){
			list = dao.getListByNotesKeyword(con, keyword, year);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try (Connection con = ds.getConnection();){
			list = dao.getSelectListByYear(con, year);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 4. add attribute
		request.setAttribute("list", list);
		//request.setAttribute("selectList", list);
		
		// 5. forward 
		String path = "/WEB-INF/view/jdbc10/v40.jsp";
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
