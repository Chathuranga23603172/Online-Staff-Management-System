package BranchPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import DepartmentPackage.DBConnection;
import DepartmentPackage.FacultyModel;

//Abstraction

public class BranchController {
	
	private static boolean isSuccess;
	private static Connection con =null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
public static boolean insertdata(String location, String manager, String contact) {
		
		boolean isSuccess = false;
		try {
			
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			String  sql = "insert into branch values(0,'"+location+"','"+manager+"','"+contact+"')";
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

public static List<BranchModel> getById (String Id){
	
	int convertedID = Integer.parseInt(Id);
	
	ArrayList <BranchModel> branch = new ArrayList<>();
	
	try {
		con=DBConnection.getConnection();
		stmt=con.createStatement();
		
		//Query
		String sql = "select * from branch where id = '"+convertedID+"'";
		
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id = rs.getInt(1);
			String location = rs.getString(2);
            String manager = rs.getString(3);  
			String contact = rs.getString(4);
			
			
			
			BranchModel ba = new BranchModel(id,location,manager,contact);
			branch.add(ba);
		}
		
	} 
	catch (Exception e) {
		e.printStackTrace();
	}
	return branch;

}
public static List<BranchModel> getAllBranch () {
	
	ArrayList <BranchModel> branchs = new ArrayList<>();
	
	try {
		con=DBConnection.getConnection();
		stmt=con.createStatement();
		
		//Query
		String sql = "select * from branch";
		
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id = rs.getInt(1);
			String location = rs.getString(2);
			String manager = rs.getString(3);  
		    String contact = rs.getString(4);
		    
			
			BranchModel ba = new BranchModel(id,location,manager,contact);
			branchs.add(ba);
		}
		
	} 
	catch (Exception e) {
		e.printStackTrace();
	}
	return branchs;
	
}
public static boolean updatedata(String id,String location,String manager,String contact) {
	try {
		con=DBConnection.getConnection();
		stmt=con.createStatement();
		
		String sql ="update branch set  location='"+location+"', manager='"+manager+"',contact='"+contact+"' where id='"+id+"'";        
				
		int rs = stmt.executeUpdate(sql);
		
		if(rs>0) {
			isSuccess = true;
		}
		else
			isSuccess = false;
		 
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
public static boolean deleteAccount(String id) {
	
	int convID = Integer.parseInt(id);
	
	try {
		
		 
		//DBConnection
		con=DBConnection.getConnection();
		stmt=con.createStatement();
		String sql = "delete from branch where id='"+convID+"'";
		int rs = stmt.executeUpdate(sql);
		
		if(rs>0) {
			isSuccess = true;
		}
		
		else {
			isSuccess = false;
		}
		
	}catch(Exception e) {
		
		e.printStackTrace();
		
	}
	return isSuccess;
}
}
