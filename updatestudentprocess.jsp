<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*" %>
<%@page import="java.sql.*,java.util.*"%>
<% 
if(session.getAttribute("user2")==null)
 {
	 response.sendRedirect("index.html");
 }%>

<%
String id = request.getParameter("id");

%>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/feemanagementsystem";
	Connection con=DriverManager.getConnection(url,"root","root");//url,user,pswd..
	Statement st=con.createStatement();
	out.println("hi");
	ResultSet resultSet=st.executeQuery("select * from details where id="+id);
while(resultSet.next()){
%>


<!DOCTYPE html>
<html>
<body>
<h1>Update data from database in jsp</h1>
<form method="post" action="updateform.jsp">
<input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
<input type="text" name="id" value="<%=resultSet.getString("id") %>">
<br>
rollno<br>
<input type="text" name="rollno" value="<%=resultSet.getString("rollno") %>">
<br>
name:<br>
<input type="text" name="name" value="<%=resultSet.getString("name") %>">
<br>
branch:<br>
<input type="text" name="branch" value="<%=resultSet.getString("branch") %>">
<br>
 
totalfee<br>
<input type="text" name="tfee" value="<%=resultSet.getString("totalfee") %>">
<br>
paidfee<br>
<input type="text" name="pfee" value="<%=resultSet.getString("paidfee") %>">
<br>
duefee<br>
<input type="text" name="dfee" value="<%=resultSet.getString("duefee") %>">
<br>
contact<br>
<input type="text" name="contact" value="<%=resultSet.getString("contact") %>">
<br>
year<br>
<input type="text" name="year" value="<%=resultSet.getString("year") %>">
<br><br>
<input type="submit" value="submit">
</form>
<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>