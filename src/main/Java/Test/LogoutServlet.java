package Test;


import java.io.IOException;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogoutServlet
 */

public class LogoutServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //invalidate the session if exists
        HttpSession session = req.getSession(false);
        if(session != null){
            //session.invalidate();
            req.getSession().invalidate();

        }
        resp.sendRedirect(req.getContextPath() + "/hi.jsp");
    }
}
