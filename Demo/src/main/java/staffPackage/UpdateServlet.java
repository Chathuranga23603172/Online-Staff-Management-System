package staffPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
  

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String fullname = request.getParameter("fullname");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String age = request.getParameter("age");
		String username = request.getParameter("username");
		
		boolean isTrue;
		isTrue = StaffController.updatedata(id, fullname, address, email, age, username);
		
		if(isTrue == true) {
			List<StaffModel> staffdetails = StaffController.getById(id);
			
			request.setAttribute("staffdetails", staffdetails);
			String alertMessage = "Data Updated Successful.."; 
			
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='StaffGetAll'</script>");
			
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
	}

}
