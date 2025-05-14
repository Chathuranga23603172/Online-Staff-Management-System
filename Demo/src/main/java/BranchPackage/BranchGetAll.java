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

@WebServlet("/BranchGetAll")
public class BranchGetAll extends HttpServlet {
	private static final long serialVersionUID = 1L;



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List <BranchModel> allbranch = BranchController.getAllBranch();
    	request.setAttribute("allbranch", allbranch);
    	
    	RequestDispatcher dispatcher = request.getRequestDispatcher("BranchDisplay.jsp");
    	dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
