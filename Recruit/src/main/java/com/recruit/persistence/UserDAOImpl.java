package com.recruit.persistence;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.recruit.domain.UserVO;
import com.recruit.dto.LoginDTO;

/*@Repository
public class UserDAOImpl implements UserDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "org.zerock.mapper.UserMapper";

	@Override
	public UserVO login(LoginDTO dto) throws Exception {

		return session.selectOne(namespace + ".login", dto);
	}

	@Override
	public void keepLogin(String uid, String sessionId, Date next) {

		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("uid", uid);
		paramMap.put("sessionId", sessionId);
		paramMap.put("next", next);

		session.update(namespace + ".keepLogin", paramMap);

	}

	@Override
	public UserVO checkUserWithSessionKey(String value) {

		return session.selectOne(namespace + ".checkUserWithSessionKey", value);
	}
}*/

@Repository
public class UserDAOImpl implements UserDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "org.zerock.mapper.UserMapper";

	@Override
	public UserVO login(LoginDTO dto) throws Exception {

		return session.selectOne(namespace + ".login", dto);
	}

	//uid는 id(매개변수 부분이랑 paramMap부분)
	@Override
	public void keepLogin(String id, String sessionId, Date next) {

		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("id", id);
		paramMap.put("sessionId", sessionId);
		paramMap.put("next", next);

		session.update(namespace + ".keepLogin", paramMap);

	}

	@Override
	public UserVO checkUserWithSessionKey(String value) {

		return session.selectOne(namespace + ".checkUserWithSessionKey", value);
	}
}


