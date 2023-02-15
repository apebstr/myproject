package members.service;

import members.dao.MembersDAO;
import members.dto.MembersDTO;

public class MembersServiceImp implements MembersService{

	private MembersDAO memDao;
	
	public MembersServiceImp() {
		// TODO Auto-generated constructor stub
	}
	
	public void setMemDao(MembersDAO memDao) {
		this.memDao = memDao;
	}

	@Override
	public int joinProcess(MembersDTO memDTO) {
		return memDao.join(memDTO);
	}
}
