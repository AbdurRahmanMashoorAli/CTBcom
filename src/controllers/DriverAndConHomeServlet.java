package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DriverAndConServlet")
public class DriverAndConHomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DriverAndConHomeServlet() {
        super();
     
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getSession().getAttribute("username") != null) {
			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/DriverandConducterHome.jsp");
			view.forward(request, response);
		}else {
			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/DriverandConducterLogin.jsp");
			view.forward(request, response);
		}
	}

}
