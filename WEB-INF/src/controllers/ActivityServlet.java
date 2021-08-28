package controllers;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

public class ActivityServlet extends HttpServlet{
	
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException{
		request.getRequestDispatcher("activity.jsp").forward(request,response);
			
	}

}