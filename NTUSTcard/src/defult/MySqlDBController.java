package defult;

import java.sql.*;
import java.util.ArrayList;

public class MySqlDBController extends DBController {
	public MySqlDBController() {
		try {
			// Class ���R�A forName() ��k��{�ʺA�[�����O
			Class.forName("com.mysql.jdbc.Driver");
			// 3306|MySQL�}�񦹺ݤf
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ntustsql?serverTimezone=UTC", "root", "1234");
			st = con.createStatement();

		} catch (Exception ex) {
			System.out.println("Error: " + ex);
		}
	}
}
