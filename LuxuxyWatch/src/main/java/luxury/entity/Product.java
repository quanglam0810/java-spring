package luxury.entity;

public class Product {
	private int id_product;
	private String codeProduct;
	private String name_product;
	private int id_type;
	private String type_name;
	private int id_brand;
	private String brand_name;
	private String brand_address;
	private float sizeCase;
	private String colorCase;
	private String image;
	private String image_1;
	private String image_2;
	private String image_3;
	private int pro_price;
	private String strap_type;
	private int pro_qty;
	private String glass_type;
	private String info_product;
	private int sale;
	private float rating;	
	public Product()
	{
		super();
	}
	public Product(int id_product,String name_product, String image, int pro_price)
	{
		this.id_product = id_product;
		this.name_product = name_product;
		this.image = image;
		this.pro_price =pro_price;
	}
	public int getId_product() {
		return id_product;
	}
	public void setId_product(int id_product) {
		this.id_product = id_product;
	}
	public String getCodeProduct() {
		return codeProduct;
	}
	public void setCodeProduct(String codeProduct) {
		this.codeProduct = codeProduct;
	}
	public String getName_product() {
		return name_product;
	}
	public void setName_product(String name_product) {
		this.name_product = name_product;
	}
	public int getId_type() {
		return id_type;
	}
	public void setId_type(int id_type) {
		this.id_type = id_type;
	}
	public int getId_brand() {
		return id_brand;
	}
	public void setId_brand(int id_brand) {
		this.id_brand = id_brand;
	}
	public float getSizeCase() {
		return sizeCase;
	}
	public void setSizeCase(float sizeCase) {
		this.sizeCase = sizeCase;
	}
	public String getColorCase() {
		return colorCase;
	}
	public void setColorCase(String colorCase) {
		this.colorCase = colorCase;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getImage_1() {
		return image_1;
	}
	public void setImage_1(String image_1) {
		this.image_1 = image_1;
	}
	public String getImage_2() {
		return image_2;
	}
	public void setImage_2(String image_2) {
		this.image_2 = image_2;
	}
	public String getImage_3() {
		return image_3;
	}
	public void setImage_3(String image_3) {
		this.image_3 = image_3;
	}
	public int getPro_price() {
		return pro_price;
	}
	public void setPro_price(int pro_price) {
		this.pro_price = pro_price;
	}
	public String getStrap_type() {
		return strap_type;
	}
	public void setStrap_type(String strap_type) {
		this.strap_type = strap_type;
	}
	public int getPro_qty() {
		return pro_qty;
	}
	public void setPro_qty(int pro_qty) {
		this.pro_qty = pro_qty;
	}
	public String getGlass_type() {
		return glass_type;
	}
	public void setGlass_type(String glass_type) {
		this.glass_type = glass_type;
	}
	public String getInfo_product() {
		return info_product;
	}
	public void setInfo_product(String info_product) {
		this.info_product = info_product;
	}
	public String getBrand_name() {
		return brand_name;
	}
	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}
	public String getType_name() {
		return type_name;
	}
	public void setType_name(String type_name) {
		this.type_name = type_name;
	}
	public String getBrand_address() {
		return brand_address;
	}
	public void setBrand_address(String brand_address) {
		this.brand_address = brand_address;
	}
	public int getSale() {
		return sale;
	}
	public void setSale(int sale) {
		this.sale = sale;
	}
	public float getRating() {
		return rating;
	}
	public void setRating(float rating) {
		this.rating = rating;
	}
}
