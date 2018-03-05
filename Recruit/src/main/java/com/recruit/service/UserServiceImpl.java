package com.recruit.service;

import java.util.Date;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.recruit.domain.UserVO;
import com.recruit.dto.LoginDTO;
import com.recruit.persistence.UserDAO;

/*@Service
public class UserServiceImpl implements UserService {

  @Inject
  private UserDAO dao;

  @Override
  public UserVO login(LoginDTO dto) throws Exception {

    return dao.login(dto);
  }
  
  @Override
  public void keepLogin(String uid, String sessionId, Date next)
      throws Exception {
    
    dao.keepLogin(uid, sessionId, next);
    
  }

  @Override
  public UserVO checkLoginBefore(String value) {
    
    return dao.checkUserWithSessionKey(value);
  }
}*/


@Service
public class UserServiceImpl implements UserService {

  @Inject
  private UserDAO dao;

  @Override
  public UserVO login(LoginDTO dto) throws Exception {

    return dao.login(dto);
  }
  
  //uid¸¦ id
  @Override
  public void keepLogin(String id, String sessionId, Date next)
      throws Exception {
    
    dao.keepLogin(id, sessionId, next);
    
  }

  @Override
  public UserVO checkLoginBefore(String value) {
    
    return dao.checkUserWithSessionKey(value);
  }
}