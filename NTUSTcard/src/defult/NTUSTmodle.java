package defult;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.ArrayList;

public class NTUSTmodle {
	
	protected String view;
	DBController dbc = new DBController();
	ArrayList<UserInfoBean> userInfos = dbc.getUserData();
	ArrayList<PostDataBean> postDatas = dbc.getPostData();
	int userIndex;
	
	public void doAuthenticate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
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
    
    // 轉往登入畫面
    public void backToLogin(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
    	view = "/Login.jsp";
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
