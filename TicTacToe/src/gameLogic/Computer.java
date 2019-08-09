package gameLogic;

public class Computer {
	static int rows = 3;
	static int columns = 3;
	static boolean validMove = false;
	
	public static void computerMove(int [][] board) {
		int num1 = (int) (Math.random()*3);
		int num2 = (int) (Math.random()*3);
		
		for (int i=0; i < rows; i++) {  //convert to string to send back to jsp
			for(int j=0; j < columns; j++){
				if(board[i][j] == 0) {
					validMove = true;
				}
			}
		}
		System.out.println(validMove);
		while(board [num1][num2] != 0 && validMove == true){
			num1 = (int) (Math.random()*3);
			num2 = (int) (Math.random()*3);
		}
		if(validMove == false)
			System.out.println("nope");
		else
			System.out.println("test");
			board[num1][num2] = 2;
		
					
	}
	
	//array 0 = empty
	//      1 = player
	//		2 = computer
	
	//
	//randomly picks an empty spot in the array (if it's not empty retry)
	//inserts a 2 into the empty spot

}
