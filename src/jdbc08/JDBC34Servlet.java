package jdbc08;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.time.LocalDate;
import java.time.LocalDateTime;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class JDBC34Servlet
 */
@WebServlet("/jdbc08/s34")
public class JDBC34Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC34Servlet() {
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
		
		String sql = "INSERT INTO mytable12 (col1, col2, col3, col4, col5, col6, col7) VALUES (?, ?, ?, ?, ?, ?, ?)";
		
		try(Connection con = ds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);){
			
			pstmt.setInt(1, 9999999); // INT
			pstmt.setDouble(2, 3.14); // DOUBLE
			pstmt.setDouble(3, 1234567.1234); // DEC(10, 3)
			pstmt.setString(4, "ABC"); // CHAR
			pstmt.setString(5, "Hello World");	// VARCHAR(255)
			
			java.time.LocalDate date = LocalDate.parse("2021-11-26");
			java.time.LocalDateTime dateTime = LocalDateTime.parse("2021-11-26T09:33:12");
			
			pstmt.setDate(6, java.sql.Date.valueOf(date)); 	// DATE
			pstmt.setTimestamp(7, java.sql.Timestamp.valueOf(dateTime));	// DATETIME
			
			pstmt.executeQuery();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
