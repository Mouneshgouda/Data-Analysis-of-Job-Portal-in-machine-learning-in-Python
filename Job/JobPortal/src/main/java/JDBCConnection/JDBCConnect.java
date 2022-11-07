package JDBCConnection;
import java.sql.Connection;
import java.sql.DriverManager;
public class JDBCConnect {
		public static Connection getConnection() {
			Connection conn = null;
			try {
				String url = "jdbc:oracle:thin:@localhost:1521:ORCL";
				String user = "hr";
				String pass = "hr";

				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection(url, user, pass);
				System.out.printf("jdbc test %s",conn);
			} catch (Exception e) {
				System.out.println(e);
			}
			return conn;
		}
	}


