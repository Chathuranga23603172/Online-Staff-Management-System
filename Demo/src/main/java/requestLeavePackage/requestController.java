package requestLeavePackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class requestController {
	
	//Connect DB
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Insert Data Function
	public static boolean insertdata (String name, String subject, String phoneNo, String requests ){

			boolean isSuccess = false;
			
			try {
				//DB CONNECTION CALL
				con=DBConnection.getConnection();
				stmt=con.createStatement();
				
				//SQL QUERY
				String sql = "insert into request values(0, '"+name+"' , '"+subject+"', '"+phoneNo+"', '"+requests+"')";
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
	
	//GetById
	public static List<requestModel> getBYId(String Id){
		int convertedID = Integer.parseInt(Id);
		 
		ArrayList <requestModel> request = new ArrayList<>();
		 
		try {
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			 
			//Query
			String sql = "select * from request where id = '"+convertedID+"'";
			 
			rs = stmt.executeQuery(sql);
			 
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String subject = rs.getString(3);
				String phoneNo = rs.getString(4);
				String requests = rs.getString(5);
				 
				requestModel bk = new requestModel(id, name, subject, phoneNo, requests);
				request.add(bk);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return request;
	}
	
	//GetAll Data
	public static List<requestModel> getAllrequest(){
		ArrayList <requestModel> requestss = new ArrayList<>();
		 
		try {
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			 
			//Query
			String sql = "select * from request";
			 
			rs = stmt.executeQuery(sql);
			 
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String subject = rs.getString(3);
				String phoneNo = rs.getString(4);
				String requests = rs.getString(5);
				 
				requestModel bk = new requestModel(id, name, subject, phoneNo, requests);
				requestss.add(bk);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return requestss;
	}
		 
	//Update Data
	public static boolean updatedata (String id, String name, String subject, String phoneNo, String requests) {
		boolean isSuccess = false;
		
		try {
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			 
			//SQL Query
			String sql = "update request set name= '"+name+"', subject= '"+subject+"', phoneNo= '"+phoneNo+"', requests= '"+requests+"'"
				+"where id = '"+id+"'";
			 
			int rs = stmt.executeUpdate(sql);
			 
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}	 
		return isSuccess;
	}
	
	//Delete Data
	public static boolean deletedata(String id) {
		int convID = Integer.parseInt(id);
		try {
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			String sql = "delete from request where id ='"+convID+"'";
			
			int rs = stmt.executeUpdate(sql);
			 
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}	
		
		return isSuccess;
	}
}


