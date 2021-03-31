package luxury.dao;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import luxury.dto.CartDto;
import luxury.entity.Product;
//import luxury.dao.ProductDao;
@Repository
public class CartDao {
	@Autowired
	ProductDao productDao = new ProductDao();

	public HashMap<Long, CartDto> AddCart(long id, HashMap<Long, CartDto> cart) {
		CartDto itemCart = new CartDto();
		Product pro = productDao.findProduct(id);
		if (pro != null && cart.containsKey(id)) {
			
			itemCart = cart.get(id);
			itemCart.setSoluong(itemCart.getSoluong()+1);
			itemCart.setTongtien(pro.getPro_price()*itemCart.getSoluong());
			
		}
		else
		{
			itemCart.setProduct(pro);
			itemCart.setSoluong(1);
			itemCart.setTongtien(pro.getPro_price());
		}
		cart.put(id, itemCart);
		return cart;
	}

	public HashMap<Long, CartDto> EditCart(long id,int soluong, HashMap<Long, CartDto> cart) {
		if(cart == null)
		{
			return cart;
		}
		CartDto itemCart = new CartDto();
		Product pro = productDao.findProduct(id);
		if (cart.containsKey(id)) {
			itemCart = cart.get(id);
			itemCart.setSoluong(soluong);
			itemCart.setTongtien(soluong*(pro.getPro_price()));
		}
		cart.put(id, itemCart);
		return cart;
	}
	public HashMap<Long, CartDto> DeleteCart(long id, HashMap<Long, CartDto> cart) {
		if(cart == null)
		{
			return cart;
		}
		//CartDto itemCart = new CartDto();
		//Product pro = productDao.findProduct(id);
		if (cart.containsKey(id)) {
			cart.remove(id);
		}
		//cart.put(id, itemCart);
		return cart;
	}
	public int totalQty(HashMap<Long, CartDto> cart)
	{
		int totalqty =0;
		for(Map.Entry<Long, CartDto> itemCart: cart.entrySet())
		{
			
			totalqty += itemCart.getValue().getSoluong();
			
		}
		return totalqty;
	}
	public int totalPri(HashMap<Long, CartDto> cart)
	
	{
		int totalprice = 0;
		for(Map.Entry<Long, CartDto> itemCart: cart.entrySet())
		{
			totalprice += itemCart.getValue().getTongtien();
		}
		return   totalprice;
	}
}
