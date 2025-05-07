package UserPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		
		try {
			
			List<UserModel> userlogin = UserController.loginvalidate(name,password);
			if(userlogin != null && !userlogin.isEmpty()) {
				
				request.getSession().setAttribute("user", userlogin.get(0));
				response.sendRedirect("ProfileServlet");
			}else {
				
				String alertMessage = "Invalid Credentials.Please try again.";
				response.getWriter().println("<script>alert('"+alertMessage+"');window.location.href='Login.jsp'</script>");
			}
			
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		

	}

}
