<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%
	String name=request.getParameter("name");
    String email = request.getParameter("email");
    String usr = request.getParameter("usr");
	String pwd = request.getParameter("pwd");	
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant_system",
            "root", "Tanmay3#");
    Statement st = con.createStatement();
    //ResultSet rs;
 int i = st.executeUpdate("insert into users values ('"+ email + "','" + pwd + "','"+ usr +"')");
 if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("login.html");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>
	
</body>
</html>