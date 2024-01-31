<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Cart Details</title>
<%@include file="includes/head.jsp" %>
</head>
<body>

<%@include file="includes/nav.jsp" %>




	<%
	int total=0;
	
	HttpSession s=request.getSession();
	String cust_id=s.getAttribute("cust_id").toString();
	
	
	
	//String p_id=s.getAttribute("pid").toString();
	
	//out.println(cust_id);
	//out.println(p_id);
	
	try {
		
		
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/task","root","root");
		
		Statement stat=conn.createStatement();
		
		

		
		ResultSet rs=stat.executeQuery("select c_id,p_name,p_img,p_price from cart,products where cart.p_id=products.p_id and cust_id="+cust_id);
		
		
		%>
			<section class="container py-5">
			<div class="">
				<h1 class="text-center mb-4 fst-italic text-uppercase" style="color:#30557D;,font-family:'Outfit', sans-serif;">Cart Details</h1>
				<h5><a href="index2.jsp" class="text-decoration-none text-black"><i class="fa-solid fa-chevron-left mx-2"></i></a> <span>Back</span></h5>
			</div>
		<%
		
		while(rs.next()) {
			int c_id=rs.getInt(1);
			String p_name=rs.getString(2);
			String p_img=rs.getString(3);
			int p_price=rs.getInt(4);
			
			//out.println(p_name + p_img + p_price);
			total=total+rs.getInt(4);
			%>
			
			<div class="d-flex border-top border-bottom p-3 mb-2 cartp">
				<div class="col-4 col-md-3 col-xl-2">
					<img src="<%=rs.getString(3) %>" class="img-fluid" />
				</div>
				<div class="col-8 mx-3 ">
					<h3 class="m-0 my-2 fst-italic" style="color:#30557D;,font-family:'Outfit', sans-serif;"><%=rs.getString(2) %></h3>
					
					<h5 class=" fst-italic"><i class="bi bi-currency-rupee"></i><%=rs.getString(4) %></h5>
					<div class="d-flex">
						<!--
						<form method="post" action="OrderInsert">
							
							<button type="submit" class="btn btn-dark me-2">Buy now</button>
						</form>
						-->
						<a href="delete.jsp?c_id=<%=rs.getInt("c_id") %>"><button type="submit" class="btn btn-danger" >Remove</button></a>
					</div>
				</div>
			</div>
			
			<% 
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	%>
	
	<div class="total mt-2 text-center mt-3">
		<h4 class="fst-italic">Total Amount : <%=total %></h4>
						<form method="post" action="OrderInsert">
							<button type="submit" class="btn btn-dark me-2">Buy now</button>
						</form>
	</div>
	</section>
	
<%@include file="includes/footer.jsp" %>

<%@include file="includes/foot.jsp" %>
</body>
</html>