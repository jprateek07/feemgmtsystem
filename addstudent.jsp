<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
 }%>
<div class="admintitle" align="center">
    <a href="admindash.php" style="float: left; margin-right:30px; color:#fff; font-size: 20px;">back to dashboard</a>  
    <h4><a href="logout.php" style="float: right; margin-right:30px; color:#fff; font-size:30px;">logout</a></h4>
    <h1 style="font-size:50px;">welcome to admin dashboard</h1>
</div>
<form action="addstudentprocess.jsp" method="post" >
    <table align="center" border="1"style="width: 70%; margin-top: 40px;">
        <tr>
            <td>roll no.</td>
            <td><input type="text" name="rollno" required></td>
        </tr>
          <tr>
            <td>full name</td>
            <td><input type="text" name="name" required></td>
        </tr>
         <tr>
            <td> branch</td>
            <td><input type="text" name="branch" required></td>
        </tr>
         <tr>
            <td> total fee</td>
            <td><input type="text" name="tfee" required></td>
        </tr>
         <tr>
            <td> paid fee</td>
            <td><input type="text" name="pfee"  required></td>
        </tr>
         <tr>
            <td>due fee</td>
            <td><input type="text" name="dfee" required></td>
        </tr>
        <tr>
            <td>contact</td>
            <td><input type="text" name="contact" required></td>
        </tr>
        <tr>
            <td>year</td>
            <td><input type="text" name="year" required></td>
        </tr>
          <tr>
              <td align="center" colspan="2"><input type="submit" name="submit" value="submit"  required></td>
        </tr>
       
    </table>
</form>


</body>
</html>