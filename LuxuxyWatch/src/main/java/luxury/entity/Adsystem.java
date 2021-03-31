package luxury.entity;

public class Adsystem {
	private int id_admin;
	private String admin_name;
	private String account_admin;
	private String password_admin;
	private int phone;
	private String address;
	public Adsystem()
	{
		super();
	}
	public int getId_admin() {
		return id_admin;
	}
	public void setId_admin(int id_admin) {
		this.id_admin = id_admin;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getAccount_admin() {
		return account_admin;
	}
	public void setAccount_admin(String account_admin) {
		this.account_admin = account_admin;
	}
	public String getPassword_admin() {
		return password_admin;
	}
	public void setPassword_admin(String password_admin) {
		this.password_admin = password_admin;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
}
