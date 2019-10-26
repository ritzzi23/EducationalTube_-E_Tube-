<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ page import="java.sql.*"%>
</head>
<body>
	<%
		
		String email = request.getParameter("email");
		String user = request.getParameter("uname");
		String pwd = request.getParameter("pass");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myvideos", "root", "1234");
		Statement st = con.createStatement();
		String query = "insert into data values ('" + email + "','" + user + "','" + pwd + "')";
		int i = st.executeUpdate(query);
		if (i > 0) {
			out.println("Registration successfull!");
			out.println("<a href='Index.jsp'>go to login page</a>");
		} 
	%>

</body>
</html>