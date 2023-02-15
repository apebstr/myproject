package members.dao;

import org.mybatis.spring.SqlSessionTemplate;

public class MembersDaoImp implements MembersDAO {
	
	private SqlSessionTemplate sqlSession;
	
	public MembersDaoImp() {
		// TODO Auto-generated constructor stub
	}

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
}

