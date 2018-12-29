package defult;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Action {
	protected String view;
	
	public void doAuthenticate(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
		String userName = request.getParameter("username");
        String password = request.getParameter("password");

        // 若身分驗證無誤，就建立 userInfo 物件，並指定一個 attribute 與之繫結
        if ("123".equals(password)) {
            HttpSession session = request.getSession();

            UserInfoBean bean = new UserInfoBean();
            bean.setUserName(userName);
            bean.setPassword(password);

            session.setAttribute("userInfo", bean);
            view = "/Welcome.jsp";
        }
        else {  // 驗證失敗
            view = "/LoginError.jsp";
        }
    }
	
	
	public void setView(String aView)
    {
        view = aView;
    }
	
	public String getView()
    {
        return view;
    }
}
