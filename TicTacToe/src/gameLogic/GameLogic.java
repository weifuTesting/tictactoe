package gameLogic;

public class GameLogic {           //2d array for the board
	static int board[][] = new int[][] {{0,0,0},
					 					{0,0,0},  //board[x axis][y axis] 
					 					{0,0,0}}; //0 for empty, 1 for player,2 for opponent
	static int rows = 3;
	static int collumns = 3;
	
	//computer object
    
	public static void main(String[] args) {
		//System.out.println(board[0][1]+" ");
		//System.out.println(CheckBoardCondition());
		//System.out.println(sendUpdate());
		//updateBoard("22");
		

		

	}
	
	public static int CheckBoardCondition(){
		boolean playerWin = false;
		boolean computerWin = false;
		
		
		//horizontal
		for (int i = 0; i < collumns; i++) {
			if ((board[i][0] == 1) && (board[i][1] == 1) && (board[i][2] == 1)) 
				playerWin = true;
			
			if ((board[i][0] == 2) && (board[i][1] == 2) && (board[i][2] == 2)) 
				computerWin = true;								
			//return true;		
		}
		//vertical
		for (int i = 0; i < rows; i++) {
			if ((board[0][i] == 1) && (board[1][i] == 1) && (board[2][i] == 1)) 
				playerWin = true;
			
			if ((board[0][i] == 2) && (board[1][i] == 2) && (board[2][i] == 2)) 
				computerWin = true;								
		}
		
		//diagonal left
		if ((board[0][0] == 1) && (board[1][1] == 1) && (board[2][2] == 1)) 
			playerWin = true;
		
		if ((board[0][0] == 2) && (board[1][1] == 2) && (board[2][2] == 2)) 
			computerWin = true;			
		
		//diagonal right
		if ((board[0][2] == 1) && (board[1][1] == 1) && (board[2][0] == 1)) 
			playerWin = true;
		
		if ((board[0][2] == 2) && (board[1][1] == 2) && (board[2][0] == 2)) 
			computerWin = true;	
		
		if (playerWin == true)
			return 1;
		else if(computerWin == true)
			return 2;
		else 
			return 0;
			
	}
	//This updates the board from coordinates of servlet
	public static void updateBoard(String coordinate) {
		int passedCoord = Integer.parseInt(coordinate);
		
		int xCoordiante = passedCoord % 10;
		int yCoordinate = passedCoord / 10 % 10;
		
		board[xCoordiante][yCoordinate] = 1;
	}
	
	
	//this converts the 2d array into a string to be sent back to the html page
	public static String sendUpdate(){
		String servletString = "";
		for (int i=0; i < rows; i++) {  //convert to string to send back to jsp
			for(int j=0; j < collumns; j++){
				servletString=servletString + board[i][j];
							
			}
		}
		return servletString;
		
	}

}
