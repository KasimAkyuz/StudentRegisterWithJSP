package com.akyuz.Servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.akyuz.dao.RegisterDAO;
import com.akyuz.db.ConnectionProvider;
import com.akyuz.entity.Student;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String fname=req.getParameter("fname");
			String email=req.getParameter("email");
			String dob=req.getParameter("dob");
			String adress=req.getParameter("adress");
			String phno=req.getParameter("phno");
			String gender=req.getParameter("gender");
			String password=req.getParameter("password");
			
			Student student=new Student(fname, email, dob, adress, phno, gender, password);
			
			RegisterDAO registerDAO = new RegisterDAO(ConnectionProvider.getConnection());
			boolean f =	registerDAO.studentRegister(student);
			HttpSession session = req.getSession();
			if(f) {
				session.setAttribute("sucmsg", "Login Success");
				resp.sendRedirect("index.jsp");
				
			}else {
				session.setAttribute("errmsg", "wrong!!");
				resp.sendRedirect("index.jsp");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	

}
