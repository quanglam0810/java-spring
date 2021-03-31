package luxury.dto;

import luxury.entity.Product;

public class CartDto {
	private Product product;
	private int soluong;
	private int tongtien;
	public CartDto() {
		super();
	}
	public CartDto(Product product, int soluong, int tongtien)
	{
		
		
	}
	public int getTongtien() {
		return tongtien;
	}
	public void setTongtien(int tongtien) {
		this.tongtien = tongtien;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}	
}
