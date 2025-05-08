package UserPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/AdminUpdateUser")
public class AdminUpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String gmail = request.getParameter("gmail");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
	
		boolean isTrue;
		isTrue = UserController.AdminupdateProfile(id, name, gmail, password, phone);
		
		if(isTrue == true) {
			List<UserModel> userdetails = UserController.getAlluser();
			
			request.setAttribute("userdetails", userdetails);
			String alertMessage = "Data Updated Successful.."; 
			
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='UserGetAll'</script>");
			
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
	}

}
