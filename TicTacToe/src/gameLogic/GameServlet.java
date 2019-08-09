package gameLogic;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
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
	GameLogic board = new GameLogic();
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
		Boolean gameOn = true;
		String coordinate = request.getParameter("coordinate"); //get input from jsp corrosponding to button pressed
		//System.out.println(coordinate);
		board.updateBoard(coordinate);
			
		if (board.CheckBoardCondition()==1) {
			response.sendRedirect("WinScreen.jsp");
			return;
			}
		else if(board.CheckBoardCondition()==2) {
			response.sendRedirect("LoseScreen.jsp");
			return;
		}

		//check if win CheckBoardCondition()
		String boardState = board.sendUpdate();
		//System.out.println(boardState);				
		
		request.setAttribute("boardState", boardState);		
		String page = "/Game.jsp";
		if (gameOn == true) {
			RequestDispatcher req = request.getRequestDispatcher(page);
			req.forward(request, response);
			return;
		} // error occurs when getting a win and redirecting to win page.
		
		//response.sendRedirect("Game.jsp?boardState="+boardState);
		//try this https://stackoverflow.com/questions/26352632/how-to-fix-cannot-call-sendredirect-after-the-response-has-been-committed
		
		//try query string instead
		//if(gameOn == true) {
		//	request.getRequestDispatcher("/Game.jsp").forward(request, response);
		//	return;
		//}
		//https://docs.oracle.com/cd/A97329_03/web.902/a95882/basics.htm#1014110
		//page search: Passing Data Between a JSP Page and a Servlet
		//https://www.programmergate.com/pass-data-servlet-jsp/
		
		//"Main method"
		//run logic on board
		//returns output
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
	}

}
