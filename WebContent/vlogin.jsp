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
	String pwd = request.getParameter("pass");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myvideos", "root", "1234");
	Statement st = con.createStatement();
	String query ="select * from data where email = '" + email + "' and pass ='"+ pwd +"'";
	System.out.println(query);
	ResultSet rs= st.executeQuery(query);
	if(rs.next()){
		out.println("Entry");
	}else{
		out.println("Invalid password <a href='Index.jsp'>try again</a>");
	}
	

	%>

</body>
</html>