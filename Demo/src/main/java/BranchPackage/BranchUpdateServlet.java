package BranchPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DepartmentPackage.FacultyController;
import DepartmentPackage.FacultyModel;

@WebServlet("/BranchUpdateServlet")
public class BranchUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String location = request.getParameter("location");
		String manager = request.getParameter("manager");
		String conatct = request.getParameter("contact");
		
		
		
		boolean isTrue;
		isTrue = BranchController.updatedata(id, location, manager, conatct);
		
		if(isTrue == true) {
			List<BranchModel> branchdetails = BranchController.getById(id);
			request.setAttribute("branchdetails" ,branchdetails);
			String alertMessage = "Data Updated Successfully";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href = 'BranchGetAll'</script>");
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
			}

	}

}
