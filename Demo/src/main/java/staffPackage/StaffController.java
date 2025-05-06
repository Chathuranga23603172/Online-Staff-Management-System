package staffPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;




public class StaffController {
	
	private static boolean inSuccess;
	private static Connection con =null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
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
	//get by ID
	public static List<StaffModel> getById(String Id){
		int convertedID = Integer.parseInt(Id);
		
		ArrayList<StaffModel> book = new ArrayList<>();
		
		try {
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			String sql="select * from book where id '"+convertedID+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String fullname = rs.getString(2);
				String address = rs.getString(3);
				String email = rs.getString(4);
				String age = rs.getString(5);
				String username = rs.getString(6);
				
				StaffModel sta = new StaffModel(id,fullname,address,email,age,username);
				book.add(sta);
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return book;
	}
	
	//Get All
	public static List<StaffModel> getAllStaff(){
		ArrayList<StaffModel> books = new ArrayList<>();
		try {
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			String sql="select * from book ";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String fullname = rs.getString(2);
				String address = rs.getString(3);
				String email = rs.getString(4);
				String age = rs.getString(5);
				String username = rs.getString(6);
				
				StaffModel sta = new StaffModel(id,fullname,address,email,age,username);
				books.add(sta);
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return books;
	}
}
