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
				// �Y�������ҵL�~�A�N�إ� userInfo ����A�ë��w�@�� attribute �P��ô��
				UserInfoBean bean = new UserInfoBean();
				bean.setUserName(userName);
				bean.setPassword(password);
				bean.setName(userInfos.get(i).name);
				bean.setBirthday(userInfos.get(i).birthday);
				bean.setDepart(userInfos.get(i).depart);
				bean.setInstitute(userInfos.get(i).institute);
				bean.setMail(userInfos.get(i).mail);
				session.setAttribute("userInfo", bean);
				view = "/Welcome.jsp";
				userIndex = i;
				return;
			}
		}
		view = "/LoginError.jsp";
	}
	// �੹���U�e��
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
    
    // �੹�n�J�e��
    public void backToLogin(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
    	view = "/Login.jsp";
    }
    
    //建立新的密碼
    public void creatNewPW(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
    	view = "/NewPassword.jsp";
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
		session.setAttribute("userInfo", bean);
		
		DBController dbc = new DBController();
		dbc.setUserData(bean);
		view = "/Welcome.jsp";
	}
	public void updateProfile(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		HttpSession session = request.getSession();
		String ID = userInfos.get(userIndex).id;
		
		String depart = request.getParameter("depart");
		String institute = request.getParameter("institute");
		String hobby = request.getParameter("hobby");
		
		DBController dbc = new DBController();
		dbc.modifyProfileData(ID,depart,institute,hobby);
		view = "/Welcome.jsp";
	}
	public void updatePrivacyData(HttpServletRequest request, HttpServletResponse response)
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
		session.setAttribute("userInfo", bean);
		
		DBController dbc = new DBController();
		dbc.modifyPrivacyDataData(bean);
		view = "/Welcome.jsp";
	}
	// �n�X
    public void doLogout(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        HttpSession session = request.getSession();
        session.removeAttribute("userInfo");   // �⨭�����ҺX���M��
        session.invalidate(); // �M�� session ���Ҧ� attributes �P����ô�����Y
        view = "/Login.jsp";           // �A�੹�n�J�e��
    }
    
    
	public void setView(String aView) {
		view = aView;
	}

	public String getView() {
		return view;
	}
}
