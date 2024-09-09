package vn.iotstart.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns= {"/home"})
public class HomeController extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		//Nhận dữ liệu từ form, url request
		String ten = req.getParameter("ten");
		String holot = req.getParameter("holot");
		
		PrintWriter out = resp.getWriter();
		
		out.println("Xin chào "+ ten + " " + holot);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		String ten = req.getParameter("ten");
		String holot = req.getParameter("holot");
		
		// jsp truy xuất đến ten1
		req.setAttribute("ten1", ten);
		req.setAttribute("holot1", holot);
		
		RequestDispatcher rd = req.getRequestDispatcher("/Home.jsp");
		rd.forward(req, resp);
	}
}
