package BranchPackage;

public class BranchModel {
	
	private int id;
	private String location;
	private String manager;
	private String contact;
	
	public BranchModel(int id, String location, String manager, String contact) {
		super();
		this.id = id;
		this.location = location;
		this.manager = manager;
		this.contact = contact;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getManager() {
		return manager;
	}

	public void setManager(String manager) {
		this.manager = manager;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}
	
	

}
