package com.recruit.persistence;

import java.util.Date;

import com.recruit.domain.UserVO;
import com.recruit.dto.LoginDTO;

/*public interface UserDAO {

	public UserVO login(LoginDTO dto)throws Exception;

  public void keepLogin(String uid, String sessionId, Date next);
  
  public UserVO checkUserWithSessionKey(String value);	
}*/



//uid¸¦ id·Î

public interface UserDAO {

	public UserVO login(LoginDTO dto)throws Exception;

  public void keepLogin(String id, String sessionId, Date next);
  
  public UserVO checkUserWithSessionKey(String value);	
}


