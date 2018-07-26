<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<title>Search Example</title>
 <link href="style1.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
</head>
<body>
<% 
if(session.getAttribute("user2")==null)
 {
	 response.sendRedirect("index.html");
 }%>

<div class="admintitle" align="center">
    <a href="admindash.jsp" style="float: left; margin-right:30px; color:#fff; font-size: 20px;">back to dashboard</a>  
    <h4><a href="logout.jsp" style="float: right; margin-right:30px; color:#fff; font-size:30px;">logout</a></h4>
    <h1 style="font-size:50px;">welcome to admin dashboard</h1>
</div>
<form action="updatestudent.jsp" method="post" >
    <table align="center" border="1">
        <tr>
            <td>enter year</td>
            <td><input type="number" name="year"min="1" max="4" required></td>
        </tr>
         <tr>
            <td>enter student name</td>
            <td><input type="text" name="stuname" required></td>
        </tr>
        <tr>
            <td><input type="submit" value="search" name="submit"> 
            </td>
        </tr>
    </table>

    <table align="center" width="80%" border="1" style="margin-top: 10px;">
        <tr style="background-color: #000; color: #fff; ">
        <th>id</th>
        <th>rollno</th>
        <th>name</th>
        <th>branch</th>
        <th>totalfee</th>
		<th>paidfee</th>
		<th>duefee</th>
		<th>contact</th>
		<th>year</th>
    </tr>
<%
try{
Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/feemanagementsystem";
	Connection con=DriverManager.getConnection(url,"root","root");//url,user,pswd..
	Statement st=con.createStatement();
	String name=request.getParameter("stuname");
	String year=request.getParameter("year");
    
    String sql="SELECT * FROM details WHERE year= '"+year+ "' AND name LIKE '%" + name + "%'";
	ResultSet resultSet=st.executeQuery(sql);
	while(resultSet.next()){          
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getInt("rollno") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("branch") %></td>
<td><%=resultSet.getDouble("totalfee") %></td>
<td><%=resultSet.getDouble("paidfee") %></td>
<td><%=resultSet.getDouble("duefee") %></td>
<td><%=resultSet.getDouble("contact") %></td>
<td><%=resultSet.getString("year") %></td>
<td><a href="updatestudentprocess.jsp?id=<%=resultSet.getString("id")%>">update</a></td>
</tr>
<% }%>
</table>
<% }
catch(SQLException e)
{
out.println(e);
} %>
</form>
</body>
</html>