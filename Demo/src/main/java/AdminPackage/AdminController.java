package AdminPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import AdminPackage.DBConnection;

public class AdminController {
	private static boolean isSuccess;
	private static Connection con =null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
public static boolean insertdata(String fullname, String university, String degree, String username,String password) {
		
		boolean isSuccess = false;
		try {
			
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			String  sql = "insert into admin values(0,'"+fullname+"','"+university+"','"+degree+"','"+username+"','"+password+"')";
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
