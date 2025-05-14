package requestLeavePackage;

public class requestModel {
	private int id;
	private String name;
	private String subject;
	private String phoneNo;
	private String requests;
	public requestModel(int id, String name, String subject, String phoneNo, String requests) {
		super();
		this.id = id;
		this.name = name;
		this.subject = subject;
		this.phoneNo = phoneNo;
		this.requests = requests;
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
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getRequests() {
		return requests;
	}
	public void setRequests(String requests) {
		this.requests = requests;
	}
	
	
	

	

}
