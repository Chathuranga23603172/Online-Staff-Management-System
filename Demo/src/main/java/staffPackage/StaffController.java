package staffPackage;

import java.sql.Connection;
import java.sql.Statement;

import com.mysql.cj.protocol.Resultset;




public class StaffController {
	
	private static boolean inSuccess;
	private static Connection con =null;
	private static Statement stmt = null;
	private static Resultset rs=null;
	
	public static boolean insertdata(String fullname, String address, String email, String age, String username) {
		
		boolean isSuccess = false;
		try {
			
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			String  sql = "insert into book values(0,'"+fullname+"','"+address+"','"+email+"','"+age+"','"+username+"')";
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
