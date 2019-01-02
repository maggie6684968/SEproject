package defult;

import java.sql.*;
import java.util.ArrayList;

public class H2DBController extends DBController {
	public H2DBController() {
		try {
			// Class ���R�A forName() ��k��{�ʺA�[�����O
			Class.forName("org.h2.Driver");
			//�PH2�إ߳s�u�A�ϥΪ̬�sa�A�S���K�X
			con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
			st = con.createStatement();

		} catch (Exception ex) {
			System.out.println("Error: " + ex);
		}
	}
	
}
