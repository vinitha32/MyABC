package Test;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Database.SaveUser;
import Database.Usernew;

public class ControllerServlet extends HttpServlet {




    private static final long serialVersionUID = 1L;



    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();


        try {

            String username = req.getParameter("username"); //getting all the values from user

            String password = req.getParameter("password");
            String email = req.getParameter("email");
            //getting all the values from index.jsp

            Usernew pObject = new Usernew();

            pObject.setUsername(username);        //setting up the received values from index.jsp to setters and getters
            pObject.setPassword(password);
            pObject.setEmail(email);


            int status = SaveUser.save(pObject); // sending the pObject values to save method
            if (status > 0) {
                //executes if the details are added to database
                //out.print("<h2 align='center'>SuccessFully Registered </h2>"); // if successfully executes save method
                //out.print("<a align='center'href='login.jsp'>Login Here</a>");
                req.getRequestDispatcher("Registration.jsp").include(req, resp);

            } else {
                req.getRequestDispatcher("index.jsp").include(req, resp);
                out.print("<p>User Already Exists with Same User Details</p>");

                //this executes if user is already exists
            }

        } catch (Exception e) {
            req.getRequestDispatcher("index.jsp").include(req, resp);

            out.print("<p>Enter Valid Details to Register</p>");
            // executes if at all user enters invalid details
        }
    }
}
