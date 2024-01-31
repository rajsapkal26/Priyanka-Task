package com.org;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/OrderInsert")
public class OrderInsert extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	
		
		LocalDate currentDate = LocalDate.now();
		LocalDate modifiedDate = currentDate.plusDays(7);
		
		HttpSession s=request.getSession();
		s.setAttribute("currentDate", currentDate);
		s.setAttribute("modifiedDate", modifiedDate);
		
		
		response.sendRedirect("order-details.jsp");
	}

}
