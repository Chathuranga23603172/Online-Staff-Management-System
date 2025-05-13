package DepartmentPackage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/DepLogout")
public class DepLogout extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        HttpSession session = request.getSession(false); // prevent creating a new session
        if (session != null) {
            session.invalidate(); // destroy session
        }
        response.sendRedirect("AdminLogin.jsp"); // redirect to login page
    }
}
