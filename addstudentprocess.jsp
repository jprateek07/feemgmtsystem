<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
int rollno = Integer.parseInt(request.getParameter("rollno"));
String name =request.getParameter("name"); 
String branch=request.getParameter("branch");
Double totalfee= Double.parseDouble(request.getParameter("tfee")); 
Double paidfee=Double.parseDouble(request.getParameter("pfee")); 
Double duefee=Double.parseDouble(request.getParameter("dfee")); 
Double contact =Double.parseDouble(request.getParameter("contact")); 
String year =request.getParameter("year"); 
	
	try
	{
	
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/feemanagementsystem"; 
		Connection con = DriverManager.getConnection(url,"root","root"); //url,username,password
		Statement st = con.createStatement();
		String sql = "insert into details (rollno, name, branch, totalfee,paidfee,duefee,contact,year) values (?, ?, ?, ?,?,?,?,?)";
		PreparedStatement statement = con.prepareStatement(sql);
		statement.setInt(1, rollno);
		statement.setString(2, name);
		statement.setString(3, branch);
		statement.setDouble(4, totalfee);
		statement.setDouble(5, paidfee);
		statement.setDouble(6, duefee);
		statement.setDouble(7, contact);
		statement.setString(8, year);
		
		int rowsInserted = statement.executeUpdate();
	if (rowsInserted > 0) {
		    response.sendRedirect("admindash.jsp");
		    out.println("A new user was inserted successfully!");

		}
		

	}
	catch(Exception e)
	{
		System.out.print(e);
		e.printStackTrace();
	}
%>

</body>
</html>