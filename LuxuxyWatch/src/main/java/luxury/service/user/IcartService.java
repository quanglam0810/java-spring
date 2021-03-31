package luxury.service.user;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import luxury.dto.CartDto;

@Service
public interface IcartService {
	public HashMap<Long, CartDto> AddCart(long id, HashMap<Long, CartDto> cart);
	public HashMap<Long, CartDto> EditCart(long id, int soluong, HashMap<Long, CartDto> cart);
	public HashMap<Long, CartDto> DeleteCart(long id, HashMap<Long, CartDto> cart);
	public int totalQty(HashMap<Long, CartDto> cart);
	public int totalPri(HashMap<Long, CartDto> cart);
}
