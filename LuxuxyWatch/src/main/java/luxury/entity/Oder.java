package luxury.entity;

public class Oder {
	private int id_oder;
	private int id_user;
	private String oder_date;
	private String delivery_date;
	private String receiver;
	private String email;
	private int phone;
	private String add_oder;
	private String status_oder;

	public Oder() {
		super();
	}

	public Oder(int id_oder, int id_user, String oder_date, String delivery_date, String reveiver, String email,
			int phone, String add_oder, String status_oder) {
		this.id_oder = id_oder;
		this.id_user = id_user;
		this.oder_date = oder_date;
		this.delivery_date = delivery_date;
		this.receiver = receiver;
		this.phone = phone;
		this.add_oder = add_oder;
		this.status_oder = status_oder;
	}

	public int getId_oder() {
		return id_oder;
	}

	public void setId_oder(int id_oder) {
		this.id_oder = id_oder;
	}

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public String getOder_date() {
		return oder_date;
	}

	public void setOder_date(String oder_date) {
		this.oder_date = oder_date;
	}

	public String getDelivery_date() {
		return delivery_date;
	}

	public void setDelivery_date(String delivery_date) {
		this.delivery_date = delivery_date;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public String getAdd_oder() {
		return add_oder;
	}

	public void setAdd_oder(String add_oder) {
		this.add_oder = add_oder;
	}

	public String getStatus_oder() {
		return status_oder;
	}

	public void setStatus_oder(String status_oder) {
		this.status_oder = status_oder;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
