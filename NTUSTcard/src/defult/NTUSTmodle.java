package defult;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.ArrayList;

public class NTUSTmodle {
	
	protected String view;
	DBController dbc = new DBController();
	ArrayList<UserInfoBean> userInfos = dbc.getData();
	
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
				session.setAttribute("userInfo", bean);
				view = "/Welcome.jsp";
				return;
			}
		}
		view = "/LoginError.jsp";
	}

	public void setView(String aView) {
		view = aView;
	}

	public String getView() {
		return view;
	}
}
