package defult;

import java.sql.*;
import java.util.ArrayList;

public class H2DBController extends DBController {
	public H2DBController() {
		try {
			// Class 的靜態 forName() 方法實現動態加載類別
			Class.forName("org.h2.Driver");
			//與H2建立連線，使用者為sa，沒有密碼
			con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
			st = con.createStatement();

		} catch (Exception ex) {
			System.out.println("Error: " + ex);
		}
	}
	
}
