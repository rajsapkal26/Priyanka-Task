<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@200;300;400;500;600;700;800;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <link rel="stylesheet" href="css/style.css">

</head>
<body>
	
	<%
	String user=request.getParameter("mail");
	String pass1=request.getParameter("pass");
	try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/task","root","root");
			
			Statement stat=conn.createStatement();
			
			ResultSet rs=stat.executeQuery("select * from register");
			int cust_id= 0;
			String mail=null;
			String pass=null;
			
			while(rs.next()) {
				cust_id=rs.getInt(1);
				mail=rs.getString(3);
				pass=rs.getString(4);
				
				if(user.equals(mail) && pass1.equals(pass)){
					//out.println("Welcome to your profile");
					response.sendRedirect("index2.jsp");
					
					HttpSession s=request.getSession();
					s.setAttribute("cust_id", cust_id);
				}
				else {
					%>
					<div class="text-center reg">
						<div class="d-flex justify-content-center align-items-center flex-column h-100">
							<h1 class="fst-italic ">Invalid username or password </h1>
							<a href="index.jsp" class="text-decoration-none mate1">Back to home</a>
						</div>
					</div>
		<%		}
			}
			
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		%>	
	
</body>
</html>