package requestLeavePackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/leaveDeleteServlet")
public class leaveDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		boolean isTrue;
		isTrue = requestController.deletedata(id);
		if(isTrue == true) {
			String alertMessage = "Data Delete Successful";
			response.getWriter().println("<script>alert('"+alertMessage+"');"+"window.location.href='leaveGetAllServlet';</script>");
		}
		
		else {
			List<requestModel> requestdetails = requestController.getBYId(id);
			request.setAttribute("requestdetails", requestdetails);
			
			RequestDispatcher dispacher = request.getRequestDispatcher("wrong.jsp");
			dispacher.forward(request, response);
		}
	}

}
