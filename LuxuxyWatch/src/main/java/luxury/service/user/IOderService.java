package luxury.service.user;
import java.util.HashMap;

import org.springframework.stereotype.Service;

import luxury.dto.CartDto;
import luxury.entity.Oder;


@Service
public interface IOderService {
	public int AddOder(Oder oder);
	public void AddOderDetail(HashMap<Long, CartDto> cart);
}
