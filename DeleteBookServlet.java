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
@WebServlet("/del")
public class DeleteBookServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		PrintWriter pw = res.getWriter();
		BookBean bb = new BookBean();
		HttpSession hs = req.getSession(false);
		if (hs == null) {
			req.setAttribute("msg", "<h3 style='color:red;'>Session Expired!!</h3><br>");
			req.getRequestDispatcher("DeleteBook.jsp").include(req, res);
			return;

		}
		String bid = req.getParameter("bid");
		System.out.println("Received Book ID: " + bid);

		
        if (bid == null || bid.trim().isEmpty()) {
        	req.setAttribute("msg", "<h3 style='color:red;'>Invalid Book ID!</h3>");
            req.getRequestDispatcher("DeleteBook.jsp").include(req, res);
            return;
        }
        bb.setBid(bid);
        DeleteBookDao dao = new DeleteBookDao();
        int deletedRows = dao.delete(bb);

        if (deletedRows > 0) {
            req.setAttribute("msg", "<h3 style='color:green;'>Book deleted successfully!</h3>");
        } else {
            req.setAttribute("msg", "<h3 style='color:red;'>No book found with the given ID!</h3>");
        }
        req.getRequestDispatcher("DeleteBook.jsp").include(req, res);
	}

}