package DepartmentPackage;

public class FacultyModel {

	private int id;
	private String name;
    private String contact;
	private String facultyname;
	
	public FacultyModel(int id, String name, String contact, String facultyname) {
		super(); 
		this.id = id;
		this.name = name;
		this.contact = contact;
		this.facultyname = facultyname;
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

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getFacultyname() {
		return facultyname;
	}

	public void setFacultyname(String facultyname) {
		this.facultyname = facultyname;
	}

	

}