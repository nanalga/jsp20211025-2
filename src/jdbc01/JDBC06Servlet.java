package jdbc01;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class JDBC06Servlet
 */
@WebServlet("/jdbc01/s06")
public class JDBC06Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JDBC06Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 0. 사전 작업
		ServletContext application = request.getServletContext();
		DataSource pool = (DataSource) application.getAttribute("dbpool");

		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;

		String lastName = "";
		String firstName = "";

		// 2. request 처리

		// 3.0 비지니스 로직
		String sql = "SELECT LastName, FirstName FROM Employees WHERE EmployeeID=1";

		try {
			// 3.1 connecion 연결
			con = pool.getConnection();
			// 3.2 statement 연결
			stmt = con.createStatement();
			// 3.4 resultSet 연결
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				lastName = rs.getNString(1);
				firstName = rs.getString(2);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 3.5 자원 종료
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}

		// 4. attribute 작업
		request.setAttribute("lastName", lastName);
		request.setAttribute("firstName", firstName);

		// 5. forward / redirect
		String path = "/WEB-INF/view/jdbc01/v06.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
