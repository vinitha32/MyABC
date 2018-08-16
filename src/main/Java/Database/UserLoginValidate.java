package Database;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class UserLoginValidate {
    public static List<Usernew> getUsers(String username, String password){
        List<Usernew>list = new ArrayList<>();
        //take a list to store the values which are in db
        try{
            Connection con=Dbconnection.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from Test where username=? and password=?");
            ps.setString(1,username);
            ps.setString(2,password);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                Usernew pObject=new Usernew();
                pObject.setUsername(rs.getString(1)); //if the values exist in db then
                pObject.setPassword(rs.getString(2));     // set them to setters and getters and them to list and return the list finally
                //pObject.setEmail(rs.getString(3));
                list.add(pObject);
            }
            con.close();
        }catch(Exception ex){ex.printStackTrace();}
        return list;  //returns the list
    }
}