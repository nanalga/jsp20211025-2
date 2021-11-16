package servlet05;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class S02RequestServlet
 */
@WebServlet("/servlet05/s02")
public class S02RequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S02RequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String param = request.getParameter("country");
		param = param == null ? "" : param;
		
		List<String> list = new ArrayList<>();
		
		String country = "";
		if(param.equals("미국")) {
			list.add("LA");
			list.add("Boston");
			
			country = "미국";
		} else if(param.equals("한국")) {
			list.add("seoul");
			list.add("jeju");
			
			country = "한국";
		}
		
		request.setAttribute("cities", list);
		request.setAttribute("country", country);
		
		String path = "/WEB-INF/view/servlet05/s02.jsp";
		
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
