<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page import="java.util.List"%>
 <%@page import="java.util.ArrayList"%>
 
 <%@ page import="com.schlik.golfscoretracker.dao"%>
 <%@ page import="com.schlik.golfscoretracker.Model.Hole"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Hole</title>
<link rel="stylesheet" type="text/css" href="css/main.css" />
<meta charset="utf-8">
</head>
<body>
<%
dao my_dao = dao.INSTANCE;


List<Hole> holes = new ArrayList<Hole>();          
holes = my_dao.listHoles("Ramblewood Country Club");

    
%>
	<div style="width: 100%;">
		<div class="line"></div>
		<div class="topLine">
			<div style="float: left;">
				<img src="images/todo.png" />
			</div>
			<div style="float: left;" class="headline">Holes</div>
			<div style="float: right;"></div>
		</div>
	</div>

	<div style="clear: both;"></div>
	You have a total number of	<%=	holes.size() %>	Holes defined.


	<table id="scorecard">
				<% for (Hole hole : holes ) {%>			
		<tr>
			<td><%=hole.getCourseColor()%></td>
			<td><%=hole.getHoleNumber()%></td>
			<td><%=hole.getBlueTeeDistance()%></td>
			<td><%=hole.getWhiteTeeDistance()%></td>
			<td><%=hole.getRedTeeDistance()%></td>
			<td><%=hole.getParValue()%></td>
			<td><%=hole.getMensHandicap()%></td>
			<td><%=hole.getWomensHandicap()%></td>
		</tr>

		<%}%>
	</table>
<!-- 		<thead> -->
<!-- 			<tr class="row-1"> -->
<!-- 				<th class="column-1"><strong>HOLE</strong></th> -->
<!-- 				<th class="column-2">1</th> -->
<!-- 				<th class="column-3">2</th> -->
<!-- 				<th class="column-4">3</th> -->
<!-- 				<th class="column-5">4</th> -->
<!-- 				<th class="column-6">5</th> -->
<!-- 				<th class="column-7">6</th> -->
<!-- 				<th class="column-8">7</th> -->
<!-- 				<th class="column-9">8</th> -->
<!-- 				<th class="column-10">9</th> -->
<!-- 				<th class="column-11">TOT</th> -->
<!-- 				<th class="column-12">HCP</th> -->
<!-- 				<th class="column-13">NET</th> -->
<!-- 			</tr> -->
<!-- 		</thead> -->
<!-- 		<tbody> -->


<%-- 		   <tr class="row-" <%=hole.getHoleNumber() + 1 %>> --%>
<!-- 	<td class="column-1"><strong>Blue</strong></td> -->
<!-- 	<td class="column-2">76.0/146</td> -->
<!-- 	<td class="column-3">425</td> -->
<!-- 	<td class="column-4">380</td> -->
<!-- 	<td class="column-5">185</td> -->
<!-- 	<td class="column-6">396</td> -->
<!-- 	<td class="column-7">581</td> -->
<!-- 	<td class="column-8">195</td> -->
<!-- 	<td class="column-9">475</td> -->
<!-- 	<td class="column-10">543</td> -->
<!-- 	<td class="column-11">493</td> -->
<!-- 	<td class="column-12">3673</td> -->
<!-- </tr> -->
<!-- </tbody> -->
<!-- </table> -->
		


	<div class="main">

		<div class="headline">Add Hole</div>

		<form action="/update" method="post" accept-charset="utf-8">
			<table>
				<tr>
					<td><label for="summary">Course Color</label></td>
					<td><input type="text" name="color" id="color" size="10" value="Red" /></td>
				</tr>
				<tr>
					<td><label for="holeNum">Hole #</label></td>
					<td><input type="text" name="holeNum" id="holeNum" size="10" value="1"/></td>
				</tr>
				<tr>
					<td><label for="blueDist">Blue Distance</label></td>
					<td><input type="text" name="blueDist" id="blueDist" size="10" value="380" /></td>
				</tr>
				<tr>
					<td><label for="whiteDist">White Distance</label></td>
					<td><input type="text" name="whiteDist" id="whiteDist" size="10" value="375" /></td>
				</tr>
				<tr>
					<td><label for="redDist">Red Distance</label></td>
					<td><input type="text" name="redDist" id="redDist" size="10" value="291" /></td>
				</tr>
				<tr>
					<td><label for="parVal">Par Value</label></td>
					<td><input type="text" name="parVal" id="parVal" size="10" value="4" /></td>
				</tr>
				<tr>
					<td><label for="menHcp">Men's Handicap</label></td>
					<td><input type="text" name="menHcp" id="menHcp" size="10" value="4" /></td>
				</tr>
				<tr>
					<td><label for="womenHcp">Women's Handicap</label></td>
					<td><input type="text" name="womenHcp" id="womenHcp" size="10" value="6" /></td>
				</tr>
				<tr>
					<td colspan="2" align="right"><input type="submit" value="Create" /></td>
				</tr>
			</table>
		</form>
	</div>
		
</body>
</html>