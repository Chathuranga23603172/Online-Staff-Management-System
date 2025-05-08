package UserPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UserPackage.UserController;
import UserPackage.UserModel;


@WebServlet("/UserGetAll")
public class UserGetAll extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			doGet(request, response);
			
			
		}
	       protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    	   List<UserModel> allUsers = UserController.getAlluser();
	   		request.setAttribute("allUsers", allUsers);
	   		
	   		RequestDispatcher dispatcher = request.getRequestDispatcher("StaffAdd.jsp");
	   		dispatcher.forward(request, response);
	       }

}
