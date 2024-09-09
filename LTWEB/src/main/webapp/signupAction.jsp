<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vn.iotstar.configs.DBConnectMySQL"%>
<%@ page import="java.sql.*"%>

<%
	request.setCharacterEncoding("UTF-8"); //hiển thị tiếng việt trong java
	String username = request.getParameter("username"); //nhận dữ liệu từ form
	String email = request.getParameter("email");
	String fullname = request.getParameter("fullname");
	String images="";
	String password = request.getParameter("password");

	
	try {
		Connection con = DBConnectMySQL.getConn();
		String sql = "INSERT INTO users VALUES(?, ?, ?, ?, ?)";
		PreparedStatement ps = con.prepareStatement(sql);//thực thi truy vấn có tham số
		//Chỉ định các cột của table users theo thứ tự
		ps.setString(1,username);
		ps.setString(2,email);
		ps.setString(3,fullname);
		ps.setString(4, images);
		ps.setString(5,password);
		//thực thi ps
		ps.executeUpdate();
		response.sendRedirect("signup.jsp?msg=done"); //request thông qua url
		
	} catch(Exception e){
		System.out.println(e);
		response.sendRedirect("signup.jsp?msg=invalid"); //request thông qua url
		
	}
%>