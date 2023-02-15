package members.service;

import members.dao.MembersDAO;

public class MembersServiceImp implements MembersService{

	private MembersDAO memDao;
	
	public MembersServiceImp() {
		// TODO Auto-generated constructor stub
	}
	
	public void setMemDao(MembersDAO memDao) {
		this.memDao = memDao;
	}
}
