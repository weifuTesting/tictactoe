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
<%
	String boardCoordinates = (String)request.getAttribute("boardState");
	//System.out.println(boardCoordinates);
	//String CoordArray[];
	
	//if(request.getAttribute("boardstate") != null){
	//					
	//}
%>

<body>
<!-- insert grid with buttons -->
<!-- insert post methods leading to sending button/coordinate pressed to game logic -->
<h1>Welcome to classic game of naughts and crosses</h1>
<table>
  <tr>
    <td>
    <div id=0b>
    <form method="GET" action="GameServlet"> 
    	<input type="hidden" name="coordinate" id="00" value="00" />  <!-- 00 refers to position0,0 -->
    	<input type="submit" value="Select">
    	</form> 
    </div>
    </td>
    <td>
    <div id=3b>
    	<form method="GET" action="GameServlet"> 
    	 <input type="hidden" name="coordinate" id="01" value="01" /> 
    	<input type="submit" value="Select">
    	</form>
    </div>
    </td>
    <td>
    <div id=6b>
        <form method="GET" action="GameServlet"> 
         <input type="hidden" name="coordinate" id="02" value="02" /> 
    	<input type="submit" value="Select">
    	</form>
    </div>
	</td>
  </tr>
  <tr>
    <td>
    <div id=1b>
    	<form method="GET" action="GameServlet"> 
    	 <input type="hidden" name="coordinate" id="10" value="10" /> 
    	<input type="submit" value="Select">
    </form>
    </div>
    </td>
    <td>
    <div id=4b>
        <form method="GET" action="GameServlet"> 
         <input type="hidden" name="coordinate" id="11" value="11" /> 
    	<input type="submit" value="Select">
    	</form>
    </div>
    </td>
    <td>
    <div id=7b>
        <form method="GET" action="GameServlet"> 
         <input type="hidden" name="coordinate" id="12" value="12" /> 
    	<input type="submit" value="Select">
    	</form>
    </div>
    </td>
  </tr>
  <tr>
    <td>
    <div id=2b>
    	<form method="GET" action="GameServlet"> 
    	 <input type="hidden" name="coordinate" id="20" value="20" /> 
    	<input type="submit" value="Select">
    	</form>
    </div>
    </td>
    <td>
    <div id=5b>
    	<form method="GET" action="GameServlet"> 
    	 <input type="hidden" name="coordinate" id="21" value="21" /> 
    	<input type="submit" value="Select">
    </form>
    </div>
    
    </td>
    <td> 
     <div id=8b>   
    	<form method="GET" action="GameServlet"> 
    	 <input type="hidden" name="coordinate" id="22" value="22" /> 
    	<input type="submit" value="Select">
    </form>
    </div>
    </td>
  </tr>
</table>

<script type="text/javascript" >

    	var coord = "<%=boardCoordinates%>";
		var coordArray = coord.split("");
		//document.getElementById("0b").innerText = coordArray[0];
		for ( i=0; i < coordArray.length; i++) {
			if (coordArray[i] == "1"){
				document.getElementById(i+"b").innerText = "X";
			}
			else if(coordArray[i] == "2"){
				document.getElementById(i+"b").innerText = "O";
			}
		}
</script>
<!--  obtain opponents move -->
<!-- Jsp If statement to add cross/circle/fill grid colour if move is valid (and update opponents move) -->
</body>
</html>