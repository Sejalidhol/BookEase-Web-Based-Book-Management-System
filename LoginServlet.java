package test;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;


@SuppressWarnings("serial")
@WebServlet("/log")
public class LoginServlet extends HttpServlet 
{
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		PrintWriter pw=res.getWriter();
		res.setContentType("text/html");
		String na=req.getParameter("name");
		String pa=req.getParameter("pass");
		AdminBean ab = new LoginDao().login(na, pa);
	  if(ab==null)
	  {
		req.setAttribute("msg", "Invalid Username or Password Please Check Onces");
		req.getRequestDispatcher("loginfailed.jsp").forward(req, res); 
	  }
	  else
	  {
		HttpSession hs=req.getSession();
		hs.setAttribute("abean", ab);
		req.getRequestDispatcher("loginsuccess.jsp").forward(req, res);
	   }
		
	}

}