<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body><% 
 if(session.getAttribute("user2")==null)
 {
	 response.sendRedirect("index.html");
 }
 
%>
<div class="admintitle" align="center">
    
    <h4><a href="logout.jsp" style="float: right; margin-right:30px; color:#fff; font-size:30px;">logout</a></h4>
    <h1 style="font-size:50px;">welcome to accountant dashboard</h1>
</div>

<div class="dashboard">
    <table border="1" style="width:50%;" align="center">
        <tr>
            <td>1.</td><td><a href="addstudent.jsp" style="font-size: 25px;">insert student details</a></td>
        </tr>
        <tr>
            <td>2.</td><td><a href="updatestudent.jsp" style="font-size: 25px;">update student details</a></td>
        </tr>
        <tr>
            <td>3.</td><td><a href="deletestudent.jsp" style="font-size: 25px;">delete student details</a></td>
        </tr>
    </table>
</div>
</body>
</html>