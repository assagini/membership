package com.recruit.domain;

/*public class UserVO {

  private String uid;
  private String upw;
  private String uname;
  private int upoint;

  public String getUid() {
    return uid;
  }

  public void setUid(String uid) {
    this.uid = uid;
  }

  public String getUpw() {
    return upw;
  }

  public void setUpw(String upw) {
    this.upw = upw;
  }

  public String getUname() {
    return uname;
  }

  public void setUname(String uname) {
    this.uname = uname;
  }

  public int getUpoint() {
    return upoint;
  }

  public void setUpoint(int upoint) {
    this.upoint = upoint;
  }

  @Override
  public String toString() {
    return "UserVO [uid=" + uid + ", upw=" + upw + ", uname=" + uname + ", upoint=" + upoint + "]";
  }*/


//uname, upoint Áö¿üÀ½
public class UserVO {

	private String id;
	private String pw;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	@Override
	public String toString() {
		return "UserVO [id=" + id + ", pw=" + pw + "]";
	}
	
}
