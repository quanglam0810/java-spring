package luxury.service.user;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import luxury.dao.OderDao;
import luxury.dao.OderDetailDao;
import luxury.dto.CartDto;
import luxury.entity.Oder;
import luxury.entity.OderDetail;

@Service
public class OderServiceIpm implements IOderService{
	@Autowired
	private OderDao oderdao;
	@Autowired
	private OderDetailDao oderdtdao;
	public int AddOder(Oder oder) {
		// TODO Auto-generated method stub
		return oderdao.AddOder(oder);
	}

	public void AddOderDetail(HashMap<Long, CartDto> cart) {
		// TODO Auto-generated method stub
		int idOder = oderdao.GetIDLastBill();
		for(Map.Entry<Long, CartDto> itemOder : cart.entrySet()) {
			OderDetail oderDT = new OderDetail();
			oderDT.setId_oder(idOder);
			oderDT.setId_product(itemOder.getValue().getProduct().getId_product());			
			oderDT.setQty_oder(itemOder.getValue().getSoluong());
			oderDT.setPri_oder(itemOder.getValue().getProduct().getPro_price());
			oderdtdao.AddOderDetail(oderDT);
		}
	}
	
}
