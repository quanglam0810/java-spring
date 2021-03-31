package luxury.entity;

public class OderDetail {
	private int id_oderdetail;
	private int id_oder;
	private int id_product;
	private int qty_oder;
	private int pri_oder;
	public OderDetail()
	{
		super();
	}
	public OderDetail(int id_oderdetail, int id_oder, int id_product, int qty_oder, int pri_oder)
	{
		this.id_oderdetail = id_oderdetail;
		this.id_oder = id_oder;      
		this.id_product = id_product;   
		this.qty_oder = qty_oder;     
		this.pri_oder= pri_oder;
	}        
	public int getId_oderdetail() {
		return id_oderdetail;
	}
	public void setId_oderdetail(int id_oderdetail) {
		this.id_oderdetail = id_oderdetail;
	}
	public int getId_oder() {
		return id_oder;
	}
	public void setId_oder(int id_oder) {
		this.id_oder = id_oder;
	}
	public int getId_product() {
		return id_product;
	}
	public void setId_product(int id_product) {
		this.id_product = id_product;
	}
	public int getQty_oder() {
		return qty_oder;
	}
	public void setQty_oder(int qty_oder) {
		this.qty_oder = qty_oder;
	}
	public int getPri_oder() {
		return pri_oder;
	}
	public void setPri_oder(int pri_oder) {
		this.pri_oder = pri_oder;
	}
	
}
