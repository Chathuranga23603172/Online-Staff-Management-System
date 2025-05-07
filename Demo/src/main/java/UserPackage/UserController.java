package UserPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import staffPackage.DBConnection;

public class UserController {
	
	private static boolean isSuccess;
	private static Connection con =null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
public static boolean insertdata(String name, String gmail, String password, String phone) {
		
		boolean isSuccess = false;
		try {
			
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			String  sql = "insert into user values(0,'"+name+"','"+gmail+"','"+password+"','"+phone+"')";
			int rs = stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess = true;
			}
			
			else {
				isSuccess = false;
			}
			
		}catch(Exception e){
			
			e.printStackTrace();
			
		}
		
		return isSuccess;
	}
}
