package model;

public interface userDao {
	void insert(user user);
	boolean checkExistEmail(String email);
	boolean checkExistUsername(String username);
	boolean checkExistPhone(String phone);
	boolean updatePassword(String email, String newPassword);
}
