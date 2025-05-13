package DepartmentPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DepartmentUpdateServlet")
public class DepartmentUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L; 
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String subject = request.getParameter("subject");
		String facultyname = request.getParameter("facultyname");
		String name = request.getParameter("name");
		
		
		boolean isTrue;
		isTrue = FacultyController.updatedata(id, name, subject, facultyname);
		
		if(isTrue == true) {
			List<FacultyModel> facultydetails = FacultyController.getById(id);
			request.setAttribute("facultydetails" ,facultydetails);
			String alertMessage = "Data Updated Successfully";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href = 'DepartmentGetAll'</script>");
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
			}
	}

}
