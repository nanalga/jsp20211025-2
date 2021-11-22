package jdbc01;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class JDBC04Servlet
 */
@WebServlet("/jdbc01/s04")
public class JDBC04Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC04Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 사전 준비
		ServletContext application = request.getServletContext();
		DataSource pool = (DataSource)application.getAttribute("dbpool");
		
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		List<String> names = new ArrayList<>(); 
		
		// 2. 비지니스 로직(주로 DB작업)
		String sql = "SELECT LastName FROM Employees";
		
		try {
			// 3.1 커넥션 열기
			con = pool.getConnection();
			// 3.2 statement 열기
			stmt = con.createStatement();
			// 3.3 쿼리실행 (ResultSet 얻기)
			rs = stmt.executeQuery(sql);
			// 3.4 resultSet 처리
			while(rs.next()) {
				names.add(rs.getNString(1));
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			//3.5 자원 닫기
			if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		// 4. add attribute 추가
		request.setAttribute("names", names);
		
		// 5. forward or redirect
		String path = "/WEB-INF/view/jdbc01/v04.jsp";
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
