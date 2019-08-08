<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tic tac toe / Naughts and Crosses</title>
</head>
<style>
table,tr,td {
	border: 1px solid black;
	padding: 15px;
}
</style>
<body>
<!-- insert grid with buttons -->
<!-- insert post methods leading to sending button/coordinate pressed to game logic -->
<h1>Welcome to classic game of naughts and crosses</h1>
<table>
  <tr>
    <td>
    <form method="post" action="Gamelogic"> 
    	<input type="submit" value="Select">
    	</form>
    </td>
    <td>
    	<form method="post" action="Gamelogic"> 
    	<input type="submit" value="Select">
    	</form>
    </td>
    <td>
        <form method="post" action="Gamelogic"> 
    	<input type="submit" value="Select">
    	</form>
	</td>
  </tr>
  <tr>
    <td>
    	<form method="post" action="Gamelogic"> 
    	<input type="submit" value="Select">
    </form>
    </td>
    <td>
        <form method="post" action="Gamelogic"> 
    	<input type="submit" value="Select">
    	</form>
    </td>
    <td>
        <form method="post" action="Gamelogic"> 
    	<input type="submit" value="Select">
    	</form>
    </td>
  </tr>
  <tr>
    <td>
    	<form method="post" action="Gamelogic"> 
    	<input type="submit" value="Select">
    	</form>
    </td>
    <td>
    	<form method="post" action="Gamelogic"> 
    	<input type="submit" value="Select">
    </form>
    
    </td>
    <td>    
    	<form method="post" action="Gamelogic"> 
    	<input type="submit" value="Select">
    </form>
    </td>
  </tr>
</table>

<!--  obtain opponents move -->
<!-- Jsp If statement to add cross/circle/fill grid colour if move is valid (and update opponents move) -->
</body>
</html>