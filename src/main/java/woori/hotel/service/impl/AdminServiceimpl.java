package woori.hotel.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import woori.hotel.dao.AdminDAO;
import woori.hotel.service.AdminService;

@Service(value="AdminService")
public class AdminServiceimpl extends EgovAbstractServiceImpl implements AdminService{
	@Resource(name="AdminDAO") AdminDAO adao;

}