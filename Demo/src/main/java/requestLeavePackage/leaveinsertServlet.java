package requestLeavePackage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/leaveinsertServlet")
public class leaveinsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String subject = request.getParameter("subject");
		String phoneNo = request.getParameter("phoneNo");
		String requests = request.getParameter("requests");
		
		boolean isTrue;
		
		isTrue = requestController.insertdata(name, subject, phoneNo, requests);
		
			if(isTrue == true) {
				String alertMessage = "Data Insert Successful";
				response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href = 'leaveGetAllServlet'</script>");
			}
		
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
	}
}
