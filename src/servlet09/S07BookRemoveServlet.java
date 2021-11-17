package servlet09;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sample03javabean.Bean06;

/**
 * Servlet implementation class S07RemoveServlet
 */
@WebServlet("/servlet09/remove")
public class S07BookRemoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S07BookRemoveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		List<Bean06> list = (List<Bean06>)session.getAttribute("books");
		
		String indexStr = request.getParameter("id");
		int index = Integer.parseInt(indexStr);
		
		list.remove(index);
	
		String location = request.getContextPath() + "/servlet09/list";
		response.sendRedirect(location);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
