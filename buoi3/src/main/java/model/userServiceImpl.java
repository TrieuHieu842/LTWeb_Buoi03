package model;

public class userServiceImpl implements userService {
	userDao userDao = new userDaoImpl();

	@Override
	public void insert(user user) {
		userDao.insert(user);
		
	}

	@Override
	public boolean register(String email, String password, String username, String fullname, String phone) {
		if (userDao.checkExistUsername(username)) {
			return false;
			}
			long millis=System.currentTimeMillis(); 
			java.sql.Date date=new java.sql.Date(millis);
			userDao.insert(new user(email, username, fullname,password, 5,phone,date));
			return true;
	}

	@Override
	public boolean checkExistEmail(String email) {
		return userDao.checkExistEmail(email);
	}

	@Override
	public boolean checkExistUsername(String username) {
		return userDao.checkExistUsername(username);
	}

	@Override
	public boolean checkExistPhone(String phone) {
		return userDao.checkExistPhone(phone);
	}
}
