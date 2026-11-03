package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.travel.dao.MemberDAO;
import com.travel.dto.MemberDTO;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// login.jsp에서 전달되는 필드값 가져오기
		request.setCharacterEncoding("UTF-8");
    	// 입력양식에 입력한 필드 값들을 가져오기
    	String mid = request.getParameter("mid");
		String pwd = request.getParameter("pwd");
		MemberDAO dao = new MemberDAO();
		MemberDTO member = dao.login(mid, pwd);
		if (member != null) { // 로그인 성공. 회원정보를 세션 객체에 저장. 다른 페이지에 회원정보 공유
			HttpSession session = request.getSession();
			session.setAttribute("USER", member);
			response.sendRedirect("index.jsp");
		} else {
			request.setAttribute("ERROR", "아이디 또는 비밀번호가 맞지 않습니다.");
			RequestDispatcher rd = request.getRequestDispatcher("member/loginFail.jsp");
			rd.forward(request, response); // 해당 페이지로 request, response 객체를 가지고 이동			
		}
	}

}

















