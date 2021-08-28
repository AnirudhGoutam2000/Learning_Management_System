package controllers;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

public class AboutUsServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException{
		request.getRequestDispatcher("about_us.jsp").forward(request,response);
			
	}
}