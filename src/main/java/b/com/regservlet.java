package b.com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/regservlet")
public class regservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out=response.getWriter();
		try{
			String un=request.getParameter("un");
			String pass=request.getParameter("pass");
			String cn=request.getParameter("cn");
		 Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/arjun1", "root", "root");
         PreparedStatement ps = con.prepareStatement("insert into login values (?,?,?)");
         ps.setString(1, un);
         ps.setString(2, cn);
         ps.setString(3, pass);
         
         int i=ps.executeUpdate();
         response.sendRedirect(" loginmain.jsp");
         
         
		}catch(Exception e)
		{
			out.println(e);
		}
		
	}

	
}
