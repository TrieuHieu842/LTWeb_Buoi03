package model;

public interface userService {
	void insert(user user);
	boolean register(String email, String password, String username, String 
	fullname, String phone);
	boolean checkExistEmail(String email);
	boolean checkExistUsername(String username);
	boolean checkExistPhone(String phone);
}
