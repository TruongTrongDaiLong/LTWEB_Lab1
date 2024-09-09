<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vn.iotstar.configs.DBConnectMySQL"%>
<%@ page import="java.sql.*"%>

<%
	String email = request.getParameter("email");
	String username = request.getParameter("username");
	String password = request.getParameter("password");

	int kt=0;
	try {
		Connection con = DBConnectMySQL.getConn();
		Statement st = con.createStatement();
		String sql = "SELECT * from users where username='" +username+"' and password='"+password+"'";
		ResultSet rs = st.executeQuery(sql);
		while(rs.next())
		{
			kt=1;
			session.setAttribute("username1", username);
			response.sendRedirect("home.jsp");
		}
		if(kt==0){
			response.sendRedirect("login.jsp?msg=noexist");
		}
	} catch (Exception e){
		System.out.println(e);
		response.sendRedirect("login.jsp?msg=invalid");
	}

%>