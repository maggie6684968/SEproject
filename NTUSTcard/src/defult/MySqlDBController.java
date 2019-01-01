package defult;

import java.sql.*;
import java.util.ArrayList;

public class MySqlDBController extends DBController {
	public MySqlDBController() {
		try {
			// Class 的靜態 forName() 方法實現動態加載類別
			Class.forName("com.mysql.jdbc.Driver");
			// 3306|MySQL開放此端口
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ntustsql?serverTimezone=UTC", "root", "1234");
			st = con.createStatement();

		} catch (Exception ex) {
			System.out.println("Error: " + ex);
		}
	}
}
