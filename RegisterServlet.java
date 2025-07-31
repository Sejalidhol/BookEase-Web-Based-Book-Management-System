package test;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@SuppressWarnings("serial")
@WebServlet("/reg")
public class RegisterServlet extends HttpServlet 
{
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		PrintWriter pw=res.getWriter();
		String aN=req.getParameter("aname");
		String aP=req.getParameter("apass");
		String aFN=req.getParameter("afname");
		String aLN=req.getParameter("alname");
		String aM=req.getParameter("amid");
		Long aPh=Long.parseLong(req.getParameter("aphno"));
		AdminBean ab=new AdminBean();
		res.setContentType("text/html");
		ab.setAname(aN);
		ab.setApass(aP);
		ab.setAfname(aFN);
		ab.setAlname(aLN);
		ab.setAmid(aM);
		ab.setAphno(aPh);
	int k=new AdminDAO().register(ab);
	if (k > 0) {
	    pw.println("<h3 style='color: black; font-size: 30px; text-align: center;'>Registration Successful!</h3>");
	    req.getRequestDispatcher("home.html").include(req, res);
	} else {
	    pw.println("<h3 style='color: red; font-size: 30px; text-align: center;'>Registration Failed!</h3>");
	    req.getRequestDispatcher("home.html").include(req, res);
	}
	
	}

}