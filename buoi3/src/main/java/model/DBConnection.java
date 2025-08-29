package model;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    private final String serverName = "MSI\\TRIEUHIEU";
    private final String dbName = "LTWeb";
    private final String portNumber = "1433";
    private final String instance = ""; 
    private final String userID = "sa";
    private final String password = "123456";

    public Connection getConnection() throws Exception {
        String url;
        if (instance == null || instance.trim().isEmpty()) {
            url = "jdbc:sqlserver://" + serverName + ":" + portNumber +
                  ";encrypt=true;trustServerCertificate=true;databaseName=" + dbName;
        } else {
            url = "jdbc:sqlserver://" + serverName + "\\" + instance + ":" + portNumber +
                  ";encrypt=true;trustServerCertificate=true;databaseName=" + dbName;
        }

        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url, userID, password);
    }

    public static void main(String[] args) {
        try {
            Connection conn = new DBConnection().getConnection();
            if (conn != null) {
                System.out.println("Kết nối thành công!");
                conn.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
