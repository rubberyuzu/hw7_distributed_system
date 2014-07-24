package p1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.*;

@SuppressWarnings("serial")
public class ShowServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		String message = req.getParameter("message");
		resp.setContentType("text/plain");
	    URL url = new URL("http://step-test-krispop.appspot.com/convert?message=" + message);
	    BufferedReader reader = new BufferedReader(new InputStreamReader(url.openStream()));
			resp.getWriter().println(reader.readLine());
	}
}