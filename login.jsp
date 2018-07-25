<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/feemanagementsystem";
Connection con=DriverManager.getConnection(url,"root","root");//url,user,pswd..
Statement st=con.createStatement();
String user=request.getParameter("uname");
String password=request.getParameter("pass");
String sql="select id from account where user=\""+user+"\" and password=\"" +password+"\"";
ResultSet rs=st.executeQuery(sql);
	    if (rs.next()) {
	    	session.setAttribute("user2",user);
	    	 response.sendRedirect("admindash.jsp");
	    	 }
	    	 else
	    	 {
	    	 out.println("Invalid password try again");
	    	 response.sendRedirect("index.html");

	    	    }
%>
</body>
</html>