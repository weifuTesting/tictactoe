package gameLogic;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GameServlet
 */
@WebServlet("/GameServlet")
public class GameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GameServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String coordinate = request.getParameter("coordinate");
		System.out.println(coordinate);
		
		//"Main method"
		//get input from jsp corrosponding to button pressed
		//rune logic on board
		//returns output
		
		//request.setAttribute("username", "Smith");
		//RequestDispatcher rd = sc.getRequestDispatcher("/jsp/mypage.jsp");
		//https://docs.oracle.com/cd/A97329_03/web.902/a95882/basics.htm#1014110
		//page search: Passing Data Between a JSP Page and a Servlet
		//
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
	}

}
