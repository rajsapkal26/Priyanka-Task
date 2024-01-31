<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.time.LocalDate" %>
<!DOCTYPE html>
<html>
<head>

<title>Order Details</title>
<%@include file="includes/head.jsp" %>
</head>
<body>
<%@include file="includes/nav.jsp" %>

	

	<%
	
	int total=0;
	
	HttpSession s1=request.getSession();
	String p_id=s1.getAttribute("p_id").toString();
	String cust_id=s1.getAttribute("cust_id").toString();
	
	HttpSession s=request.getSession();
	//String c_id=s.getAttribute("c_id").toString();
	String currentDate=s.getAttribute("currentDate").toString();
	String modifiedDate=s.getAttribute("modifiedDate").toString();
	//LocalDate currentDate = LocalDate.now();
	
	
	try {
		
		
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/task","root","root");
		
		Statement stat=conn.createStatement();
		
		

		
		ResultSet rs=stat.executeQuery("select c_id,p_name,p_img,p_price from cart,products where cart.p_id=products.p_id and cust_id="+cust_id);
		
		
		%>
			<section class="container py-5">
				<h1 class="text-center mb-4 fst-italic text-uppercase" style="color:#30557D;,font-family:'Outfit', sans-serif;">Order Details</h1>
		<%
		
		while(rs.next()) {
			int price=rs.getInt(4);
			total=total+price;
			
			
			//out.println(p_name + p_img + p_price);
			
			%>
			
			<div class="d-flex border-top border-bottom p-3 mb-2 cartp">
				<div class="col-4 col-md-3 col-xl-2">
					<img src="<%=rs.getString(3) %>" class="img-fluid" />
				</div>
				<div class="col-8 mx-3 ">
					<h3 class="m-0 my-2 fst-italic" style="color:#30557D;,font-family:'Outfit', sans-serif;"><%=rs.getString(2) %></h3>
					
					<p class=" fst-italic"><i class="bi bi-currency-rupee"></i><%=rs.getInt(4) %></p>
					<p class="fst-italic">Order Date : <%=currentDate  %></p>
				<p class="fst-italic">Delivery Date : <%=modifiedDate %></p>
	
				</div>
			</div>
			
			<% 
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	
	
	%>
		<div class="">
			<div class="text-center mt-4 d-sm-flex justify-content-between">
				<h4 class="fst-italic  ">Total Amount : <%=total %></h4>
				<span class="bg-danger px-2 py-1">Payment: Cash on Delivery</span>
			</div>
		</div>
			
	
	</section>
	<%@include file="includes/footer.jsp" %>
	
	

<%@include file="includes/foot.jsp" %>
</body>
</html>