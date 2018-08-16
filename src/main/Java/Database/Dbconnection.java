package Database;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

    public class Dbconnection {
        public static Connection getConnection() throws SQLException{ //making a static connection,shares to all classes
            Connection con=null; // creating connection
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Test","root","hello123");

            } catch (Exception e) {
                con.close();
                //throws an error if at all its unable to create an connection
                System.out.println(e);
            }
            return con; // we return the connection and we can get the connection wherever needed.
        }
    }