package defult;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;
import javax.servlet.http.*;

@WebServlet(
		urlPatterns = { "/main" }, 
		initParams = { 
				@WebInitParam(name = "defultPara", value = "this is defult parameter")
		})
public class ServletController extends HttpServlet {
	protected NTUSTmodle ntustmodel=new NTUSTmodle();
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    	
    	
        // 下面兩行讓中文字能正確顯示
        response.setContentType("text/html; charset=big5");
        request.setCharacterEncoding("big5");

        String action = request.getParameter("action"); // 取得目前使用者要執行的動作

        // 若使用者身分尚未驗證，且目前的"動作"不是要進行驗證，就切到登入畫面
        if (!isAuthenticated(request) && !("authenticate".equals(action))) {
            doLogin(request, response);
            return;
        }
        if ("authenticate".equals(action)) {
        	ntustmodel.doAuthenticate(request, response);  // 執行身分驗證
            String targetURL = ntustmodel.getView();// 取得欲轉送的頁面 (view)
            if ((targetURL != null) && (targetURL != "")) {
                gotoPage(targetURL, request, response);
            }
        }
        else if ("logout".equals(action)) {
            doLogout(request, response);        // 執行登出
        }
        else {
            response.sendError(HttpServletResponse.SC_NOT_IMPLEMENTED);
        }
    }

    // 轉往指定的網址
    private void gotoPage(String targetURL, HttpServletRequest request,
            HttpServletResponse response)
            throws IOException, ServletException {
        RequestDispatcher rd;
        rd = getServletContext().getRequestDispatcher("/" + targetURL);
        rd.forward(request, response);
    }

    // 傳回目前的使用者是否已經通過身分驗證（是否已登入）
    // 只要檢查 userInfo 物件是否存在就能得知是否已登入
    private boolean isAuthenticated(HttpServletRequest request) {
        boolean result = false;
        HttpSession session = request.getSession();
        if (session.getAttribute("userInfo") != null)
            result = true;
        return result;
    }

    // 轉往登入畫面
    private void doLogin(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        gotoPage("Login.jsp", request, response);
    }

    // 登出
    private void doLogout(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        HttpSession session = request.getSession();
        session.removeAttribute("userInfo");   // 把身分驗證旗號清掉
        session.invalidate(); // 清除 session 內所有 attributes 與物件的繫結關係
        doLogin(request, response);             // 再轉往登入畫面
    }

}