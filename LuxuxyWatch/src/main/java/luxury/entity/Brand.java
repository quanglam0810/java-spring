package luxury.entity;

public class Brand {
	private int id_brand;
	private String brand_name;
	private String brand_address;
	public Brand()
	{
		super();
	}
	public int getId_brand() {
		return id_brand;
	}
	public void setId_brand(int id_brand) {
		this.id_brand = id_brand;
	}
	public String getBrand_name() {
		return brand_name;
	}
	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}
	public String getBrand_address() {
		return brand_address;
	}
	public void setBrand_address(String brand_address) {
		this.brand_address = brand_address;
	}
	
}
