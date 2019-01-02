package defult;

import java.sql.*;
import java.util.ArrayList;

public class DBController {
	protected Connection con;
	protected Statement st;
	protected ResultSet rs;

	public DBController() {
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

		public ArrayList<UserInfoBean> getUserData() {
			ArrayList<UserInfoBean> result = new ArrayList<UserInfoBean>();
			try {
				String query = "select * from user";
				rs = st.executeQuery(query);
				System.out.println("Records for Database");
				while (rs.next()) {
					UserInfoBean data = new UserInfoBean();
					data.id = rs.getString("id");
					data.password = rs.getString("password");
					data.name = rs.getString("name");
					data.mail = rs.getString("mail");
					data.institute = rs.getString("institute");
					data.depart = rs.getString("depart");
					data.birthday = rs.getString("birthday");
					data.coin = rs.getInt("coin");
					data.hobby = rs.getString("hobby");
					result.add(data);
				}
				return result;
			} catch (Exception ex) {
				System.out.println(ex);
			}
			return result;
		}
		public void setUserData(UserInfoBean data) {
			try {
				
				String SQL = "INSERT INTO user " +

				"(id,password,mail,name,institute,depart,birthday,coin,hobby)" +

         		" VALUES ('" + data.id + "','" + data.password + "','" + data.mail + "','" + data.name + "','"
         					 + data.institute + "','" + data.depart + "','" + data.birthday
         					 + "','" + data.coin + "','" + data.hobby + "')";
         		st.execute(SQL);
				
			} catch (Exception ex) {
				System.out.println(ex);
			}
		}
		public void modifyProfileData(String ID, String depart,String institute, String hobby) {
			try {
				
				String SQL = "UPDATE user SET institute ='" +
						institute + "', depart ='" + depart + "', hobby ='"
						+ hobby + "' WHERE id='" + ID + "'";
				st.execute(SQL);
				
			} catch (Exception ex) {
				System.out.println(ex);
			}
		}
		public void modifySecrecyData(String ID,String newPassword,String mail) {
			try {
				String SQL="";
				if((!newPassword.equals(""))&&(!mail.equals(""))) {
					SQL = "UPDATE user SET password ='" +
							newPassword + "', mail ='" + mail + "' WHERE id='" + ID + "'";
					
				} else if((!newPassword.equals(""))&&(mail.equals(""))) {
					SQL = "UPDATE user SET password ='" +
							newPassword + "' WHERE id='" + ID + "'";
					
				} else if((newPassword.equals(""))&&(!mail.equals(""))) {
					SQL = "UPDATE user SET mail ='" +
							mail + "' WHERE id='" + ID + "'";
					
				}else return;
				st.execute(SQL);
				
			} catch (Exception ex) {
				System.out.println(ex);
			}
		}
		public ArrayList<PostDataBean> getPostData() {
			ArrayList<PostDataBean> result = new ArrayList<PostDataBean>();
			try {
				String query = "select * from post";
				rs = st.executeQuery(query);
				System.out.println("Records for Database");
				while (rs.next()) {
					PostDataBean data = new PostDataBean();
					data.id = rs.getInt("id");
					data.author = rs.getString("author");
					data.board = rs.getString("board");
					data.priority = rs.getInt("priority");
					data.content = rs.getString("content");
					data.postTime = rs.getString("postTime");
					data.heart = rs.getInt("heart");					
					data.comments = rs.getInt("comments");
					for(int i=0; i < data.comments;i++)
					{
						data.postComment(rs.getString("comment" +Integer.toString(i)));
					}
					result.add(data);
				}
			} catch (Exception ex) {
				System.out.println(ex);
			}	
			return result;
		}
		public void setPostData(PostDataBean data) {
			try {
				String SQL = "INSERT post " + "(id,author,board,priority,content,postTime,comments";
				
				for(int i = 0; i < data.comments;i++) {
					SQL += "," + "comment" + Integer.toString(i);
				}
				
				SQL += ") VALUES ('" + data.id + "','" + data.author + "','" + data.board + "','" + data.priority
						 + "','" + data.content + "','" + data.postTime + "','" + data.comments; 
         		
         		for(int i = 0; i < data.comments;i++) {
        			SQL += "','" + data.comment.get(i);
        		}
				
         		SQL += "')";
         		st.execute(SQL);
				
			} catch (Exception ex) {
				System.out.println(ex);
			}
		}
		public void spendCoin(int coin, String ID) {
			try{
				String SQL = "UPDATE user SET coin ='" +
					coin + "' WHERE id='" + ID + "'";
			st.execute(SQL);
			} catch (Exception ex) {
				System.out.println(ex);
			}
		}
		public ArrayList<String> getCommentData(int PostID) {
			ArrayList<String> result = new ArrayList<String>();
			try {
				String query = "select comments from post WHERE id = PostID";
				rs = st.executeQuery(query);
				System.out.println("Records for Database");
				int comments = rs.getInt("comments");
				for(int i=0; i < comments;i++)
				{
					result.add(rs.getString("comment" +Integer.toString(i)));
				}
			} catch (Exception ex) {
				System.out.println(ex);
			}	
			return result;
		}
		
}	
