
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/task","root","root");
			
			Statement stat=conn.createStatement();
			
			ResultSet rs=stat.executeQuery("select * from products");
			
			while(rs.next()) {
				%>
				Image - <img src="ImageProcess?id=<%=rs.getString(3)%>"/>
				<h1>Hello world</h1>
				<%
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	%>

</body>
</html>