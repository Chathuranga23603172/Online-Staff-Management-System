package AdminPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UserPackage.UserController;
import UserPackage.UserModel;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		try {
			
			List<AdminModel> adminlogin = AdminController.loginvalidate(username, password);
			if(adminlogin != null && !adminlogin.isEmpty()) {
				
				request.getSession().setAttribute("Admin", adminlogin.get(0));
				response.sendRedirect("AdminDashboard.jsp");
				
			}else {
				
				String alertMessage = "Invalid Credentials.Please try again.";
				response.getWriter().println("<script>alert('"+alertMessage+"');window.location.href='AdminLogin.jsp'</script>");
			}
			
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		

	
	}

}
