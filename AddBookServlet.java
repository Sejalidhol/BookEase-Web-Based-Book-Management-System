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
@WebServlet("/book")
public class AddBookServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter pw = res.getWriter();
		BookBean bb = new BookBean();
		HttpSession hs = req.getSession(false);
		if (hs == null) {
			hs.setAttribute("msg", "Session Expired!!<br>");
			req.getRequestDispatcher("AddBook.jsp").include(req, res);

		} else {

			String Bi = req.getParameter("Bid");
			String Bn = req.getParameter("Bname");
			String Ba = req.getParameter("Bauthor");
			Float Bp = Float.parseFloat(req.getParameter("Bprice"));
			Integer Bq = Integer.parseInt(req.getParameter("Bqty"));
			res.setContentType("text/html");

			bb.setBid(Bi);
			bb.setBname(Bn);
			bb.setBauthor(Ba);
			bb.setBprice(Bp);
			bb.setBqty(Bq);

			int k = new AddBookDao().add(bb);
			if (k > 0) {
				hs.setAttribute("msg", "Data Added Sucessfully");
				req.getRequestDispatcher("AddBook.jsp").include(req, res);
			}
		}
	}

}