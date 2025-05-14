package requestLeavePackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/leaveUpdateServlet")
public class leaveUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String subject = request.getParameter("subject");
		String phoneNo = request.getParameter("phoneNo");
		String requests = request.getParameter("requests");
		
		boolean isTrue;
		isTrue = requestController.updatedata(id, name, subject, phoneNo, requests);
		
		if(isTrue == true) {
			
			List<requestModel> requestdetails = requestController.getBYId(id);
			request.setAttribute("requestdetails", requestdetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("leaveGetAllServlet");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
	}

}
