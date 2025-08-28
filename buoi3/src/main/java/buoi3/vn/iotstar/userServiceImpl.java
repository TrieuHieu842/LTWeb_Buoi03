package buoi3.vn.iotstar;


public class userServiceImpl implements userService {
	userDao userDao = new userDaoImpl();

	@Override
	public user login(String username, String password) {
		user user = this.get(username);
		if (user != null && password.equals(user.getPassWord())) {
			return user;
		}
		return null;
	}

	@Override
	public user get(String username) {
		return userDao.get(username);
	}

}
