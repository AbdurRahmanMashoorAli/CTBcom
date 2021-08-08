package controllers;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Services.DriandConLoginService;

@WebServlet("/DriverAndConLoginServlet")
public class DriverAndConLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DriverAndConLoginServlet() {
        super();

    }
    DriandConLoginService loginService = new DriandConLoginService();

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if(loginService.isValidUser(username, password)) {
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			session.setAttribute("password", password);
			
			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/DriverandConducterHome.jsp");
			view.forward(request, response);
			
		}
		//response.sendRedirect("/Login-App/");	
	}
}