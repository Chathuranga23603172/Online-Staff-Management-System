package DepartmentPackage;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String contact = request.getParameter("contact");
		String facultyname = request.getParameter("facultyname");
		
		
	boolean isTrue;
	
	isTrue = FacultyController.insertdata(name, contact, facultyname); 
	
	if(isTrue == true) {
		String alertMessage = "Data Insert Successful";
		response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href = 'DepartmentGetAll'</script>");
	}
	else {
		RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
		dis2.forward(request, response);
		}
	}
}
