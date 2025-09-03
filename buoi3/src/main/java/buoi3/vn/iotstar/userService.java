package buoi3.vn.iotstar;

public interface userService {

	user login(String username, String password);
	user get(String username);

}
