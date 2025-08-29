package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class userDaoImpl implements userDao {
	public Connection conn = null;
	public PreparedStatement ps = null;
	public ResultSet rs = null;
	public void insert(user user) {
		String sql = "INSERT INTO [users](email, username, fullname, password, avatar, roleid,phone,createddate) VALUES (?,?,?,?,?,?,?,?)";
		try {
		conn = new DBConnection().getConnection();
		ps = conn.prepareStatement(sql);
		ps.setString(1, user.getEmail());
		ps.setString(2, user.getUserName());
		ps.setString(3, user.getFullName());
		ps.setString(4, user.getPassWord());
		ps.setString(5, user.getAvatar());
		ps.setInt(6,user.getRoleid());
		ps.setString(7,user.getPhone());
		ps.setDate(8, user.getCreatedDate());
		ps.executeUpdate();
		} catch (Exception e) {e.printStackTrace();}
		}
	@Override
	public boolean checkExistEmail(String email) {
		boolean duplicate = false;
		String query = "select * from [users] where email = ?";
		try {
		conn = new DBConnection().getConnection();
		ps = conn.prepareStatement(query);
		ps.setString(1, email);
		rs = ps.executeQuery();
		if (rs.next()) {
		duplicate = true;
		}
		ps.close();
		conn.close();
		} catch (Exception ex) {}
		return duplicate;
	}
	@Override
	public boolean checkExistUsername(String username) {
		boolean duplicate = false;
		String query = "select * from [users] where username = ?";
		try {
		conn = new DBConnection().getConnection();
		ps = conn.prepareStatement(query);
		ps.setString(1, username);
		rs = ps.executeQuery();
		if (rs.next()) {
		duplicate = true;
		}
		ps.close();
		conn.close();
		} catch (Exception ex) {}
		return duplicate;
	}
	@Override
	public boolean checkExistPhone(String phone) {
		// TODO Auto-generated method stub
		return false;
	}
}
