package woori.hotel.service.impl;

import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import woori.hotel.dao.MainDAO;
import woori.hotel.service.MainService;

@Service(value="MainService")
public class MainServiceimpl extends EgovAbstractServiceImpl implements MainService {

	@Resource(name="MainDAO") MainDAO mdao;


	@Override
	public void confirmRoom(HashMap<String, Object> paramMapDBool) {
		mdao.confirmRoom(paramMapDBool);
	}


	@Override
	public void imglist(HashMap<String, Object> paramMap) {
		mdao.imglist(paramMap);		
	}
	
	@Override
	public ArrayList<Integer> remainList(String checkin, String checkout, String kind) {
		ArrayList<Integer> remainRoomList = new ArrayList<>();
		ArrayList<Integer> bookedRoomList = new ArrayList<>();
		
		HashMap<String, Object> paramMapRemain = new HashMap<String, Object>();
		paramMapRemain.put("kind", kind);
		paramMapRemain.put("ref_cursor", null);
		mdao.selectRoomNum(paramMapRemain);
		
		ArrayList<HashMap<String,Object>> remainRoomListHash = 
				(ArrayList<HashMap<String, Object>>) paramMapRemain.get("ref_cursor");
		
		for( HashMap<String, Object> i : remainRoomListHash) {
			remainRoomList.add(Integer.parseInt( i.get("HOTELNUM").toString()));
		}
		
		HashMap<String, Object> paramMapBooked = new HashMap<String, Object>();
		paramMapBooked.put("checkin", checkin);
		paramMapBooked.put("checkout", checkout);
		paramMapBooked.put("kind", kind);
		paramMapBooked.put("ref_cursor", null);
		
		mdao.bookedRoom(paramMapBooked);
		
		ArrayList<HashMap<String,Object>> bookedRoomListHash = 
				(ArrayList<HashMap<String, Object>>) paramMapBooked.get("ref_cursor");
		
		for( HashMap<String, Object> i : bookedRoomListHash) {
			bookedRoomList.add(Integer.parseInt( i.get("HOTELNUM").toString()));
		}
	
		remainRoomList.removeAll(bookedRoomList);

		return remainRoomList;
	}


	@Override
	public void insertRoom(ArrayList<Integer> remainList, String id, ArrayList<Integer> userNumList, String checkin,
			String checkout) {
		
		
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("id", id);
		paramMap.put("maxBookNum", null);
		mdao.insertBook(paramMap);
		
		
		for(int i = 0 ; i<userNumList.size(); i++) {
			HashMap<String, Object> paramMap1 = new HashMap<String, Object>();
			paramMap1.put("booknum", Integer.parseInt(paramMap.get("maxBookNum").toString()));
			paramMap1.put("hotelnum", remainList.get(i));
			paramMap1.put("usernum", userNumList.get(i));
			paramMap1.put("checkin", checkin);
			paramMap1.put("checkout", checkout);
			
			mdao.insertRoom(paramMap1);
		}
		
	}

	
}
