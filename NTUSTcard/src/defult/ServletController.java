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

    	
    	
        // �U�����������r�ॿ�T���
        response.setContentType("text/html; charset=big5");
        request.setCharacterEncoding("big5");

        String action = request.getParameter("action"); // ���o�ثe�ϥΪ̭n���檺�ʧ@

        // �Y�ϥΪ̨����|�����ҡA�B�ثe��"�ʧ@"���O�n�i�����ҡA�N����n�J�e��
        if (!isAuthenticated(request) && !("login".equals(action))) {//"authenticate"->"login"
            doLogin(request, response);
            return;
        }
        if ("login".equals(action)) {//"authenticate"->"login"
        	ntustmodel.doAuthenticate(request, response);  // ���樭������
            String targetURL = ntustmodel.getView();// ���o����e������ (view)
            if ((targetURL != null) && (targetURL != "")) {
                gotoPage(targetURL, request, response);
            }
        }
        else if ("logout".equals(action)) {
            doLogout(request, response);        // ����n�X
        }
        else if ("Sign Up".equals(action)) {
        	toSignUp(request, response);
            return;
        }
        else if ("signUp".equals(action)) {
        	ntustmodel.doSignUp(request, response);  // �i����U
            String targetURL = ntustmodel.getView();// ���o����e������ (view)
            if ((targetURL != null) && (targetURL != "")) {
                gotoPage(targetURL, request, response);
            }
        }
        else {
            response.sendError(HttpServletResponse.SC_NOT_IMPLEMENTED);
        }
        
    }

    // �੹���w�����}
    private void gotoPage(String targetURL, HttpServletRequest request,
            HttpServletResponse response)
            throws IOException, ServletException {
        RequestDispatcher rd;
        rd = getServletContext().getRequestDispatcher("/" + targetURL);
        rd.forward(request, response);
    }

    // �Ǧ^�ثe���ϥΪ̬O�_�w�g�q�L�������ҡ]�O�_�w�n�J�^
    // �u�n�ˬd userInfo ����O�_�s�b�N��o���O�_�w�n�J
    private boolean isAuthenticated(HttpServletRequest request) {
        boolean result = false;
        HttpSession session = request.getSession();
        if (session.getAttribute("userInfo") != null)
            result = true;
        return result;
    }

    // �੹�n�J�e��
    private void doLogin(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        gotoPage("Login.jsp", request, response);
    }
    // �੹���U�e��
    private void toSignUp(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        gotoPage("SignUp.jsp", request, response);
    }
    // �n�X
    private void doLogout(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        HttpSession session = request.getSession();
        session.removeAttribute("userInfo");   // �⨭�����ҺX���M��
        session.invalidate(); // �M�� session ���Ҧ� attributes �P����ô�����Y
        doLogin(request, response);             // �A�੹�n�J�e��
    }
    

}