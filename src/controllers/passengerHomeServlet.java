package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/passengerHomeServlet")
public class passengerHomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public passengerHomeServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if(request.getSession().getAttribute("username") != null) {
			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/PassengerHome.jsp");
			view.forward(request, response);
		}else {
			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/passengerRegisterandLogin.jsp");
			view.forward(request, response);
		}
	}

}