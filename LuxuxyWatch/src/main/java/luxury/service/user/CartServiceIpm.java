package luxury.service.user;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import luxury.dao.CartDao;
import luxury.dto.CartDto;

@Service
public class CartServiceIpm implements IcartService {
	@Autowired
	CartDao cartdao = new CartDao();
	public HashMap<Long, CartDto> AddCart(long id, HashMap<Long, CartDto> cart) {
		// TODO Auto-generated method stub
		return cartdao.AddCart(id, cart);
	}

	public HashMap<Long, CartDto> EditCart(long id, int soluong, HashMap<Long, CartDto> cart) {
		// TODO Auto-generated method stub
		return cartdao.EditCart(id,soluong, cart);
	}

	public HashMap<Long, CartDto> DeleteCart(long id, HashMap<Long, CartDto> cart) {
		// TODO Auto-generated method stub
		return cartdao.DeleteCart(id, cart);
	}
	public int totalQty(HashMap<Long, CartDto> cart)
	{
		return cartdao.totalQty(cart);
	}
	public int totalPri(HashMap<Long, CartDto> cart)
	{
		return cartdao.totalPri(cart);
	}

}
