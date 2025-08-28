package buoi3.vn.iotstar;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private final String serverName ="MSI\\TRIEUHIEU";
	private final String dbName = "LTWeb";
	private final String portNumber = "1433";
	private final String instance = "";
	private final String userID = "";
	private final String password = "";

	// Kết nối SQL Server với Windows Authentication
	public Connection getConnectionW() throws Exception {
		String url = "jdbc:sqlserver://" + serverName + "\\" + instance + ":" + portNumber
				+ ";integratedSecurity=true;databaseName=" + dbName;
		if (instance == null || instance.trim().isEmpty())
			url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";encrypt=True;trustServerCertificate=True;integratedSecurity=true;databaseName="
					+ dbName;
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		return DriverManager.getConnection(url);
	}

	public static void main(String[] args) {
		try {
			System.out.println(new DBConnect().getConnectionW());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
