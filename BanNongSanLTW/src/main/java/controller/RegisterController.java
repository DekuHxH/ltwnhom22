package controller;

import javax.servlet.http.HttpServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.User;
import model.RegisterModel;

public class RegisterController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/view/client/register.jsp");
		dispatcher.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");

		// Lấy ngày tháng năm hiện tại
		java.sql.Date date = new java.sql.Date(System.currentTimeMillis());

		String userName = request.getParameter("userName");
		String userPassword = request.getParameter("userPassword");
		String emailAddress = request.getParameter("emailAddress");
		String phoneNumber = request.getParameter("phoneNumber");
		String name = request.getParameter("name");
		String created = date.toString();

		User user = new User(userName, userPassword, emailAddress, phoneNumber, name, created);

		if (RegisterModel.checkRegister(user)) {
			try {
				HttpSession session = request.getSession();
				session.setAttribute("username", userName);
				
				Thread.sleep(3000);
				
				RequestDispatcher rd = request.getRequestDispatcher("/");
				rd.forward(request, response);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			
		} else {
			request.setAttribute("thongBaoLoiRegister", "Tạo tài khoản thất bại. Hãy thử lại !!!");
			RequestDispatcher rd = request.getRequestDispatcher("/view/client/register.jsp");
			rd.forward(request, response);
		}
	}

}
