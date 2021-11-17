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
 * Servlet implementation class S08BookModifyServlet
 */
@WebServlet("/servlet09/modify")
public class S08BookModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S08BookModifyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		List<Bean06> list = (List<Bean06>) session.getAttribute("books");
		
		String indexStr = request.getParameter("id");
		int index = Integer.parseInt(indexStr);
		
		Bean06 book = list.get(index);
		
		request.setAttribute("index", index);
		request.setAttribute("book", book);
		
		String path = "/WEB-INF/view/servlet09/modify.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		List<Bean06> list = (List<Bean06>) session.getAttribute("books");
		
		// request.setCharacterEncoding("utf-8");
		
		String indexStr = request.getParameter("index");
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String priceStr = request.getParameter("price");
		String publisher = request.getParameter("publisher");
		String stockStr = request.getParameter("stock");
		
		int index = Integer.parseInt(indexStr);
		int price = Integer.parseInt(priceStr);
		int stock = Integer.parseInt(stockStr);
		
		Bean06 book = list.get(index);
		book.setTitle(title);
		book.setWrite(writer);
		book.setPrice(price);
		book.setPublisher(publisher);
		book.setStock(stock);
		
		String location = request.getContextPath() + "/servlet09/list";
		response.sendRedirect(location);
		
	}

}
