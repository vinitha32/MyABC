package Test;

import Database.UserLoginValidate;
import Database.Usernew;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();

        try{
            String username=req.getParameter("username");
            String password =req.getParameter("password");

            Usernew pObject = new Usernew();

           pObject.setUsername(username);  //setting them to setters and getters
            pObject.setPassword(password);
            List<Usernew>list = new ArrayList<>(); //take a list


            list = UserLoginValidate.getUsers(username, password); //send the values id and password to vadlidate class of getUsers method and storing the resultset in list
            if(!(list.isEmpty())){
                //if list has some values then you are logged in
                out.print("Congrats!You've SuccessFully Logged In to MYABC!!");


            }else{
                //if no values are found then the User does not exist
                //req.getRequestDispatcher("login.jsp").include(req, resp);
               out.print("<p align='center'>User Does Not Exist! Please Register");
                req.getRequestDispatcher("login.jsp").include(req, resp);

            }
        }catch(Exception e){
            req.getRequestDispatcher("login.jsp").include(req, resp);
            out.print("<p>Please Enter Valid Details To Login</p>");
//executes when user enters invalid details

        }
    }

}