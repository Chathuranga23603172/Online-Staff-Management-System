package staffPackage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/StaffinsertServlet")
public class StaffinsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fullname = request.getParameter("fullname");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String age = request.getParameter("age");
		String username = request.getParameter("username");
		
		boolean isTrue;
		
		isTrue = StaffController.insertdata(fullname, address, email, age, username);
		
		if(isTrue == true) {
			String alertMessage = "Data insert Successful.."; 
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='StaffGetAll'</script>");
			
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
	}

}
