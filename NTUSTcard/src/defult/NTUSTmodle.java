package defult;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.ArrayList;

public class NTUSTmodle {
	
	protected String view;
	//DBController dbc = new H2DBController();
	DBController dbc = new MySqlDBController();
	ArrayList<UserInfoBean> userInfos = dbc.getUserData();
	ArrayList<PostDataBean> postDatas = dbc.getPostData();
	int userIndex;
	
	public DBController getDBController() {
		return dbc;
	}
	public void doAuthenticate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		ArrayList<UserInfoBean> userInfos = dbc.getUserData();
		ArrayList<PostDataBean> postDatas = dbc.getPostData();
		
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		
		for (int i = 0; i < userInfos.size(); i++) {
			if((userInfos.get(i).id).equals(userName)&&(userInfos.get(i).password).equals(password))
			{
				HttpSession session = request.getSession();
				// 若身分驗證無誤，就建立 userInfo 物件，並指定一個 attribute 與之繫結
				UserInfoBean bean = new UserInfoBean();
				bean.setUserName(userName);
				bean.setPassword(password);
				bean.setName(userInfos.get(i).name);
				bean.setBirthday(userInfos.get(i).birthday);
				bean.setDepart(userInfos.get(i).depart);
				bean.setInstitute(userInfos.get(i).institute);
				bean.setMail(userInfos.get(i).mail);
				bean.setHobby(userInfos.get(i).hobby);
				bean.setcoin(userInfos.get(i).coin);
				
				session.setAttribute("userInfo", bean);
				view = "/Welcome.jsp";
				userIndex = i;
				return;
			}
		}
		view = "/LoginError.jsp";
	}
	// 轉往註冊畫面
    public void toSignUp(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
    	view = "/SignUp.jsp";
    }
    public void toFamily(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
    	view = "/Family.jsp";      
    }
    public void toBoard(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
    	view = "/Board.jsp";      
    }
    public void toHome(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
    	view = "/Welcome.jsp";      
    }
    public void toSecrecy(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
    	view = "/Secrecy.jsp";      
    }
    public void toProfile(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
    	view = "/Profile.jsp";      
    }
    public void toCard(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
    	view = "/Card.jsp";      
    }
    public void toComment(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
    	view = "/Comment.jsp";      
    }
    
    // 轉往登入畫面
    public void backToLogin(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
    	view = "/Login.jsp";
    }
    public void toAD(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
    	view = "/AD.jsp";
    }
    
	public void doSignUp(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		HttpSession session = request.getSession();
		UserInfoBean bean = new UserInfoBean();
		bean.setUserName(request.getParameter("username"));
		bean.setPassword(request.getParameter("password"));
		bean.setName(request.getParameter("realName"));
		bean.setBirthday(request.getParameter("birthday"));
		bean.setDepart(request.getParameter("depart"));
		bean.setInstitute(request.getParameter("institute"));
		bean.setMail(request.getParameter("mail"));
		bean.setHobby(request.getParameter("hobby"));
		
		session.setAttribute("userInfo", bean);
		
		DBController dbc = new DBController();
		dbc.setUserData(bean);
		view = "/Welcome.jsp";
	}
	public void updateProfile(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		HttpSession session = request.getSession();
		UserInfoBean bean = new UserInfoBean();
		
		String ID = userInfos.get(userIndex).id;
		String depart = request.getParameter("depart");
		String institute = request.getParameter("institute");
		String hobby = request.getParameter("hobby");
		
		bean.setUserName(userInfos.get(userIndex).id);
		bean.setPassword(userInfos.get(userIndex).password);
		bean.setName(userInfos.get(userIndex).name);
		bean.setBirthday(userInfos.get(userIndex).birthday);
		bean.setMail(userInfos.get(userIndex).mail);
		bean.setcoin(userInfos.get(userIndex).coin);
		
		bean.setDepart(depart);
		userInfos.get(userIndex).depart = depart;
		bean.setInstitute(institute);
		userInfos.get(userIndex).institute = institute;
		bean.setHobby(hobby);
		userInfos.get(userIndex).hobby = hobby;
		
		session.setAttribute("userInfo", bean);
		
		DBController dbc = new DBController();
		dbc.modifyProfileData(ID,depart,institute,hobby);
		view = "/Welcome.jsp";
	}
	public void updatePrivacyData(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		HttpSession session = request.getSession();
		UserInfoBean bean = new UserInfoBean();
		bean.setUserName(userInfos.get(userIndex).id);
		bean.setPassword(userInfos.get(userIndex).password);
		bean.setMail(userInfos.get(userIndex).mail);
		bean.setInstitute(userInfos.get(userIndex).institute);
		bean.setName(userInfos.get(userIndex).name);
		bean.setBirthday(userInfos.get(userIndex).birthday);
		bean.setDepart(userInfos.get(userIndex).depart);
		bean.setHobby(userInfos.get(userIndex).hobby);
		bean.setcoin(userInfos.get(userIndex).coin);
		
		String ID = userInfos.get(userIndex).id;
		String oldPassword = request.getParameter("oldPassword");
		String newPassword = request.getParameter("newPassword");
		String verifyPassword = request.getParameter("verifyPassword");
		String mail = request.getParameter("email");
		boolean modifyPassword = false;
		boolean modifymail = false;
		
		if(oldPassword.equals(bean.password)) {
			if(newPassword.equals(verifyPassword)) {
				modifyPassword = true;
				
			}else {
				modifyPassword = false;
			}
		}else {
			modifyPassword = false;
		}
		if(!mail.equals(""))
			modifymail = true;
		System.out.print(modifyPassword);System.out.print(modifymail);
		
		if(modifyPassword||modifymail) {
			
			if(modifyPassword)
				bean.setPassword(newPassword);
			if(modifymail)
				bean.setMail(mail);
			if(!modifymail)
				bean.setMail(userInfos.get(userIndex).mail);
			if(!modifyPassword)
				bean.setPassword(userInfos.get(userIndex).password);
			
			System.out.print(modifyPassword);System.out.print(modifymail);
			
			DBController dbc = new DBController();
			dbc.modifySecrecyData(ID,newPassword,mail);
			userInfos.get(userIndex).password=bean.password;
			userInfos.get(userIndex).mail=bean.mail;
			
			session.setAttribute("userInfo", bean);
			view = "/Welcome.jsp";
		} else view = "/Secrecy.jsp";
	}
	public void postArticle(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		HttpSession session = request.getSession();
		PostDataBean bean = new PostDataBean();
		bean.setAuthor((userInfos.get(userIndex).name));
		bean.setContent(request.getParameter("Content"));
		session.setAttribute("postData", bean);
		
		DBController dbc = new DBController();
		dbc.setPostData(bean);
		view = "/Board.jsp";
	}
	public void postAD(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		HttpSession session = request.getSession();
		PostDataBean bean = new PostDataBean();
		bean.setAuthor((userInfos.get(userIndex).name));
		bean.setPriority(Integer.valueOf(request.getParameter("level")));
		bean.setContent(request.getParameter("Content"));
		session.setAttribute("postData", bean);
		
		userInfos.get(userIndex).coin -=10 * Integer.valueOf(request.getParameter("level"));
		
		UserInfoBean Bean = new UserInfoBean();
		Bean.setUserName(userInfos.get(userIndex).id);
		Bean.setPassword(userInfos.get(userIndex).password);
		Bean.setMail(userInfos.get(userIndex).mail);
		Bean.setInstitute(userInfos.get(userIndex).institute);
		Bean.setName(userInfos.get(userIndex).name);
		Bean.setBirthday(userInfos.get(userIndex).birthday);
		Bean.setDepart(userInfos.get(userIndex).depart);
		Bean.setHobby(userInfos.get(userIndex).hobby);
		Bean.setcoin(userInfos.get(userIndex).coin);
		
		session.setAttribute("userInfo", Bean);
		DBController dbc = new DBController();
		dbc.setPostData(bean);
		dbc.spendCoin(Bean.coin, Bean.id);
		view = "/Welcome.jsp";
	}
	
	
	// 登出
    public void doLogout(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        HttpSession session = request.getSession();
        session.removeAttribute("userInfo");   // 把身分驗證旗號清掉
        session.invalidate(); // 清除 session 內所有 attributes 與物件的繫結關係
        view = "/Login.jsp";           // 再轉往登入畫面
    }
    
	public void setView(String aView) {
		view = aView;
	}

	public String getView() {
		return view;
	}
}
