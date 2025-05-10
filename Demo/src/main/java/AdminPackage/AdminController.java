package AdminPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import AdminPackage.DBConnection;
import UserPackage.UserModel;

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

public static List<AdminModel> loginvalidate(String username,String password){
	
	ArrayList<AdminModel> admin = new ArrayList<>();
	try {
		con = DBConnection.getConnection();
		stmt = con.createStatement();
		
		String sql = "select * from admin where username='"+username+"' and password='"+password+"'";
		
		 rs= stmt.executeQuery(sql);
		
		if(rs.next()) {
			int id = rs.getInt(1);
			String fullname = rs.getString(2);
			String university = rs.getString(3);
			String degree = rs.getString(4);
			String name = rs.getString(5);
			String pass = rs.getString(6);
			
			AdminModel a = new AdminModel(id,fullname,university,degree,name,pass);
			
			admin.add(a);
		}
		
	}catch(Exception e) {
		 e.printStackTrace();
	}
	return admin;
  }
public static List<AdminModel> getAllAdmin(String Id){
	ArrayList<AdminModel> admin = new ArrayList<>();
	try {
		con=DBConnection.getConnection();
		stmt=con.createStatement();
		
		String sql="select * from admin ";
		
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id = rs.getInt(1);
			String fullname = rs.getString(2);
			String university = rs.getString(3);
			String degree = rs.getString(4);
			String username = rs.getString(5);
			String password = rs.getString(6);
			
			
		AdminModel a = new AdminModel(id,fullname,university,degree,username,password);
			admin.add(a);
			
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	return admin;
}
public static List<AdminModel> AdminProfile(String Id){
	   int convertID = Integer.parseInt(Id);
	   
	   ArrayList<AdminModel> admin = new ArrayList<>();
	   
	   try {
		   con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			String sql ="select * from admin where id='"+convertID+"'";
			
			 rs= stmt.executeQuery(sql);
				
				if(rs.next()) {
					int id = rs.getInt(1);
					String fullname = rs.getString(2);
					String university = rs.getString(3);
					String degree = rs.getString(4);
					String username = rs.getString(5);
					String password = rs.getString(6);
					
					AdminModel a = new AdminModel(id,fullname,university,degree,username,password);
					
					admin.add(a);
				}
				
		   
	   }catch(Exception e) {
		   
		   e.printStackTrace();
	   }
	   
	   return admin;
}
}
