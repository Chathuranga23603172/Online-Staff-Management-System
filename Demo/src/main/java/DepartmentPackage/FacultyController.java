package DepartmentPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class FacultyController {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean insertdata(String name, String contact, String facultyname) {
		
		boolean isSuccess = false;
		try {
			//DB CONNECTION CALL
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql = "INSERT INTO faculty (name, contact, facultyname ) VALUES ( '"+name+"','"+contact+"','"+facultyname+"',)";
			int rs = stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess = true;
			}
			else
				isSuccess = false;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	public static List<FacultyModel> getById (String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList <FacultyModel> faculty = new ArrayList<>();
		
		try {
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//Query
			String sql = "select * from faculty where id = '"+convertedID+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
                String contact = rs.getString(3);  
				String facultyname = rs.getString(4);
				
				
				
				FacultyModel fk = new FacultyModel(id,name,contact,facultyname);
				faculty.add(fk);
			}
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return faculty;
	
	}
			
		public static List<FacultyModel> getAllFaculty () {
			
			ArrayList <FacultyModel> facultys = new ArrayList<>();
			
			try {
				con=DBConnection.getConnection();
				stmt=con.createStatement();
				
				//Query
				String sql = "select * from faculty";
				
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int id = rs.getInt(1);
					String name = rs.getString(2);
					String contact = rs.getString(3);  
				    String facultyname = rs.getString(4);
				    
					
					FacultyModel fk = new FacultyModel(id,name,contact,facultyname);
					facultys.add(fk);
				}
				
			} 
			catch (Exception e) {
				e.printStackTrace();
			}
			return facultys;
			
		}
		public static boolean updatedata(String id,String name,String contact,String facultyname) {
				try {
					con=DBConnection.getConnection();
					stmt=con.createStatement();
					
					String sql ="update faculty set  name='"+name+"', contact='"+contact+"'facultyname='"+facultyname+"', where id='"+id+"'";        
							
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
			
		

		//delete data

		public static boolean deletedata(String id) {
			int convId = Integer.parseInt(id);
			try {
				con=DBConnection.getConnection();
				stmt=con.createStatement();
				String sql ="delete from faculty where id ='"+convId+"'";
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
}
	
	

