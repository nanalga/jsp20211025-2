package servlet07;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class S05addServlet
 */
@WebServlet("/servlet07/07add")
public class S05AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S05AddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/WEB-INF/view/servlet07/s02add.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		List<String> list = (List<String>)session.getAttribute("todoList");
		
		if (list == null) {
			list = new ArrayList<>();
			session.setAttribute("todoList", list);
		}
		
		String todo = request.getParameter("todo");
		todo = todo == null ? "" : todo;
		
		if(! todo.isEmpty()) {
			list.add(todo);
		}
		
		String path = request.getContextPath()+"/servlet07/list";
		response.sendRedirect(path);
	}

}
