package Database;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class SaveUser {


    public static int save(Usernew pObject){
        int flag=0;
        try {
            Connection con=Dbconnection.getConnection();
            PreparedStatement ps = con.prepareStatement("insert into Test values(?,?,?)");
            ps.setString(1, pObject.getUsername());
            ps.setString(2, pObject.getPassword());
            ps.setString(3, pObject.getEmail());
            flag=ps.executeUpdate(); //value changes if it is executed
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return flag; // returns greater than zero if inserted into database
    }}
