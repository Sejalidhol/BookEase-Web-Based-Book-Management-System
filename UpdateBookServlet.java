package test;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/up")
public class UpdateBookServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter pw = res.getWriter();
		res.setContentType("text/html");
		
		
		HttpSession hs = req.getSession(false);
		if (hs == null) {
			hs = req.getSession(); 
		    hs.setAttribute("msg", "Session Expired!! Please log in again.");
		    res.sendRedirect("loginsuccess.jsp"); 
		    return;
		}

		try {
		
			String bookId = req.getParameter("bid");
			String name = req.getParameter("bname");
			String author = req.getParameter("bauthor");
			Float price =Float.parseFloat(req.getParameter("bprice"));
			int quantity = Integer.parseInt(req.getParameter("bqty"));

			
			BookBean bb = new BookBean();
			bb.setBid(bookId);
			bb.setBname(name);
			bb.setBauthor(author);
			bb.setBprice(price);
			bb.setBqty(quantity);

		
			boolean updated = UpdateBookDao.updateBook(bb);

			
			if (updated) {
				hs.setAttribute("msg", " Book Updated Successfully!");
			} else {
				hs.setAttribute("msg", " Book Update Failed! Book ID not found.");
			}

            req.getRequestDispatcher("Msg.jsp").forward(req, res);

		} catch (Exception e) {
			pw.println("<p style='color:red;'>Invalid Input! Please enter correct details.</p>");
			req.getRequestDispatcher("UpdateBook.jsp").include(req, res);
			e.printStackTrace();
		}
	}
}
