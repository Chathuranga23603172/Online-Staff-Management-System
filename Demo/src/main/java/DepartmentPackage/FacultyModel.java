package DepartmentPackage;

public class FacultyModel {

	private int id;
    private String subject;
	private String facultyname;
	private String name;
	
	
	public FacultyModel(int id, String subject, String facultyname, String name) {
		super(); 
		this.id = id;
        this.subject = subject;
		this.facultyname = facultyname;
		this.name = name;
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getFacultyname() {
		return facultyname;
	}

	public void setFacultyname(String facultyname) {
		this.facultyname = facultyname;
	}
	
	

}