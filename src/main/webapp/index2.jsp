<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>CORANO- online jwellery shop</title>
<%@include file="includes/head.jsp" %>
</head>
<body>


<%@ include file="includes/nav.jsp" %>
    
    

    <section>
        <section class="hero">
            <div class="d-flex flex-column justify-content-end align-items-start ps-3 ps-md-4 pb-5 h-100 col-md-8">
                <h1 class="display-2">GRACE DESIGNER JWELLERY</h1>
                <P class="text-center d-none d-sm-block">Rings Ocassion Pieces, Pandora & More</P>
                <div>
                    <a href="#" class="text-decoration-none d-flex justify-content-center align-items-center text-uppercase but">Shop Now</a>
                </div>
            </div>
        </section>
    </section>


    <section class="py-5 back">
        <h1 class="text-uppercase text-center">Our Products</h1>
        <p class="text-center">Add our products to weekly lineup</p>
        
        
        <%
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/task","root","root");
			
			Statement stat=conn.createStatement();
			
			ResultSet rs=stat.executeQuery("select * from products");
			
			%>
			
			
			<div class="container">
				<div class="row">
			
			
			<%
			while(rs.next()) {
				int pid=rs.getInt(1);
				String name=rs.getString(2);
				String img=rs.getString(3);
				int price=rs.getInt(4);
			
				%> 
				<div class="col-6 col-md-4 col-lg-2 my-2 ">
					<figure class="border">
						<img src="<%= rs.getString(3)%>" class="img-fluid"/>
						<figcaption>
							<div class="mt-2">
								
								<p class="text-center m-0"><i class="bi bi-currency-rupee"></i><%=rs.getInt(4) %></p>
								<p class="text-center m-0 small"><%=rs.getString(2)%></p>
							</div>
							<div class="text-center my-2">
								<form action="CartInsert" method="post">
									<input type="hidden" value="<%= + rs.getInt(1) %>" name="pid">
									<button class="btn btn-dark" type="submit">Add to cart</button>
								</form>
							</div>
						</figcaption>
					</figure> 
				</div>
				
				
				<%
			}
			
			%>
			</div>
			</div>
			<%
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
        
    </section>

    


    <section class="py-5 about">
        
        <div class="container">
            <h1 class="text-center col-8 mx-auto pb-3">ORDER JWELLERY WHERE AND WHEN YOU WANT</h1>
            <div class="row">
                <div class="text-center col-10 mx-auto col-sm-6 col-md-4 hose">
                    <p class="fs-1 text-danger m-0"><i class="fa-solid fa-award"></i></p>
                    <h3>Highest quality</h3>
                    <p>Components supplied by CORANO come from well-known manufacturers.</p>
                </div>

                <div class="text-center col-10 mx-auto col-sm-6 col-md-4 hose">
                    <p class="fs-1 text-danger m-0"><i class="fa-solid fa-truck-arrow-right"></i></p>
                    <h3>High availability</h3>
                    <p>Thanks to our large warehouse capacity, we can supply products reliably and at short notice.</p>
                </div>

                <div class="text-center col-10 mx-auto col-sm-6 col-md-4 hose">
                    <p class="fs-1 text-danger m-0"><i class="fa-solid fa-map-location-dot"></i></p>
                    <h3>Supplied from Germany</h3>
                    <p>We deliver all CORANO products to you reliably and on schedule.</p>
                </div>
                
            </div>
        </div>
    </section>


    <section class="container spot">
        <div class="py-5">
            <h1 class="text-center">SPOTLIGHT PRODUCTS</h1>
            <div class="row">
                <div class="position-relative col-12 col-md-6 my-2">
                    <img src="images/illustration/banner1-1.jpg" alt="img" class="img-fluid">
                    <div class="d-flex h-100 w-100 position-absolute top-0 left-0 justify-content-center flex-column align-items-center ms-sm-5 ps-sm-5">
                        <p class="text-uppercase">Beautiful</p>
                        <h3 class="">Wedding
                            Rings</h3>
                    </div>
                </div>
    
                <div class="position-relative col-12 col-md-6 my-2">
                    <img src="images/illustration/banner1-2.jpg" alt="img" class="img-fluid">
                    <div class="d-flex h-100 w-100 position-absolute top-0 left-0 justify-content-center flex-column align-items-center ms-sm-5 ps-sm-5">
                        <p class="text-uppercase">Earings</p>
                        <h3 class="">Tangerine Floral
                            Earring</h3>
                    </div>
                </div>
    
                <div class="position-relative col-12 col-md-6 my-2">
                    <img src="images/illustration/banner1-3.jpg" alt="img" class="img-fluid">
                    <div class="d-flex h-100 w-100 position-absolute top-0 left-0 justify-content-center flex-column align-items-center ms-sm-5 ps-sm-5">
                        <p class="text-uppercase">new arrivals</p>
                        <h3 class="">Pearl
                            Necklaces</h3>
                    </div>
                </div>
    
                <div class="position-relative col-12 col-md-6 my-2">
                    <img src="images/illustration/banner1-4.jpg" alt="img" class="img-fluid">
                    <div class="d-flex h-100 w-100 position-absolute top-0 left-0 justify-content-center flex-column align-items-center ms-sm-5 ps-sm-5">
                        <p class="text-uppercase">new design</p>
                        <h3 class="">Diamond
                            Jewelry</h3>
                    </div>
                </div>
            </div>
            

        </div>
    </section>


        <section class="py-5 px-5 about">

                <h1 class="text-center pb-5">WELCOME TO THE CORANO ONLINE SHOP</h1>
                <div class="d-lg-flex justify-content-between align-items-center">
                    <div class="col-lg-6 h-100">
                        <img src="images/illustration/about-us-banner1.jpg" alt="img" class="img-fluid">
                    </div>
                    <div class="text-center col-lg-5 mt-4 mt-lg-0">
                        <h2>A Digital Agency Focused On Delivering Content And Utility User-Experiences.</h2>
                        <p>Adipiscing lacus ut elementum, nec duis, tempor litora turpis dapibus. Imperdiet cursus odio tortor in elementum. Egestas nunc eleifend feugiat lectus laoreet, vel nunc taciti integer cras. Hac pede dis, praesent nibh ac dui mauris sit. Pellentesque mi, facilisi mauris, elit sociis leo sodales accumsan. Iaculis ac fringilla torquent lorem consectetuer, sociosqu phasellus risus urna aliquam, ornare.</p>
                        <!-- <img src="images/illustration/about-us-signature.png" alt="img"> -->
                    </div>
                </div>
        </section>

	<%@include file="includes/footer.jsp" %>
    
        

	<%@include file="includes/foot.jsp" %>
    
</body>
</html>