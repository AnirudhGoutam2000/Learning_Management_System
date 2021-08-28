package controllers;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import models.*;

public class ActivationServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException{
		
		String nextPage = "activation_falied.jsp";

		String email = request.getParameter("email");
		String activationCode = request.getParameter("activation_code");

		System.out.println(activationCode);

		if(Student.activation(email,activationCode)){
			nextPage = "studentlogin.jsp";
		}
		request.getRequestDispatcher(nextPage).forward(request,response);
	}
}