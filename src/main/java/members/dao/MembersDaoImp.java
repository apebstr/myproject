package members.dao;

import org.mybatis.spring.SqlSessionTemplate;

import members.dto.MembersDTO;

public class MembersDaoImp implements MembersDAO {
	
	private SqlSessionTemplate sqlSession;
	
	public MembersDaoImp() {
		// TODO Auto-generated constructor stub
	}

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public int join(MembersDTO memDTO) {
		return sqlSession.insert("members.join", memDTO);
	}


}

