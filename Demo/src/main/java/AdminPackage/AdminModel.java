package AdminPackage;

public class AdminModel {
	
	private int id;
	private String fullname;
	private String university;
	private String degree;
	private String username;
	private String password;
	public AdminModel(int id, String fullname, String university, String degree, String username, String password) {
		super();
		this.id = id;
		this.fullname = fullname;
		this.university = university;
		this.degree = degree;
		this.username = username;
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getUniversity() {
		return university;
	}
	public void setUniversity(String university) {
		this.university = university;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
