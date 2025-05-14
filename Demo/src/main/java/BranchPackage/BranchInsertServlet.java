package BranchPackage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/BranchInsertServlet")
public class BranchInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String location = request.getParameter("location");
		String manager = request.getParameter("manager");
		String conatct = request.getParameter("contact");
		
		
		boolean isTrue;
		
		isTrue = BranchController.insertdata(location, manager, conatct);
		
		if(isTrue == true) {
			String alertMessage = "Data insert Successful.."; 
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='BranchGetAll'</script>");
			
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
		
	}
}


