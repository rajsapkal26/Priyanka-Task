package com.org;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Register")
public class Register extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		
		String name=request.getParameter("name");
		String mail=request.getParameter("mail");
		String pass=request.getParameter("pass");
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/task","root","root");
			
			Statement stat=conn.createStatement();
			
			stat.executeUpdate("insert into register(name,mail,pass) values('"+name+"','"+mail+"','"+pass+"')");
			
			//out.println("<h1>Registration Successfull</h1>");
			
			response.sendRedirect("regiSuccess.jsp");
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
