package b.com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet1")
public class servlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	        
	        PrintWriter out = response.getWriter();
	         {
	        	String un= request.getParameter("un");
		        String pass= request.getParameter("pass");
	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/arjun1", "root", "root");
	            PreparedStatement ps = conn.prepareStatement("select username,password from login where username=? and password=?");
	            ps.setString(1, un);
	            ps.setString(2, pass);
	            ResultSet rs = ps.executeQuery();
	            if (rs.next()) {
	                response.sendRedirect("Homeb.jsp");
	            }
	            else {
	                out.println("unsucessful");
	            }
	            
	        
	        } 
	        catch (Exception e) {
	            System.out.println(e);
	        }
	}



	}}
