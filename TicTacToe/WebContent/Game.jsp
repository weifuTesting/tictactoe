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
    <form method="POST" action="GameServlet"> 
    	<input type="hidden" name="coordinate" id="00" value="00" />  <!-- 00 refers to position0,0 -->
    	<input type="submit" value="Select">
    	</form>
    </td>
    <td>
    	<form method="POST" action="GameServlet"> 
    	 <input type="hidden" name="coordinate" id="01" value="01" /> 
    	<input type="submit" value="Select">
    	</form>
    </td>
    <td>
        <form method="POST" action="GameServlet"> 
         <input type="hidden" name="coordinate" id="02" value="02" /> 
    	<input type="submit" value="Select">
    	</form>
	</td>
  </tr>
  <tr>
    <td>
    	<form method="POST" action="GameServlet"> 
    	 <input type="hidden" name="coordinate" id="10" value="10" /> 
    	<input type="submit" value="Select">
    </form>
    </td>
    <td>
        <form method="POST" action="GameServlet"> 
         <input type="hidden" name="coordinate" id="11" value="11" /> 
    	<input type="submit" value="Select">
    	</form>
    </td>
    <td>
        <form method="POST" action="GameServlet"> 
         <input type="hidden" name="coordinate" id="12" value="12" /> 
    	<input type="submit" value="Select">
    	</form>
    </td>
  </tr>
  <tr>
    <td>
    	<form method="POST" action="GameServlet"> 
    	 <input type="hidden" name="coordinate" id="20" value="20" /> 
    	<input type="submit" value="Select">
    	</form>
    </td>
    <td>
    	<form method="POST" action="GameServlet"> 
    	 <input type="hidden" name="coordinate" id="21" value="21" /> 
    	<input type="submit" value="Select">
    </form>
    
    </td>
    <td>    
    	<form method="POST" action="GameServlet"> 
    	 <input type="hidden" name="coordinate" id="22" value="22" /> 
    	<input type="submit" value="Select">
    </form>
    </td>
  </tr>
</table>

<!--  obtain opponents move -->
<!-- Jsp If statement to add cross/circle/fill grid colour if move is valid (and update opponents move) -->
</body>
</html>