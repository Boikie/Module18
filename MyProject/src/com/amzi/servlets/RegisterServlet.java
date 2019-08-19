package com.amzi.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.SecureRandom;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserDataServlet
 */
public class RegisterServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String FullName = request.getParameter("FullName");
		String Username = request.getParameter("Username");
		String Age = request.getParameter("Age");
		String MobileNumber = request.getParameter("MobileNumber");
		String City = request.getParameter("City");
		String Address = request.getParameter("Address");
		String Password = request.getParameter("Password");

		// validate given input
		// The parameter must not be empty and the length of the MobileNumber must be 10digits
		if (FullName.isEmpty() || Username.isEmpty() || Age.isEmpty() || MobileNumber.isEmpty() || MobileNumber.length()!=10 || City.isEmpty()
				|| Address.isEmpty() || Password.isEmpty()) {
			RequestDispatcher rd = request.getRequestDispatcher("registration.jsp");
			out.println("<font color=red>Please fill all the fields</font>");
			rd.include(request, response);
		} else {
			// inserting data into mysql database
			try {
				Class.forName("com.mysql.jdbc.Driver");
				// loads mysql driver

				SecureRandom randomKey = new SecureRandom();
				SecureRandom randomSeed = new SecureRandom();
				
				int generated = (randomKey.nextInt(1000) + randomSeed.nextInt(10)) + 1;
				
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/logindemo", "root", "");
               
				String query1 = "INSERT INTO `members` VALUES (?, ? ,?)";
				String query = "INSERT into `users` VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
				PreparedStatement ps = con.prepareStatement(query); // generates sql query
				
				ps.setInt(1, generated);
				ps.setString(2, FullName);
				ps.setString(3, Username);
				ps.setInt(4, Integer.parseInt(Age));
				ps.setString(5, MobileNumber);
				ps.setString(6, City);
				ps.setString(7, Address);
				ps.setString(8, Password);
				
				ps.executeUpdate(); // execute it on test database
				
				
				System.out.println("successfuly inserted");
				// System.out.println("Thank you "+Username);
				
				if (!Username.isEmpty() && !Password.isEmpty()) 
				{
					PreparedStatement ps1 = con.prepareStatement(query1);
					ps1.setInt(1, generated);
					ps1.setString(2, Username);
					ps1.setString(3, Password);
					
				    ps1.executeUpdate(); // execute it on test database
				    System.out.println("successfuly inserted into login table");
	
				} else {
					System.out.println("Could insert all the tables");
					con.close();
				}
	
				
				
				con.close();

			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				System.out.println(e.getMessage());
			}
			RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
			rd.forward(request, response);

		}
	}
}
