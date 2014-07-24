package p1;

import java.io.IOException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class ConvertServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		String message = req.getParameter("message");
		resp.setContentType("text/plain");
		resp.getWriter().println("♥"+message+"♥");
	}
}