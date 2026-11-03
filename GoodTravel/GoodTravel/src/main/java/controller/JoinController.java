package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;

import com.travel.dao.MemberDAO;

/**
 * Servlet implementation class JoinController
 */
@WebServlet("/JoinController")  // url-patthern : 이 서블릿에 대한 URL 주소명 
public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinController() {
        super();
        // 초기화 작업
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override // method="get" 인 입력양식에서 요청이 들어올 때 호출되는 함수 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override // method="post" 인 입력양식에서 요청이 들어올 때 호출되는 함수
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	// 한글 입력값을 정상적으로 읽어오기 위해
    	request.setCharacterEncoding("UTF-8");
    	// 입력양식에 입력한 필드 값들을 가져오기
    	String mid = request.getParameter("mid");
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		String telno = request.getParameter("telno");
		String role = "user";
		LocalDate local = LocalDate.now();
		String regDate = local.toString();
		
		MemberDAO dao = new MemberDAO();
		// 아이디가 중복인지 체크하기
		if (dao.isExists(mid)) {
			request.setAttribute("ERROR", "이미 존재하는 아이디입니다. 아이디: " + mid);
			RequestDispatcher rd = request.getRequestDispatcher("member/joinFail.jsp");
			rd.forward(request, response); // 해당 페이지로 request, response 객체를 가지고 이동
			return;
		}
		int result = dao.signUp(mid,name,pwd,email,telno,role,regDate);
		if (result == 1) {
			// 다른 페이지로 이동하기
			// response.sendRedirect("이동할 페이지") : 이동 페이지로 새로운 요청
			// 이 경우에는 request, response 객체가 전달되지 않음. 새로운 요청이 생김 
			response.sendRedirect("member/joinSuccess.jsp");
		} else {
			// <jsp:forward> 액션 태그로 이동 
			request.setAttribute("ERROR", "회원가입 중에 오류가 발생했습니다. INSERT 오류");
			RequestDispatcher rd = request.getRequestDispatcher("member/joinFail.jsp");
			rd.forward(request, response); // 해당 페이지로 request, response 객체를 가지고 이동
		}
	}

}






















