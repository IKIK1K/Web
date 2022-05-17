package lab.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lab.web.model.MemberDAO;
import lab.web.model.MemberVO;

@WebServlet("/Member.do")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	MemberDAO dao;
    public MemberServlet() {
        super();
        dao = new MemberDAO();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		MemberVO mem = new MemberVO();
		mem.setUserId(userId); mem.setName(name); mem.setPassword(password);
		mem.setEmail(email); mem.setAddress(address);
		dao.insertMember(mem);
		request.setAttribute("message", "회원 가입 완료");
		request.getRequestDispatcher("/Login.jsp").forward(request, response);
	}

}
