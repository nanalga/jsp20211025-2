package jdbc01;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class JDBC02Servlet
 */
@WebServlet("/jdbc01/s02")
public class JDBC02Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC02Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ServletContext application = request.getServletContext();
		
		String sql = "SELECT LastName FROM Employees WHERE EmployeeID = 1"; // 연결들을 가지고 있는 객체
		
		DataSource pool = (DataSource)application.getAttribute("dbpool");
		
		try (
			Connection con = pool.getConnection();	// db와의 연결 정보를 가진 객체
			Statement stmt = con.createStatement();	// 커리실행을 위한 객체
		){
			ResultSet rs = stmt.executeQuery(sql);	// 쿼리 실행 결과 저장한 객체
			
			if(rs.next()) {
				String name = rs.getNString(1);
				System.out.println(name);
				
				request.setAttribute("EmployeesName", name);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		String view = "/WEB-INF/view/jdbc01/v02.jsp";
		request.getRequestDispatcher(view).forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
